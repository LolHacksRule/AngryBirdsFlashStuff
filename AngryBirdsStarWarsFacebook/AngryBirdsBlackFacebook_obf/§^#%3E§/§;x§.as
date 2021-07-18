package §^#>§
{
   import §!!U§.§#"t§;
   import §!!U§.§2"D§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §&v§.Texture;
   import §2"Y§.§"t§;
   import §2"Y§.§'§;
   import §5t§.Log;
   import §7!F§.§>"G§;
   import §<"B§.§5y§;
   import §="2§.§?!r§;
   import §?m§.§8!B§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;x§ extends EventDispatcher
   {
      
      public static const §?!i§:String = "slingshot_shot_bird";
      
      private static const §="@§:int = 1800;
      
      public static const §6!5§:Number = 0.4;
      
      public static const §1!V§:int = 0;
      
      public static const §<"F§:int = 1;
      
      public static const §,"K§:int = 2;
      
      public static const §2"R§:int = 3;
      
      public static const §?R§:int = 5;
      
      public static const §@"m§:int = 6;
      
      public static const §+#5§:int = 3151368;
      
      protected static var §&n§:Texture;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §?!i§ = "slingshot_shot_bird";
            while(true)
            {
               §="@§ = 1800;
               while(_loc2_)
               {
                  §6!5§ = 0.4;
                  while(true)
                  {
                     §1!V§ = 0;
                     loop3:
                     while(true)
                     {
                        §<"F§ = 1;
                        loop4:
                        while(true)
                        {
                           §,"K§ = 2;
                           while(true)
                           {
                              §2"R§ = 3;
                              continue loop4;
                              addr56:
                              if(!(_loc1_ && _loc1_))
                              {
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
      
      protected var §6e§:§>"G§;
      
      protected var §2#G§:§#_§;
      
      protected var §8!+§:Number;
      
      protected var §=!Z§:Number;
      
      protected var §[<§:Number;
      
      protected var §<!m§:Number = 8.5;
      
      protected var §9"C§:Number;
      
      protected var §-#;§:Number;
      
      protected var §&##§:Number;
      
      protected var §"!S§:Number;
      
      protected var §!#R§:Number = 1.0;
      
      protected var §?t§:Boolean;
      
      protected var §<m§:Boolean;
      
      protected var §6"U§:Boolean = false;
      
      public var §,!?§:Vector.<§`"]§>;
      
      public var §72§:int;
      
      protected var §&!$§:int = 0;
      
      protected var §["J§:int;
      
      protected var §1J§:Number;
      
      public var §<v§:Sprite;
      
      protected var §]#%§:Sprite;
      
      public var §=#5§:int = 0;
      
      protected var §7"1§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §["]§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §+"t§:Boolean = false;
      
      public var §@§:Number;
      
      protected var §%G§:Sprite;
      
      protected var §0!4§:Sprite;
      
      protected var §9"h§:Sprite;
      
      protected var §"#S§:DisplayObject;
      
      protected var §@s§:Sprite;
      
      protected var §<"f§:DisplayObject;
      
      protected var §4I§:Sprite;
      
      protected var §1!_§:DisplayObject;
      
      protected var §]<§:Sprite;
      
      protected var §;Y§:Sprite;
      
      protected var §-4§:DisplayObject;
      
      private var §;!6§:Number = 0;
      
      private var §&U§:Number = 0;
      
      private var §@##§:Number = -1;
      
      private var §,!p§:Number = 0;
      
      private var §"#"§:Boolean = false;
      
      private var §4J§:int = 0;
      
      public function §;x§(param1:§#_§, param2:§8!B§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:§5y§ = null;
         if(!_loc10_)
         {
            this.§,!?§ = new Vector.<§`"]§>();
            while(true)
            {
               super();
               loop1:
               for(; !(_loc10_ && param1); loop3:
               while(_loc9_ || param2)
               {
                  this.§%G§ = param3;
                  loop4:
                  while(true)
                  {
                     this.§!#R§ = param4;
                     while(true)
                     {
                        this.§?t§ = param5;
                        loop6:
                        while(_loc9_)
                        {
                           this.§<m§ = param6;
                           loop7:
                           while(true)
                           {
                              if(!_loc10_)
                              {
                                 if(!param2)
                                 {
                                    Log.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                                 }
                                 if(!_loc10_)
                                 {
                                    this.setPosition(param2.slingshotX,param2.slingshotY,param2.§0"r§);
                                 }
                                 loop8:
                                 while(!_loc10_)
                                 {
                                    while(true)
                                    {
                                       this.§4"Q§();
                                       while(true)
                                       {
                                          if(!(_loc10_ && this))
                                          {
                                             continue loop7;
                                          }
                                          continue loop8;
                                       }
                                       continue loop7;
                                    }
                                    continue loop4;
                                 }
                                 continue loop6;
                                 break;
                              }
                              continue loop3;
                           }
                           this.§8"F§(§2"R§);
                           addr261:
                           if(_loc9_ || param2)
                           {
                              addr248:
                              this.§@§ = 0;
                              if(_loc9_)
                              {
                                 if(_loc9_)
                                 {
                                    this.sortBirds();
                                    addr233:
                                    if(_loc9_ || this)
                                    {
                                       if(!(_loc10_ && param3))
                                       {
                                          this.update(0,true);
                                          this.groundSlingshot();
                                          addr229:
                                          if(!(_loc10_ && param2))
                                          {
                                             this.§[!2§(0);
                                             if(_loc9_)
                                             {
                                                if(_loc9_ || param1)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr233);
                                                   }
                                                   return;
                                                }
                                             }
                                             §§goto(addr229);
                                          }
                                          addr335:
                                          if(!_loc10_)
                                          {
                                             this.§8"F§(§2"R§);
                                             addr269:
                                             §§goto(addr248);
                                             addr293:
                                          }
                                          if(this.§,!?§.length <= 0)
                                          {
                                             addr300:
                                             §§push(Log);
                                             §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§8!+§);
                                             if(_loc9_ || this)
                                             {
                                                §§push(§§pop() + " ");
                                                if(_loc9_ || this)
                                                {
                                                   addr321:
                                                   §§push(§§pop() + this.§=!Z§);
                                                }
                                                §§pop().log(§§pop());
                                                §§goto(addr335);
                                             }
                                             §§goto(addr321);
                                          }
                                          this.§8"F§(§1!V§);
                                          addr281:
                                          if(_loc9_ || this)
                                          {
                                             §§goto(addr269);
                                          }
                                          §§goto(addr293);
                                          addr341:
                                          addr247:
                                       }
                                       §§goto(addr300);
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr281);
                              }
                              §§goto(addr261);
                           }
                           addr274:
                           §§goto(addr274);
                        }
                     }
                  }
               })
               {
                  while(true)
                  {
                     this.§2#G§ = param1;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      public function get sprite() : Sprite
      {
         return this.§%G§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§]#%§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§;!6§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§72§ < this.§,!?§.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§7"1§;
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function get angle() : Number
      {
         return this.§[<§;
      }
      
      public function get §]`§() : Boolean
      {
         return this.§<m§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            if(this.§,!?§.length <= 0)
            {
               loop1:
               while(_loc1_ || _loc1_)
               {
                  this.§,!?§ = null;
                  loop2:
                  while(true)
                  {
                     §§push(this.§%G§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(_loc1_ || _loc2_)
                           {
                              §§push(this.§%G§);
                              while(true)
                              {
                                 §§pop().dispose();
                                 loop7:
                                 while(true)
                                 {
                                    this.§%G§ = null;
                                    addr37:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       continue loop7;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    addr43:
                                 }
                              }
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           this.§<v§ = null;
                           if(_loc1_ || _loc1_)
                           {
                              return;
                           }
                           §§goto(addr37);
                           §§goto(addr43);
                        }
                        continue;
                     }
                     §§goto(addr69);
                  }
               }
            }
            else
            {
               this.§%"'§(0);
            }
         }
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§"#S§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§"#S§);
                     addr92:
                     while(true)
                     {
                        §§pop().color = param1;
                        addr94:
                        while(true)
                        {
                        }
                     }
                     addr62:
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     §§goto(addr24);
                  }
               }
               while(true)
               {
                  §§push(this.§-4§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           addr53:
                           this.§-4§.color = param1;
                        }
                        if(_loc3_ && _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr62);
                     }
                     break;
                  }
                  §§goto(addr53);
               }
               addr24:
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr94);
      }
      
      public function §4§(param1:String, param2:Number, param3:Number, param4:int) : §`"]§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§`"]§ = null;
         if(!_loc7_)
         {
            if(this.§,!?§.length > 0)
            {
               (_loc6_ = this.§,!?§[0]).setOnSlingshot(false);
               addr27:
               if(_loc8_ || param1)
               {
                  _loc6_.§6<§ = false;
               }
            }
            var _loc5_:§`"]§;
            (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).setOnSlingshot(true);
            return _loc5_;
         }
         §§goto(addr27);
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §`"]§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:§"t§ = this.§2#G§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         if(_loc11_)
         {
            _loc7_.scaleY = _loc6_.scale;
         }
         var _loc8_:§`"]§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(_loc11_ || this)
         {
            if(param5 < 0)
            {
               if(_loc11_ || param2)
               {
                  this.§,!?§.push(_loc8_);
                  if(_loc12_ && param3)
                  {
                  }
                  addr136:
                  this.§<v§.addChild(_loc8_.sprite);
                  §§goto(addr141);
               }
               §§goto(addr94);
            }
            else
            {
               this.§,!?§.splice(param5,0,_loc8_);
               if(_loc11_)
               {
                  addr94:
                  var _loc9_:*;
                  §§push((_loc9_ = this).§&!$§);
                  if(_loc11_ || param2)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc10_:* = §§pop();
                  if(!(_loc12_ && this))
                  {
                     _loc9_.§&!$§ = _loc10_;
                  }
                  if(_loc12_ && param2)
                  {
                  }
                  addr141:
                  return _loc8_;
               }
            }
         }
         §§goto(addr136);
      }
      
      protected function initializeSlingshotObject(param1:§"t§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §`"]§
      {
         return new §`"]§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function §8"F§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§1!V§);
                  addr315:
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     while(true)
                     {
                        §§push(§<"F§);
                        addr278:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           continue loop1;
                        }
                        addr279:
                        addr318:
                        if(!(_loc2_ && this))
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              this.§#o§();
                              this.§1J§ = 0;
                              addr271:
                              loop11:
                              while(true)
                              {
                                 this.mDragging = false;
                                 if(_loc2_)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          addr191:
                                          addr162:
                                          while(!(_loc2_ && this))
                                          {
                                             if(_loc3_)
                                             {
                                                if(!this.mDragging)
                                                {
                                                   this.§#o§();
                                                   continue loop12;
                                                }
                                                loop14:
                                                while(true)
                                                {
                                                   this.mDragging = false;
                                                   loop15:
                                                   while(_loc3_ || this)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         this.§#o§();
                                                      }
                                                      this.§+"t§ = false;
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            this.§#o§();
                                                            loop17:
                                                            for(; _loc3_; while(true)
                                                            {
                                                               if(_loc3_ || param1)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               continue loop17;
                                                            },continue loop11)
                                                            {
                                                               if(!(_loc3_ || _loc2_))
                                                               {
                                                                  break loop16;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  this.§,!?§[this.§72§].setPosition(this.§,!!§ - this.§,!?§[this.§72§].radius * Math.cos(this.§7"1§ / (180 / Math.PI)),this.§;#A§ + this.§,!?§[this.§72§].radius * Math.sin(this.§7"1§ / (180 / Math.PI)),180 - this.§7"1§);
                                                                  continue;
                                                               }
                                                               addr249:
                                                               addr249:
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  this.§1J§ = 10000;
                                                                  addr259:
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     this.§+"t§ = false;
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr271);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop11;
                                                                     §§goto(addr249);
                                                                  }
                                                                  addr300:
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      this.§#o§();
                                                      continue loop0;
                                                   }
                                                   §§goto(addr295);
                                                }
                                                addr212:
                                             }
                                             §§goto(addr271);
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop11;
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr102);
                                    }
                                    continue;
                                 }
                                 if(_loc3_ || this)
                                 {
                                    break;
                                 }
                                 §§goto(addr259);
                              }
                              addr271:
                              addr295:
                              return;
                              addr29:
                           }
                           break loop2;
                        }
                        while(true)
                        {
                           this.§1J§ = 1000;
                           §§goto(addr300);
                        }
                     }
                  }
                  this.§#o§();
               }
            }
         }
         §§goto(addr318);
      }
      
      public function get §-"Z§() : §#_§
      {
         return this.§2#G§;
      }
      
      public function §0#Y§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.mSlingShotState == §2"R§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     addr60:
                     return this.§1J§ <= 0;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      protected function §>"5§() : §>"G§
      {
         return this.§2#G§.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function §4"Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§6e§ = this.§>"5§();
            loop0:
            while(true)
            {
               this.§"#S§ = this.§6e§.getFrame(0);
               loop1:
               while(true)
               {
                  §§push(this.§"#S§);
                  while(true)
                  {
                     §§push(-3);
                     addr233:
                     addr241:
                     while(true)
                     {
                        §§pop().pivotX = §§pop();
                        continue loop0;
                     }
                     §§push(this.§"#S§);
                     if(_loc1_)
                     {
                        continue;
                     }
                     §§push(-24);
                     if(_loc2_)
                     {
                        §§pop().pivotY = §§pop();
                        while(true)
                        {
                           this.§-4§ = this.§6e§.getFrame(1);
                           while(true)
                           {
                              §§push(this.§-4§);
                              loop7:
                              while(true)
                              {
                                 §§push(-30);
                                 addr209:
                                 while(true)
                                 {
                                    §§pop().pivotX = §§pop();
                                    continue loop7;
                                 }
                              }
                           }
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           this.§<v§ = new Sprite();
                           while(_loc2_ || _loc2_)
                           {
                              this.§9"h§ = new Sprite();
                              loop19:
                              while(!_loc1_)
                              {
                                 §§push(this.§9"h§);
                                 loop20:
                                 while(true)
                                 {
                                    §§pop().addChild(this.§]<§);
                                    while(_loc2_ || _loc1_)
                                    {
                                       §§push(this.§9"h§);
                                       while(_loc2_)
                                       {
                                          §§pop().addChild(this.§4I§);
                                          loop23:
                                          while(true)
                                          {
                                             §§push(this.§9"h§);
                                             if(_loc1_ && this)
                                             {
                                                break;
                                             }
                                             §§pop().addChild(this.§-4§);
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop23;
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue loop19;
                                                }
                                                if(!_loc1_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr210);
                                          }
                                       }
                                       continue loop20;
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr166);
                        }
                        addr228:
                     }
                     else
                     {
                        §§goto(addr233);
                     }
                  }
               }
            }
         }
         §§goto(addr228);
      }
      
      protected function §%!Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§%G§);
            loop0:
            while(true)
            {
               §§pop().addChild(this.§0!4§);
               addr97:
               while(true)
               {
                  §§push(this.§%G§);
                  continue loop0;
               }
            }
         }
         §§goto(addr65);
      }
      
      public function § e§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(!(_loc3_ && _loc1_))
         {
            this.§9"C§ = this.§8!+§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§-#;§ = this.§=!Z§;
                  do
                  {
                     this.§"!S§ = §0"x§.§,b§;
                  }
                  while(_loc3_ && this);
                  
                  if(_loc2_ || this)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     _loc1_ = null;
                     return;
                     addr61:
                  }
                  break;
               }
            }
         }
         §§goto(addr61);
      }
      
      protected function getRopeImage(param1:uint) : DisplayObject
      {
         return new §2"D§(2,2,param1);
      }
      
      protected function getHolsterImage(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_)
         {
            §§push(!§&n§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§pop();
                     §§goto(addr58);
                  }
                  §§goto(addr56);
               }
               if(§§pop())
               {
                  addr58:
                  if(_loc5_ || _loc3_)
                  {
                     §§push(param2);
                     if(!(_loc4_ && param2))
                     {
                        addr56:
                        §§push(Boolean(§§pop()));
                     }
                  }
                  _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
                  if(!_loc4_)
                  {
                     if(§&n§)
                     {
                        if(!(_loc4_ && this))
                        {
                           §§goto(addr79);
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr79);
               }
               addr79:
               this.§2#G§.textureManager.unregisterBitmapDataTexture(§&n§);
               if(!(_loc4_ && _loc3_))
               {
                  §&n§ = this.§2#G§.textureManager.getTextureFromBitmapData(_loc3_);
                  addr91:
               }
               return new §#"t§(§&n§);
            }
            §§goto(addr56);
         }
         §§goto(addr58);
      }
      
      protected function §@P§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§]<§ = new Sprite();
            if(_loc6_)
            {
               this.§;Y§ = new Sprite();
            }
         }
         var _loc4_:DisplayObject;
         (_loc4_ = this.getHolsterImage(param2,param3)).rotation = Math.PI;
         if(_loc6_ || param3)
         {
            §§push(_loc4_);
            §§push(_loc4_.width);
            if(_loc6_)
            {
               §§push(§§pop() / 2);
            }
            §§pop().x = §§pop();
            while(true)
            {
               §§push(_loc4_);
               §§push(_loc4_.height);
               if(!_loc5_)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().y = §§pop();
               loop1:
               while(true)
               {
                  this.§;Y§.addChild(_loc4_);
                  loop2:
                  while(true)
                  {
                     this.§]<§.addChild(this.§;Y§);
                     loop3:
                     while(true)
                     {
                        this.§@s§ = new Sprite();
                        loop4:
                        while(true)
                        {
                           §§push(this.§@s§);
                           while(true)
                           {
                              §§push(22);
                              loop6:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§@s§);
                                    addr216:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       §§pop().y = §§pop();
                                       while(true)
                                       {
                                          this.§<"f§ = this.getRopeImage(param1);
                                          continue loop8;
                                          addr103:
                                          if(!(_loc6_ || param2))
                                          {
                                             continue;
                                          }
                                          §§push(this.§4I§);
                                          if(!(_loc5_ && param3))
                                          {
                                             addr66:
                                             if(!(_loc5_ && param2))
                                             {
                                                addr73:
                                                §§pop().addChild(this.§1!_§);
                                                if(_loc5_ && param3)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr103);
                                                      }
                                                      else
                                                      {
                                                         while(!(_loc5_ && param1))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(this.§4I§);
                                                            while(true)
                                                            {
                                                               §§push(-17);
                                                               addr166:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr66);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§4I§ = new Sprite();
                                                            §§goto(addr180);
                                                         }
                                                         addr180:
                                                         addr205:
                                                      }
                                                      §§goto(addr165);
                                                      §§goto(addr73);
                                                   }
                                                   continue;
                                                   addr99:
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop2;
                                                }
                                                addr123:
                                                while(true)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      if(!(_loc6_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop7;
                                                addr123:
                                             }
                                             §§goto(addr165);
                                          }
                                          while(true)
                                          {
                                             §§push(5);
                                             if(_loc5_ && this)
                                             {
                                                break;
                                             }
                                             §§pop().y = §§pop();
                                             §§goto(addr123);
                                             §§goto(addr110);
                                          }
                                          addr110:
                                          §§goto(addr166);
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                              addr195:
                              if(_loc5_ && param3)
                              {
                                 continue;
                              }
                              §§pop().addChild(this.§<"f§);
                              §§goto(addr205);
                           }
                        }
                     }
                  }
               }
               if(!(_loc6_ || param3))
               {
                  continue;
               }
               this.§1!_§ = this.getRopeImage(param1);
               §§goto(addr99);
            }
         }
         while(true)
         {
            §§push(this.§@s§);
            if(_loc6_)
            {
               §§goto(addr195);
            }
            §§goto(addr216);
            §§goto(addr123);
         }
      }
      
      protected function §[!2§(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         §§push(this.§;#A§);
         if(_loc12_)
         {
            §§push(this.§=!Z§);
            if(_loc12_)
            {
               addr34:
               §§push(§§pop() - §§pop());
               if(_loc12_)
               {
                  §§push(§#_§.§8]§);
               }
               var _loc2_:* = §§pop();
               §§push(this.§,!!§);
               if(_loc12_)
               {
                  §§push(this.§8!+§);
                  if(_loc12_ || _loc3_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc12_)
                     {
                        addr53:
                        §§push(§§pop() / §#_§.§8]§);
                        if(_loc11_ && this)
                        {
                        }
                        addr62:
                        var _loc3_:* = §§pop();
                        var _loc4_:Number = Math.cos(this.§[<§);
                        var _loc5_:Number = Math.sin(this.§[<§);
                        §§push(-Math.sin(this.§[<§));
                        if(!_loc11_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        var _loc7_:Number = Math.cos(this.§[<§);
                        §§push(_loc3_);
                        if(!(_loc11_ && param1))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:* = §§pop();
                        §§push(_loc2_);
                        if(_loc12_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc9_:* = §§pop();
                        if(_loc12_ || _loc2_)
                        {
                           §§push(_loc8_);
                           if(!(_loc11_ && this))
                           {
                              §§push(_loc4_);
                              if(!(_loc11_ && param1))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc11_)
                                 {
                                    §§push(_loc9_);
                                    if(_loc12_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc12_ || _loc2_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc11_)
                                                {
                                                   addr161:
                                                   _loc3_ = §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc12_)
                                                         {
                                                            addr170:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc12_ || _loc2_)
                                                            {
                                                               §§push(_loc9_);
                                                               if(_loc12_)
                                                               {
                                                                  addr182:
                                                                  addr181:
                                                                  §§push(§§pop() * _loc7_);
                                                                  if(_loc11_ && param1)
                                                                  {
                                                                  }
                                                                  addr231:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr235:
                                                                     var _loc10_:Number = §§pop();
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(this.§]<§);
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           addr716:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr717:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§]<§);
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr341);
                                                                  }
                                                                  §§goto(addr235);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc11_ && _loc3_))
                                                               {
                                                                  addr198:
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc12_)
                                                                  {
                                                                  }
                                                                  addr205:
                                                                  §§push(8);
                                                                  §§push(this.§"!S§);
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     §§push(this.§["Q§);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc12_ || _loc2_)
                                                                        {
                                                                           addr229:
                                                                           §§push(§§pop() / this.§"!S§);
                                                                        }
                                                                        §§goto(addr231);
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                  }
                                                                  §§goto(addr229);
                                                               }
                                                               _loc2_ = §§pop();
                                                               addr202:
                                                               §§push(3.5);
                                                               if(!_loc11_)
                                                               {
                                                                  §§goto(addr205);
                                                               }
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr205);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr62);
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr53);
            }
            §§push(§§pop() / §§pop());
            if(_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr34);
      }
      
      public function useMightyEagle() : §`"]§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`"]§ = null;
         do
         {
            if(this.§,!?§.length > 0)
            {
               continue;
            }
            if(!(_loc4_ && _loc1_))
            {
               this.§["p§();
               if(!_loc4_)
               {
                  addr48:
                  if(this.§,!?§.length > 0)
                  {
                     break;
                  }
                  var _loc1_:§`"]§ = this.addSlingshotObject("BIRD_SARDINE",this.§8!+§,this.§=!Z§,0);
                  if(_loc3_)
                  {
                     _loc1_.setOnSlingshot(true);
                  }
                  while(true)
                  {
                     _loc1_.§6<§ = false;
                     while(!_loc4_)
                     {
                        this.§8"F§(§,"K§);
                        if(_loc3_ || _loc1_)
                        {
                           return _loc1_;
                        }
                     }
                  }
               }
               break;
            }
            §§goto(addr48);
         }
         while(this.§%"'§(0,true), !(_loc4_ && _loc2_));
         
         _loc2_ = this.§,!?§[0];
         if(_loc3_ || _loc2_)
         {
            _loc2_.setOnSlingshot(false);
         }
         §§goto(addr48);
      }
      
      protected function §["p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?!r§.§"#_§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8"F§(§?R§);
         }
      }
      
      public function §#o§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this);
            §§push(this.§9"C§);
            §§push(this.§-#;§);
            if(!_loc2_)
            {
               §§push(this.§"!S§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() / 8);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().setNewCoordinatesForRubber(§§pop(),§§pop());
         }
      }
      
      protected function get §>"o§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&##§);
         if(!_loc1_)
         {
            return §§pop() * this.§!#R§;
         }
      }
      
      protected function get §["Q§() : Number
      {
         return Math.min(this.§&##§,this.§"!S§);
      }
      
      protected function get §,!!§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§&##§);
            if(_loc2_)
            {
               §§push(this.§"!S§);
               if(_loc2_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(this.§9"C§);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(this.§"!S§);
                           if(!_loc1_)
                           {
                              §§push(§§pop() * Math.cos(this.§7"1§ / 180 * Math.PI));
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr80:
                                 §§push(§§pop() + §§pop());
                                 if(_loc2_ || _loc2_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr128);
                           }
                           addr127:
                           addr128:
                           return §§pop();
                           §§push(§§pop() + §§pop());
                        }
                     }
                     else
                     {
                        addr89:
                        §§push(this.§9"C§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this.§&##§);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(§§pop() * Math.cos(this.§7"1§ / 180 * Math.PI));
                           }
                           §§goto(addr127);
                        }
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr89);
               }
               §§goto(addr80);
            }
            §§goto(addr128);
         }
         §§goto(addr89);
      }
      
      protected function get §;#A§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§&##§);
            if(!_loc1_)
            {
               §§push(this.§"!S§);
               if(!_loc1_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(this.§-#;§);
                        if(_loc2_ || _loc1_)
                        {
                           §§push(this.§"!S§);
                           if(!(_loc1_ && this))
                           {
                              addr58:
                              §§push(§§pop() * Math.sin(this.§7"1§ / 180 * Math.PI));
                              if(_loc2_)
                              {
                              }
                              §§goto(addr108);
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc2_)
                           {
                              return §§pop();
                           }
                        }
                     }
                     else
                     {
                        addr74:
                        §§push(this.§-#;§);
                        if(_loc2_)
                        {
                           addr78:
                           §§push(this.§&##§);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(§§pop() * Math.sin(this.§7"1§ / 180 * Math.PI));
                           }
                           §§goto(addr108);
                        }
                     }
                     addr108:
                     return §§pop() - §§pop();
                  }
                  §§goto(addr74);
               }
               §§goto(addr58);
            }
            §§goto(addr78);
         }
         §§goto(addr74);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            §§push(this.§@##§);
            if(!(_loc8_ && param3))
            {
               if(§§pop() > 0)
               {
                  if(_loc9_)
                  {
                     §§goto(addr37);
                  }
               }
               §§push(param1);
               if(!_loc8_)
               {
                  §§push(§§pop() - this.§9"C§);
                  if(_loc8_ && this)
                  {
                  }
                  addr53:
                  var _loc4_:* = §§pop();
                  §§push(param2);
                  if(_loc9_ || param1)
                  {
                     §§push(§§pop() - this.§-#;§);
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  var _loc6_:*;
                  §§push(_loc6_ = Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                  if(_loc9_ || param1)
                  {
                     §§push(this.§!#R§);
                     if(_loc9_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc9_ || param2)
                        {
                           §§push(this.§"!S§);
                           if(_loc9_ || this)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(param3);
                                    if(!(_loc8_ && param3))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(false);
                                          }
                                          else
                                          {
                                             addr132:
                                             §§push(this.§"!S§);
                                             if(_loc9_)
                                             {
                                                §§push(this.§!#R§);
                                                if(!_loc8_)
                                                {
                                                   addr140:
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc9_ || this)
                                                   {
                                                      addr158:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         addr166:
                                                         _loc6_ = §§pop();
                                                         §§push(Number(Math.atan2(-(param2 - this.§-#;§),param1 - this.§9"C§)));
                                                      }
                                                   }
                                                   §§goto(addr166);
                                                }
                                                addr180:
                                                var _loc7_:* = §§pop();
                                                if(_loc9_)
                                                {
                                                   §§push(180 / Math.PI);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(_loc9_ || param3)
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
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§@##§);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    addr283:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                       addr284:
                                                                                       while(_loc8_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr282:
                                                                              }
                                                                              addr311:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(-160));
                                                                                    addr268:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       addr269:
                                                                                       addr276:
                                                                                       while(!(_loc9_ || this))
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr231);
                                                                                       }
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
                                                                           §§goto(addr292);
                                                                        }
                                                                        addr231:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§?t§);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(!(_loc9_ || param3))
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(this.§[!h§(_loc6_));
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    if(!(_loc9_ || param2))
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    _loc6_ = §§pop();
                                                                                 }
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr214:
                                                                                       §§push(this.§0V§(_loc7_,_loc6_));
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0.8);
                                                                                       if(_loc9_ || this)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    addr292:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr269);
                                                                                 }
                                                                              }
                                                                              §§goto(addr214);
                                                                           }
                                                                           if(_loc9_ || param3)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr276);
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr282);
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr311);
                                             }
                                             §§goto(addr180);
                                             §§push(§§pop());
                                          }
                                       }
                                       §§goto(addr132);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr166);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr53);
         }
         addr37:
         return false;
      }
      
      protected function §[!h§(param1:Number) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc2_:Number = 12;
         var _loc3_:Number = 5;
         var _loc4_:Number = 4;
         §§push(this.§"!S§);
         if(_loc7_ || this)
         {
            §§push(§§pop() / 2);
            if(!_loc8_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc8_)
            {
               §§push(param1);
               loop0:
               while(true)
               {
                  §§push(_loc5_);
                  loop1:
                  while(true)
                  {
                     if(§§pop() > §§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§7"1§);
                           loop3:
                           while(true)
                           {
                              §§push(-90);
                              loop4:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(_loc3_);
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                       }
                                       addr405:
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(_loc7_)
                                       {
                                          §§push(§§pop());
                                          loop8:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr411:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr412:
                                                   while(true)
                                                   {
                                                      §§push(this.§7"1§);
                                                      addr368:
                                                      while(true)
                                                      {
                                                         §§push(-90);
                                                         addr369:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr370:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr371:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  addr372:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr373:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() < §§pop());
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr411:
                                             }
                                             while(true)
                                             {
                                                loop10:
                                                while(!§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(this.§7"1§);
                                                      loop12:
                                                      while(_loc7_)
                                                      {
                                                         §§push(-90);
                                                         loop13:
                                                         for(; !_loc8_; §§push(-90),if(_loc8_ && _loc2_)
                                                         {
                                                            continue;
                                                         },if(!(_loc8_ && _loc3_))
                                                         {
                                                            §§goto(addr86);
                                                         },§§goto(addr369))
                                                         {
                                                            §§push(_loc2_);
                                                            while(true)
                                                            {
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     addr333:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        addr334:
                                                                        loop17:
                                                                        while(_loc7_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop19:
                                                                              while(_loc7_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§push(§§pop() > §§pop());
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   break;
                                                                                                   addr357:
                                                                                                }
                                                                                                §§pop();
                                                                                                while(!(_loc8_ && this))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§7"1§);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      addr273:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc7_ || param1))
                                                                                                         {
                                                                                                            §§goto(addr377);
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc7_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr291:
                                                                                                               §§push(§§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc8_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  _loc6_ = §§pop();
                                                                                                               }
                                                                                                               addr291:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr368);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§pop() < §§pop());
                                                                                                addr145:
                                                                                                continue loop2;
                                                                                                if(!(_loc7_ || _loc2_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               break loop20;
                                                                                                            }
                                                                                                            §§push(_loc5_);
                                                                                                            if(!(_loc8_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(this.§"!S§);
                                                                                                               if(!(_loc8_ && _loc2_))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(_loc7_ || this)
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!(_loc8_ && this))
                                                                                                                           {
                                                                                                                              §§push(Math.abs(this.§7"1§ - -90 - _loc3_) - _loc2_);
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 addr225:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    if(_loc7_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc7_ || param1)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc8_ && this)
                                                                                                                                             {
                                                                                                                                                continue loop19;
                                                                                                                                             }
                                                                                                                                             if(!(_loc8_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   if(_loc7_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr265:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc7_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr273);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr299);
                                                                                                                                                      }
                                                                                                                                                      addr265:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr291);
                                                                                                                                                }
                                                                                                                                                addr257:
                                                                                                                                             }
                                                                                                                                             §§goto(addr371);
                                                                                                                                          }
                                                                                                                                          addr242:
                                                                                                                                       }
                                                                                                                                       §§goto(addr265);
                                                                                                                                    }
                                                                                                                                    §§goto(addr372);
                                                                                                                                 }
                                                                                                                                 addr225:
                                                                                                                              }
                                                                                                                              §§goto(addr257);
                                                                                                                           }
                                                                                                                           §§goto(addr291);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr405);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr225);
                                                                                                                  }
                                                                                                                  addr185:
                                                                                                               }
                                                                                                               §§goto(addr291);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr357);
                                                                                                         }
                                                                                                         §§goto(addr273);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         if(!(_loc7_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         if(_loc8_ && _loc2_)
                                                                                                         {
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         addr45:
                                                                                                         §§push(param1);
                                                                                                         if(_loc7_ || param1)
                                                                                                         {
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr299);
                                                                                                   }
                                                                                                   §§goto(addr45);
                                                                                                }
                                                                                                addr377:
                                                                                                return §§pop();
                                                                                                addr155:
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                          §§goto(addr155);
                                                                                       }
                                                                                       continue loop8;
                                                                                       addr299:
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr411);
                                                                                 }
                                                                                 §§goto(addr412);
                                                                              }
                                                                              §§goto(addr373);
                                                                           }
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                                  addr332:
                                                               }
                                                               §§push(_loc2_);
                                                               addr86:
                                                               break;
                                                               if(!(_loc7_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc7_ || this))
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc7_ || this)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 addr137:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr145);
                                                                                 }
                                                                                 §§goto(addr265);
                                                                              }
                                                                              §§goto(addr225);
                                                                           }
                                                                           §§goto(addr242);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr333);
                                                                        }
                                                                     }
                                                                     §§goto(addr137);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr332);
                                                                  }
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr370);
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                §§goto(addr377);
                                             }
                                          }
                                       }
                                       §§goto(addr411);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr45);
                  }
               }
            }
            §§goto(addr364);
         }
         §§goto(addr40);
      }
      
      protected function §0V§(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§7"1§ = param1;
            while(true)
            {
               this.§&##§ = param2;
               loop1:
               while(true)
               {
                  §§push(this.§&##§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§"!S§);
                     addr176:
                     while(true)
                     {
                        §§push(0.45);
                        addr177:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr178:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 §§push(this.§6"U§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§pop();
                                             addr163:
                                             while(!(_loc4_ && this))
                                             {
                                                continue loop2;
                                             }
                                             loop12:
                                             while(true)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   this.§["]§ = true;
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               §§push(true);
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               addr124:
                                                               while(_loc4_ && _loc3_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  addr144:
                                                                  addr144:
                                                                  while(true)
                                                                  {
                                                                     this.§6"U§ = false;
                                                                  }
                                                                  §§goto(addr117);
                                                               }
                                                               addr117:
                                                               continue loop1;
                                                            }
                                                            addr179:
                                                            while(true)
                                                            {
                                                               this.§6"U§ = true;
                                                               continue loop12;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr163);
                                                         }
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                return §§pop();
                                             }
                                          }
                                          addr162:
                                       }
                                       §§goto(addr124);
                                    }
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr179);
                           }
                        }
                     }
                  }
               }
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               this.playStretchSound();
               §§goto(addr144);
            }
         }
         §§goto(addr144);
      }
      
      protected function playStretchSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?!r§.§"#_§("SlingshotStreched");
         }
      }
      
      protected function applyGravity(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§8!+§);
            if(_loc3_)
            {
               §§push(param1);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() * Math.cos(this.§[<§ + Math.PI / 2));
                  if(!_loc2_)
                  {
                     addr55:
                     §§push(§§pop() + §§pop());
                     §§push(this.§=!Z§);
                     if(!(_loc2_ && this))
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§push(§§pop() * Math.sin(this.§[<§ + Math.PI / 2));
                           if(_loc3_)
                           {
                              addr89:
                              §§push(§§pop() + §§pop());
                              §§push(this.§[<§);
                           }
                           §§pop().setPosition(§§pop(),§§pop(),§§pop());
                           §§goto(addr93);
                        }
                        §§goto(addr89);
                     }
                  }
               }
               §§goto(addr89);
            }
            §§goto(addr55);
         }
         addr93:
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(§§pop() - this.§8!+§);
            if(_loc8_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc7_)
         {
            this.§8!+§ = param1;
         }
         §§push(param2);
         if(_loc8_)
         {
            §§push(§§pop() - this.§=!Z§);
            if(!(_loc7_ && param3))
            {
               addr50:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc8_ || param1)
            {
               this.§=!Z§ = param2;
               while(true)
               {
                  this.§[<§ = param3;
                  loop1:
                  while(!(_loc7_ && this))
                  {
                     §§push(this);
                     §§push(this.§-#;§);
                     if(_loc8_)
                     {
                        §§push(§§pop() + _loc6_);
                     }
                     §§pop().§-#;§ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§9"C§);
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§9"C§ = §§pop();
                        loop3:
                        while(param4)
                        {
                           if(!(_loc7_ && param3))
                           {
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                              this.§[!2§(0);
                              §§goto(addr105);
                              continue;
                           }
                           addr105:
                           while(true)
                           {
                              break loop3;
                           }
                           if(_loc8_)
                           {
                              if(!_loc7_)
                              {
                                 break loop2;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           this.§["]§ = true;
                           if(_loc7_)
                           {
                              continue;
                           }
                           §§goto(addr105);
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr130);
         }
         §§goto(addr50);
      }
      
      protected function §,!8§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§>"o§);
         if(_loc1_)
         {
            return §§pop() / this.§"!S§;
         }
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§`"]§ = this.§,!?§[this.§72§];
         §§push(this.§,!8§());
         if(_loc4_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            if(_loc2_)
            {
               if(!_loc5_)
               {
                  addr58:
                  §§push(_loc2_.§^"+§);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ || _loc3_)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr71);
                     }
                  }
                  §§goto(addr89);
               }
            }
            addr71:
            §§push(_loc1_);
            if(!(_loc5_ && _loc1_))
            {
               addr89:
               return §§pop() * _loc3_;
            }
         }
         §§goto(addr58);
      }
      
      public function getPosition() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§`"]§ = null;
         if(!(_loc3_ && _loc1_))
         {
            if(this.§,!?§.length > this.§72§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr49:
                  _loc1_ = this.§,!?§[this.§72§];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr49);
      }
      
      public function §[@§() : Point
      {
         return new Point(this.§9"C§,this.§-#;§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§`"]§ = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            this.§1#@§(param1);
            loop0:
            while(true)
            {
               if(this.§["]§)
               {
                  continue;
               }
               addr80:
               loop2:
               while(true)
               {
                  §§push(this);
                  §§push(this.§1J§);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§1J§ = §§pop();
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(this.§1J§ < 0)
                        {
                           while(true)
                           {
                              this.§1J§ = 0;
                              addr77:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop2;
                           }
                           addr74:
                        }
                        while(true)
                        {
                           if(this.mSlingShotState != §2"R§)
                           {
                              this.§6#P§(param1,param2);
                              break;
                           }
                           if(_loc6_ && param2)
                           {
                              break;
                           }
                           if(_loc7_)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 continue loop3;
                              }
                              §§goto(addr74);
                           }
                           §§goto(addr77);
                        }
                        if(_loc7_ || param2)
                        {
                           if(true)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     _loc3_ = null;
                     if(!_loc6_)
                     {
                        if(this.§,!?§.length > 0)
                        {
                           if(_loc7_ || param1)
                           {
                              _loc3_ = this.§,!?§[this.§72§];
                              addr138:
                              if(_loc3_)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    _loc3_.§,!`§(param1);
                                    if(!_loc6_)
                                    {
                                       addr495:
                                       if(_loc3_)
                                       {
                                          addr474:
                                          if(this.mSlingShotState != §1!V§)
                                          {
                                             addr447:
                                             if(this.mSlingShotState != §<"F§)
                                             {
                                                §§push(this.mSlingShotState);
                                                if(_loc7_ || this)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§push(§,"K§);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         if(_loc6_ && param1)
                                                         {
                                                            §§goto(addr474);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  addr436:
                                                                  §§push(this.§,!!§);
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     addr425:
                                                                     §§push(§§pop() - _loc3_.radius * Math.cos(this.§7"1§ / (180 / Math.PI)));
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc6_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     addr440:
                                                                     §§push(this.§;#A§);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        §§push(_loc3_.radius);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() * Math.sin(this.§7"1§ / (180 / Math.PI)));
                                                                        }
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    addr357:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr365:
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr298:
                                                                                             §§push(Boolean(this.mDragging));
                                                                                             if(!Boolean(this.mDragging))
                                                                                             {
                                                                                                addr301:
                                                                                                §§pop();
                                                                                                addr302:
                                                                                                §§push(this.§@##§);
                                                                                                if(_loc7_ || _loc3_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      addr259:
                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(_loc7_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc7_ || _loc3_)
                                                                                                            {
                                                                                                               addr275:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr277:
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     _loc3_.setPosition(_loc4_,_loc5_,180 - this.§7"1§);
                                                                                                                     addr287:
                                                                                                                     if(_loc7_ || param1)
                                                                                                                     {
                                                                                                                        addr211:
                                                                                                                        §§push(this.§+"t§);
                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc7_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr192:
                                                                                                                                          this.shootCurrentBird(this.§,!8§(),this.§7"1§);
                                                                                                                                          addr198:
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc7_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr211);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr501);
                                                                                                                                                }
                                                                                                                                                §§goto(addr365);
                                                                                                                                             }
                                                                                                                                             §§goto(addr277);
                                                                                                                                          }
                                                                                                                                          §§goto(addr287);
                                                                                                                                       }
                                                                                                                                       addr460:
                                                                                                                                       if(_loc6_ && param1)
                                                                                                                                       {
                                                                                                                                          _loc3_.§,!R§();
                                                                                                                                          addr494:
                                                                                                                                          §§goto(addr460);
                                                                                                                                          addr494:
                                                                                                                                       }
                                                                                                                                       addr441:
                                                                                                                                       §§goto(addr501);
                                                                                                                                    }
                                                                                                                                    addr220:
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       if(_loc7_ || param1)
                                                                                                                                       {
                                                                                                                                          §§goto(addr211);
                                                                                                                                       }
                                                                                                                                       addr451:
                                                                                                                                       this.§8"F§(§,"K§);
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          addr370:
                                                                                                                                          addr501:
                                                                                                                                          return;
                                                                                                                                          addr456:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr497:
                                                                                                                                          this.§8"F§(§2"R§);
                                                                                                                                          §§goto(addr501);
                                                                                                                                          addr500:
                                                                                                                                       }
                                                                                                                                       §§goto(addr501);
                                                                                                                                    }
                                                                                                                                    §§goto(addr440);
                                                                                                                                 }
                                                                                                                                 §§goto(addr198);
                                                                                                                              }
                                                                                                                              §§goto(addr501);
                                                                                                                           }
                                                                                                                           addr450:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr451);
                                                                                                                           }
                                                                                                                           §§goto(addr370);
                                                                                                                        }
                                                                                                                        §§goto(addr259);
                                                                                                                     }
                                                                                                                     §§goto(addr302);
                                                                                                                  }
                                                                                                                  §§goto(addr500);
                                                                                                               }
                                                                                                               _loc3_.setPosition(_loc4_,_loc5_,this.angle);
                                                                                                               §§goto(addr220);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr298);
                                                                                                      }
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                   addr480:
                                                                                                   if(§§pop() <= §§pop())
                                                                                                   {
                                                                                                      this.§8"F§(§<"F§);
                                                                                                      addr481:
                                                                                                      §§goto(addr494);
                                                                                                   }
                                                                                                   §§goto(addr441);
                                                                                                }
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                             §§goto(addr275);
                                                                                          }
                                                                                          §§goto(addr481);
                                                                                       }
                                                                                       §§goto(addr451);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr436);
                                                                              }
                                                                              §§goto(addr357);
                                                                           }
                                                                        }
                                                                        §§goto(addr425);
                                                                     }
                                                                     §§goto(addr357);
                                                                  }
                                                                  addr479:
                                                                  §§goto(addr480);
                                                                  §§push(0);
                                                               }
                                                               else
                                                               {
                                                                  addr448:
                                                                  §§push(_loc3_.§8#M§);
                                                               }
                                                               §§goto(addr450);
                                                            }
                                                            §§goto(addr440);
                                                         }
                                                         §§goto(addr501);
                                                      }
                                                      §§goto(addr447);
                                                   }
                                                   §§goto(addr474);
                                                }
                                                §§goto(addr447);
                                             }
                                             §§goto(addr448);
                                          }
                                          if(!_loc6_)
                                          {
                                             §§goto(addr479);
                                             §§push(this.§1J§);
                                          }
                                          §§goto(addr494);
                                       }
                                       §§goto(addr497);
                                    }
                                    §§goto(addr448);
                                 }
                                 §§goto(addr456);
                              }
                              §§goto(addr495);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr451);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr80);
         }
      }
      
      public function §;"A§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§`"]§ = null;
         if(!(_loc6_ && param3))
         {
            if(this.§,!?§.length > 0)
            {
               if(_loc7_)
               {
                  _loc5_ = this.§,!?§[this.§72§];
                  §§goto(addr51);
               }
               §§goto(addr94);
            }
            addr51:
            if(!_loc5_)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
            else
            {
               addr86:
               _loc5_.setPosition(param1,param2,180 - this.§7"1§);
               do
               {
                  this.shootCurrentBird(param3,param4);
               }
               while(_loc6_ && param3);
               
               addr94:
            }
            return;
         }
         §§goto(addr86);
      }
      
      protected function shootBird() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"#"§ = false;
         }
         var _loc1_:§`"]§ = null;
         if(_loc3_ || _loc1_)
         {
            if(this.§,!?§.length > this.§72§)
            {
               if(!(_loc2_ && this))
               {
                  _loc1_ = this.§,!?§[this.§72§];
                  addr52:
                  if(!_loc1_)
                  {
                     if(!_loc2_)
                     {
                        return;
                     }
                     loop6:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           dispatchEvent(new Event(§?!i§));
                           if(_loc3_ || _loc1_)
                           {
                              addr87:
                              if(!_loc2_)
                              {
                                 break;
                              }
                              addr167:
                              while(true)
                              {
                                 this.§2#G§.shootBird(_loc1_,this.§&U§,this.§7"1§);
                                 loop1:
                                 while(true)
                                 {
                                    this.§%"'§(this.§72§,_loc1_.§&"D§ > 0);
                                    while(true)
                                    {
                                       this.playBirdShotSound();
                                       while(_loc3_)
                                       {
                                          if(this.§72§ >= this.§,!?§.length)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                this.§8"F§(§2"R§);
                                             }
                                          }
                                          else
                                          {
                                             this.§8"F§(§1!V§);
                                             addr96:
                                             while(true)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop7;
                                             }
                                             §§goto(addr87);
                                             addr96:
                                          }
                                          while(_loc3_)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr96);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr96);
                        }
                        return;
                     }
                  }
                  else
                  {
                     addr162:
                     this.§;!6§ = new Date().time;
                  }
                  §§goto(addr167);
               }
               §§goto(addr162);
            }
            §§goto(addr52);
         }
         §§goto(addr125);
      }
      
      protected function §1#@§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(this.§@##§);
            if(_loc4_ || param1)
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
                        this.§["]§ = true;
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§@##§);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§@##§ = §§pop();
                              while(true)
                              {
                                 §§push(this.§@##§);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(0);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             if(_loc5_)
                                             {
                                                continue;
                                             }
                                             if(_loc5_ && this)
                                             {
                                                continue loop2;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop1;
                                             }
                                             this.§@##§ = 0;
                                          }
                                          if(_loc5_)
                                          {
                                             break loop3;
                                          }
                                          while(true)
                                          {
                                             if(false)
                                             {
                                                continue loop3;
                                             }
                                          }
                                       }
                                       §§push(this.§@##§);
                                       if(_loc4_ || param1)
                                       {
                                          break;
                                       }
                                       addr117:
                                       var _loc2_:Number = §§pop();
                                       addr116:
                                       §§push(this.§,!p§);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(§§pop() * Math.cos(_loc2_ * Math.PI * 8));
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(_loc2_);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc5_)
                                                   {
                                                      addr167:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc4_ || param1)
                                                      {
                                                         addr175:
                                                         §§push(_loc2_);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc4_)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc4_ || param1)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     addr197:
                                                                     §§push(_loc2_);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        addr205:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr209:
                                                                           §§push(§§pop() * _loc2_);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr212:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr212);
                                                                     }
                                                                     §§goto(addr209);
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                            var _loc3_:* = §§pop();
                                                            if(_loc4_ || param1)
                                                            {
                                                               this.§0V§(this.§7"1§,_loc3_);
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  if(this.§@##§ == 0)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§@##§ = -1;
                                                                        addr275:
                                                                        while(true)
                                                                        {
                                                                           this.§#o§();
                                                                           addr256:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     addr262:
                                                                  }
                                                                  for(; this.§"#"§; §§goto(addr256))
                                                                  {
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     addr246:
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           addr252:
                                                                           break;
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                     §§goto(addr275);
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                   }
                                                   §§goto(addr209);
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr175);
                                    }
                                    addr113:
                                    §§push(§§pop() / §§pop());
                                    if(_loc4_)
                                    {
                                       §§goto(addr116);
                                    }
                                    §§goto(addr117);
                                 }
                                 break;
                              }
                              addr112:
                              §§goto(addr113);
                           }
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr112);
         }
         §§goto(addr68);
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§&U§ = param1;
            while(true)
            {
               this.§7"1§ = param2;
               addr34:
               if(!(_loc4_ && this))
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            this.§@##§ = §="@§;
            loop2:
            while(true)
            {
               this.§,!p§ = this.§&##§;
               loop3:
               while(true)
               {
                  this.mDragging = false;
                  loop4:
                  while(true)
                  {
                     this.§+"t§ = false;
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        continue loop4;
                        addr74:
                        this.§"#"§ = true;
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr34);
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!_loc3_)
         {
            §?!r§.§"#_§("BirdShot" + _loc1_);
         }
      }
      
      public function §6#P§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§72§);
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc5_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc4_ >= this.§,!?§.length)
            {
               if(!_loc6_)
               {
                  break;
               }
               loop1:
               while(!(_loc5_ || param1))
               {
                  while(true)
                  {
                     _loc4_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§,!?§[_loc4_].update(param1,this.mSlingShotState == §?R§,param2);
            §§goto(addr92);
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§`"]§ = null;
         if(_loc2_ || _loc1_)
         {
            if(this.§72§ < this.§,!?§.length)
            {
               _loc1_ = this.§,!?§[this.§72§];
               addr42:
               if(!_loc3_)
               {
                  return _loc1_.name;
               }
            }
            return null;
         }
         §§goto(addr42);
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§`"]§ = null;
         var _loc2_:* = 0;
         if(_loc5_)
         {
            this.mDragging = false;
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§#o§();
                  loop2:
                  while(true)
                  {
                     if(_loc5_)
                     {
                        if(this.§["J§ >= this.§,!?§.length)
                        {
                           if(_loc5_)
                           {
                              return false;
                           }
                           if(!_loc5_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              if(true)
                              {
                                 break loop2;
                              }
                              continue loop1;
                           }
                        }
                        break;
                     }
                     continue loop0;
                  }
                  _loc1_ = this.§,!?§[this.§["J§];
                  if(_loc5_)
                  {
                     _loc1_.§7"7§(-1,true);
                     if(!_loc6_)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§2#G§.levelItemManager.getItem(_loc1_.name).score);
                           if(!_loc6_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc2_ = §§pop();
                           if(_loc6_)
                           {
                              break;
                           }
                           addr92:
                           while(true)
                           {
                              this.showScoreForRemainingBird(_loc1_,_loc2_);
                              if(_loc5_)
                              {
                                 if(true)
                                 {
                                    var _loc3_:*;
                                    §§push((_loc3_ = this).§["J§);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc4_:* = §§pop();
                                 }
                                 continue loop4;
                                 if(_loc5_)
                                 {
                                    _loc3_.§["J§ = _loc4_;
                                 }
                                 break loop4;
                              }
                              break loop4;
                           }
                        }
                     }
                     return true;
                  }
                  §§goto(addr92);
               }
            }
         }
         §§goto(addr37);
      }
      
      protected function showScoreForRemainingBird(param1:§`"]§, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§2#G§);
            §§push(param2);
            §§push(§&'§.§1!W§);
            §§push(true);
            §§push(param1.x);
            §§push(param1.y);
            if(!_loc3_)
            {
               §§push(3);
               if(!(_loc3_ && _loc3_))
               {
                  addr65:
                  §§push(§§pop() - §§pop());
                  §§push(§ U§.§0#`§(param1.name));
               }
               §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
               §§goto(addr70);
            }
            §§goto(addr65);
         }
         addr70:
      }
      
      public function §#"+§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§`"]§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§,!?§)
         {
            if(!_loc5_)
            {
               §§push(_loc1_);
               if(_loc6_ || _loc2_)
               {
                  §§push(int(§§pop() + this.§2#G§.levelItemManager.getItem(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §^#U§() : int
      {
         return this.§4J§;
      }
      
      protected function groundSlingshot() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         var _loc1_:* = 1000;
         §§push(Math.cos(this.§[<§ + Math.PI / 2) * this.§<!m§);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(Math.sin(this.§[<§ + Math.PI / 2) * this.§<!m§);
         if(_loc6_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(this.§2#G§.objects);
            §§push(this.§9"C§);
            if(_loc6_)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  addr131:
                  §§push(§§pop() + §§pop());
                  §§push(this.§-#;§);
                  if(_loc6_ || this)
                  {
                     addr140:
                     §§push(§§pop() + _loc3_);
                  }
                  §§push(§§pop().§4#7§(§§pop(),§§pop()));
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(-1);
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    break loop3;
                                 }
                              }
                              else
                              {
                                 this.applyGravity(0.1);
                              }
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc6_)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() - 1);
                                       if(_loc6_ || this)
                                       {
                                          addr90:
                                          _loc1_ = §§pop();
                                          if(!_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(0);
                                       }
                                       if(_loc5_ && this)
                                       {
                                          break;
                                       }
                                       if(!(_loc5_ && this))
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue;
                                                }
                                                this.§@§ = -1;
                                             }
                                             return;
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr90);
                              }
                           }
                        }
                        §§goto(addr113);
                     }
                  }
               }
               §§goto(addr140);
            }
            §§goto(addr131);
         }
      }
      
      public function §'"0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§%G§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr69:
               while(true)
               {
                  §§push(-§§pop());
                  addr70:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr68:
         }
         while(true)
         {
            §§push(this.§%G§);
            if(!_loc3_)
            {
               §§push(param2);
               if(_loc4_ || param2)
               {
                  if(!_loc3_)
                  {
                     addr50:
                     §§push(-§§pop());
                     if(_loc4_)
                     {
                        §§pop().y = §§pop();
                        if(_loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr70);
               }
               §§goto(addr50);
            }
            else
            {
               §§goto(addr68);
            }
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.mSlingShotState == §,"K§);
            loop0:
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr105:
                     loop5:
                     while(true)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(!(_loc2_ && this))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_ || this)
                           {
                              while(true)
                              {
                                 addr73:
                                 do
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(true);
                                          while(!(_loc3_ || param1))
                                          {
                                             continue loop1;
                                          }
                                          return §§pop();
                                          addr77:
                                       }
                                       else if(_loc2_)
                                       {
                                          continue loop5;
                                       }
                                       §§goto(addr77);
                                    }
                                    §§push(false);
                                 }
                                 while(_loc2_);
                                 
                                 continue loop0;
                              }
                              addr72:
                           }
                           §§goto(addr77);
                        }
                        §§goto(addr73);
                     }
                  }
               }
               §§goto(addr72);
            }
            while(!(_loc3_ || _loc3_));
            
            return §§pop();
         }
         §§goto(addr105);
      }
      
      public function get canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.mSlingShotState == §,"K§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc1_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§@##§);
                                       if(_loc1_)
                                       {
                                          continue loop7;
                                       }
                                       addr62:
                                       while(true)
                                       {
                                          §§push(§§pop() >= §6!5§);
                                          addr64:
                                          addr103:
                                          while(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             break loop7;
                                          }
                                          continue loop8;
                                       }
                                    }
                                    addr96:
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr62);
                              }
                           }
                           return §§pop();
                        }
                        break;
                     }
                     continue;
                     addr73:
                  }
                  §§goto(addr103);
               }
            }
         }
         §§goto(addr96);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mDragging = false;
            if(!_loc3_)
            {
               addr33:
               this.§8"F§(§,"K§);
            }
            var _loc1_:§`"]§ = this.§,!?§[this.§72§];
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.§7"7§(§'#2§.§##Z§);
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.mDragging = true;
         }
         var _loc1_:§`"]§ = this.§,!?§[this.§72§];
         if(_loc2_ || _loc3_)
         {
            _loc1_.§7"7§(§'#2§.§];§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§+"t§ = true;
         }
      }
      
      protected function §%"'§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§`"]§ = null;
         if(_loc5_)
         {
            if(param1 < 0)
            {
               if(_loc5_ || _loc3_)
               {
                  return;
               }
               addr47:
               _loc3_ = this.§,!?§[param1];
               if(_loc5_)
               {
                  this.§<v§.removeChild(_loc3_.sprite);
               }
               loop0:
               while(true)
               {
                  if(!param2)
                  {
                     do
                     {
                        _loc3_.dispose();
                        do
                        {
                           this.§,!?§[param1] = null;
                        }
                        while(!(_loc5_ || this));
                        
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        if(!(_loc4_ && this))
                        {
                           continue;
                        }
                     }
                     while(false);
                     
                     addr127:
                     this.§,!?§.splice(param1,1);
                     addr132:
                     return;
                     addr90:
                  }
                  while(true)
                  {
                     this.showDestructionParticles(this.§,!?§[param1]);
                     continue loop0;
                     §§goto(addr81);
                  }
               }
            }
            else if(this.§,!?§[param1])
            {
               if(_loc5_)
               {
                  §§goto(addr47);
               }
               §§goto(addr132);
            }
         }
         §§goto(addr127);
      }
      
      protected function showDestructionParticles(param1:§`"]§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
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
               if(!(_loc9_ && this))
               {
                  if(_loc10_)
                  {
                     §§push(this.§2#G§);
                     if(!_loc9_)
                     {
                        §§push(§§pop().particles);
                        if(_loc10_)
                        {
                           §§push(§ U§.§?#;§);
                           if(!(_loc9_ && this))
                           {
                              §§push(§,!w§.§ !B§);
                              if(_loc10_)
                              {
                                 §§push(§ U§.§'# §);
                                 if(!_loc9_)
                                 {
                                    §§push(param1.x);
                                    if(_loc10_)
                                    {
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(param1.y);
                                          if(!(_loc9_ && param1))
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(1000);
                                                if(!(_loc9_ && param1))
                                                {
                                                   §§push("");
                                                   if(_loc10_)
                                                   {
                                                      §§push(0);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         §§pop().§;!0§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                         addr125:
                                                         if(!_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(_loc10_ || this)
                                                            {
                                                               §§push(param1.sprite);
                                                               if(_loc10_ || this)
                                                               {
                                                                  §§push(-§§pop().height);
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        §§push(§#_§.§8]§);
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr263:
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr265:
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          if(_loc10_ || _loc2_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc10_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc10_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         addr304:
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               _loc8_ = §§pop();
                                                                                                               if(_loc10_ || _loc3_)
                                                                                                               {
                                                                                                                  addr321:
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                     {
                                                                                                                        §§push(Math.random() * -_loc8_);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           addr337:
                                                                                                                           §§push(2);
                                                                                                                           if(_loc10_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr346:
                                                                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 addr349:
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 loop23:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr370:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             addr379:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Math.random() * -_loc7_);
                                                                                                                                                addr384:
                                                                                                                                                loop28:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(2);
                                                                                                                                                      loop22:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr393:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            addr394:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr395:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc10_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     break loop22;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop21;
                                                                                                                                                      addr392:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr427:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr428:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      continue loop28;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         _loc4_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(180 / Math.PI);
                                                                                                                                                            §§goto(addr265);
                                                                                                                                                         }
                                                                                                                                                         addr443:
                                                                                                                                                      }
                                                                                                                                                      loop5:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         addr448:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr449:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc6_ = §§pop();
                                                                                                                                                               addr450:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.sprite);
                                                                                                                                                                  addr357:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(-§§pop().width);
                                                                                                                                                                     addr359:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§#_§.§8]§);
                                                                                                                                                                        addr361:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc10_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop23;
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
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr378:
                                                                                                                                       }
                                                                                                                                       §§goto(addr449);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr392);
                                                                                                                        }
                                                                                                                        §§goto(addr346);
                                                                                                                     }
                                                                                                                     §§goto(addr359);
                                                                                                                  }
                                                                                                                  §§goto(addr370);
                                                                                                               }
                                                                                                               §§goto(addr349);
                                                                                                            }
                                                                                                            §§goto(addr384);
                                                                                                         }
                                                                                                         §§goto(addr393);
                                                                                                      }
                                                                                                      §§goto(addr337);
                                                                                                   }
                                                                                                   §§goto(addr448);
                                                                                                }
                                                                                                §§goto(addr395);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr428);
                                                                                       }
                                                                                       §§goto(addr443);
                                                                                    }
                                                                                    §§goto(addr394);
                                                                                 }
                                                                                 §§goto(addr321);
                                                                              }
                                                                              §§goto(addr361);
                                                                           }
                                                                           §§goto(addr378);
                                                                        }
                                                                        §§goto(addr304);
                                                                     }
                                                                     §§goto(addr379);
                                                                  }
                                                                  §§goto(addr263);
                                                               }
                                                               §§goto(addr357);
                                                            }
                                                            §§goto(addr450);
                                                         }
                                                         _loc8_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(this.§2#G§);
                                                            addr141:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().particles);
                                                               addr142:
                                                               while(true)
                                                               {
                                                                  §§push(§ U§.§7!i§);
                                                                  addr144:
                                                                  while(true)
                                                                  {
                                                                     §§push(§,!w§.§ !B§);
                                                                     addr146:
                                                                     while(true)
                                                                     {
                                                                        §§push(§ U§.§'# §);
                                                                        addr148:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.x);
                                                                           addr150:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              addr151:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr152:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.y);
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       addr163:
                                                                                       §§push(§§pop() + _loc8_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(1500);
                                                                                          addr164:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push("");
                                                                                             addr165:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§ U§.§`"I§(param1.name));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr163:
                                                                                    }
                                                                                    §§goto(addr163);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr353:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            §§push(§§pop() * Math.cos(_loc6_));
                                                         }
                                                         §§push(_loc2_);
                                                         if(_loc10_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() * Math.sin(_loc6_));
                                                            }
                                                         }
                                                         §§push(5);
                                                         §§push(_loc2_);
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            §§push(§§pop() * 20);
                                                         }
                                                         §§pop().§;!0§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                         loop8:
                                                         while(_loc10_)
                                                         {
                                                            _loc5_++;
                                                            while(_loc9_ && this)
                                                            {
                                                               continue loop8;
                                                            }
                                                            continue loop0;
                                                         }
                                                         §§goto(addr353);
                                                         §§goto(addr165);
                                                      }
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr152);
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
                  §§goto(addr130);
               }
               §§goto(addr125);
            }
            else
            {
               §§push(_loc4_);
               if(!(_loc9_ && param1))
               {
                  §§goto(addr427);
                  §§push(Math.random() * (720 / _loc3_));
               }
            }
            §§goto(addr449);
         }
      }
      
      public function removeObject(param1:§`"]§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%"'§(this.§,!?§.indexOf(param1));
         }
      }
      
      public function sortBirds() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§`"]§ = null;
         if(_loc4_ || this)
         {
            this.§,!?§.sort(this.§ !6§);
         }
         loop0:
         while(true)
         {
            §§push(this.§<v§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§<v§);
               if(_loc4_)
               {
                  continue loop0;
               }
            }
            addr57:
            var _loc2_:int = 0;
            if(_loc4_ || _loc3_)
            {
               while(_loc2_ < this.§,!?§.length)
               {
                  _loc1_ = this.§,!?§[_loc2_];
                  if(!_loc3_)
                  {
                     this.§<v§.addChildAt(_loc1_.sprite,0);
                     if(_loc4_)
                     {
                        _loc2_++;
                     }
                  }
               }
            }
            return;
         }
      }
      
      private function § !6§(param1:§`"]§, param2:§`"]§) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1.§""J§);
            loop0:
            while(true)
            {
               §§push(param2.§""J§);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     while(true)
                     {
                        addr60:
                        if(!(_loc4_ || this))
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§goto(addr20);
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(param1.§""J§);
                     if(!_loc3_)
                     {
                        §§push(param2.§""J§);
                        if(_loc4_)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr60);
                           }
                           addr20:
                        }
                        continue loop1;
                        while(true)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              return §§pop();
                           }
                           addr59:
                           if(_loc3_ && _loc3_)
                           {
                              break loop1;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        return §§pop();
                     }
                     break;
                  }
                  §§goto(addr59);
               }
               return §§pop();
            }
         }
         §§goto(addr67);
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §`"]§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§,!?§.length)
            {
               if(_loc5_ && this)
               {
                  continue;
               }
               if(!_loc5_)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  if(_loc4_ || this)
                  {
                     return null;
                  }
                  addr67:
                  if(this.§,!?§[_loc3_].isInCoordinates(param1,param2))
                  {
                     break;
                  }
                  addr57:
                  _loc3_++;
                  continue;
               }
            }
            else if(this.§,!?§[_loc3_])
            {
               §§goto(addr67);
            }
            §§goto(addr57);
         }
         return this.§,!?§[_loc3_];
      }
      
      public function §9"U§(param1:Number, param2:Number) : §;x§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§8!+§);
               loop1:
               while(true)
               {
                  §§push(this.§"!S§);
                  loop2:
                  while(true)
                  {
                     §§push(4);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() >= §§pop());
                              if(_loc3_ || param2)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop27:
                                       while(true)
                                       {
                                          §§pop();
                                          while(true)
                                          {
                                             §§push(param1);
                                             loop26:
                                             while(true)
                                             {
                                                §§push(this.§8!+§);
                                                loop19:
                                                while(true)
                                                {
                                                   §§push(this.§"!S§);
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §§push(4);
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop23:
                                                            while(true)
                                                            {
                                                               if(_loc4_ && param2)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(§§pop() <= §§pop());
                                                               if(_loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop27;
                                                                              }
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       §§push(this.§=!Z§);
                                                                                       loop12:
                                                                                       while(!_loc4_)
                                                                                       {
                                                                                          §§push(this.§"!S§);
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             if(!(_loc3_ || _loc3_))
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             §§push(4);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             if(_loc4_ && param2)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             §§push(§§pop() / §§pop());
                                                                                          }
                                                                                          loop13:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§push(§§pop() - §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() >= §§pop());
                                                                                                addr157:
                                                                                                while(!_loc4_)
                                                                                                {
                                                                                                }
                                                                                                addr40:
                                                                                                continue loop9;
                                                                                                if(!(_loc4_ && param2))
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop22;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§push(this.§=!Z§);
                                                                                    addr179:
                                                                                    continue loop26;
                                                                                    if(!(_loc3_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(this.§=!Z§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr40);
                                                                                    }
                                                                                    §§goto(addr75);
                                                                                 }
                                                                                 continue loop26;
                                                                                 while(_loc3_ || param2)
                                                                                 {
                                                                                    §§goto(addr179);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                           addr202:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc3_ || this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr171);
                                                                           }
                                                                           §§goto(addr85);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr199:
                                                               }
                                                               §§goto(addr202);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr234:
                                    }
                                    §§goto(addr199);
                                 }
                              }
                              §§goto(addr234);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §6!0§(param1:§8!B§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§`"]§ = null;
         var _loc4_:§5y§ = null;
         if(_loc5_ || _loc2_)
         {
            param1.slingshotX = this.§8!+§;
            if(!(_loc6_ && _loc3_))
            {
               param1.slingshotY = this.§=!Z§;
            }
         }
         var _loc2_:* = Number(0);
         loop0:
         while(_loc2_ < this.§,!?§.length)
         {
            _loc3_ = this.§,!?§[_loc2_];
            (_loc4_ = new §5y§()).x = _loc3_.x;
            if(!_loc6_)
            {
               _loc4_.y = _loc3_.y;
               loop1:
               while(true)
               {
                  _loc4_.type = _loc3_.name;
                  while(true)
                  {
                     addr106:
                     addr97:
                     while(true)
                     {
                        param1.§0#T§(_loc4_);
                        addr110:
                        while(_loc5_)
                        {
                        }
                        continue loop1;
                     }
                     if(!(_loc5_ || _loc2_))
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr106);
                  }
               }
            }
            while(true)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(§§pop() + 1);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc2_ = §§pop();
               if(_loc5_ || _loc2_)
               {
                  §§goto(addr97);
               }
               §§goto(addr110);
            }
         }
      }
      
      public function §%"F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§,!?§.length > 0)
         {
            this.removeObject(this.§,!?§[0]);
            if(!_loc1_)
            {
               break;
            }
         }
      }
      
      public function §-!!§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_ || this)
            {
               if(§§pop() >= this.§,!?§.length)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§8!+§);
                     addr164:
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
                                    while(!(_loc6_ && _loc3_))
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(this.§8!+§);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop() < param2.x);
                                             addr133:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   while(_loc5_ || param1)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_ && this)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§pop();
                                                                        while(_loc5_)
                                                                        {
                                                                           §§push(this.§=!Z§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop7;
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              addr24:
                                                                              return _loc3_;
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  addr143:
                                                                  while(_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     break loop16;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               while(_loc5_)
                                                               {
                                                                  §§push(this.§=!Z§);
                                                                  continue loop7;
                                                                  §§goto(addr62);
                                                               }
                                                               continue loop6;
                                                            }
                                                            §§goto(addr53);
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr185:
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          addr232:
                                       }
                                       §§goto(addr190);
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr133);
                           }
                        }
                     }
                  }
               }
               else if(this.§,!?§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc3_.push(this.§,!?§[_loc4_]);
                  }
                  §§goto(addr232);
               }
               §§goto(addr185);
            }
            §§goto(addr164);
         }
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number, param4:Number) : §`"]§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§`"]§ = this.addSlingshotObject(param1,param2,param3,param4);
         if(_loc6_)
         {
            this.sortBirds();
         }
         return _loc5_;
      }
      
      public function getBirdCount() : int
      {
         return this.§,!?§.length;
      }
      
      public function §6!^§() : int
      {
         return this.§&!$§;
      }
   }
}
