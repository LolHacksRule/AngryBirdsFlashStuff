package §@V§
{
   import §%!B§.§5L§;
   import §%8§.§89§;
   import §%8§.§@-§;
   import §0N§.§ i§;
   import §24§.;
   import §2`§.§;!Q§;
   import §3!J§.§4!2§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §=!4§.Texture;
   import §[!Z§.§>D§;
   import §`2§.§"w§;
   import §`2§.§`""§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0"§ extends EventDispatcher
   {
      
      public static const §=!f§:String = "slingshot_shot_bird";
      
      private static const §;!,§:int = 1800;
      
      public static const §^&§:Number = 0.4;
      
      public static const §97§:int = 0;
      
      public static const §]""§:int = 1;
      
      public static const §'!i§:int = 2;
      
      public static const §%!T§:int = 3;
      
      public static const §1_§:int = 5;
      
      public static const §5G§:int = 6;
      
      public static const §?!W§:int = 3151368;
      
      protected static var §6v§:Texture;
      
      protected static var §0""§:Texture;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!f§ = "slingshot_shot_bird";
            loop0:
            while(true)
            {
               §;!,§ = 1800;
               while(true)
               {
                  §^&§ = 0.4;
                  loop2:
                  while(!(_loc1_ && _loc2_))
                  {
                     while(true)
                     {
                        §97§ = 0;
                        loop4:
                        while(true)
                        {
                           §]""§ = 1;
                           do
                           {
                              §'!i§ = 2;
                              loop6:
                              while(true)
                              {
                                 §%!T§ = 3;
                                 while(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       §1_§ = 5;
                                       loop8:
                                       while(_loc2_ || §0"§)
                                       {
                                          if(!_loc1_)
                                          {
                                             §5G§ = 6;
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop8;
                                             }
                                             continue loop6;
                                          }
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                           }
                           while(!(_loc2_ || §0"§));
                           
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      protected var §9!i§:§;!Q§;
      
      protected var §!`§:§#=§;
      
      protected var §]!B§:Number;
      
      protected var §9=§:Number;
      
      protected var §8M§:Number;
      
      protected var §5#§:Number = 8.5;
      
      protected var §7W§:Number;
      
      protected var §"Q§:Number;
      
      protected var §7!V§:Number;
      
      protected var §@L§:Number;
      
      protected var §=l§:Number = 1.0;
      
      protected var §77§:Boolean;
      
      protected var §`c§:Boolean;
      
      protected var § '§:Boolean;
      
      protected var §&n§:Boolean = false;
      
      public var §&]§:Vector.<§&#§>;
      
      public var §">§:int;
      
      protected var §0"3§:int = 0;
      
      protected var §,R§:int;
      
      protected var §="'§:Number;
      
      public var §-w§:Sprite;
      
      protected var §4!!§:Sprite;
      
      public var §-"$§:int = 0;
      
      protected var §;!i§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §>!=§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §^;§:Boolean = false;
      
      public var §3I§:Number;
      
      protected var §&%§:Sprite;
      
      protected var §##§:Sprite;
      
      protected var §0!§:Sprite;
      
      protected var §`!b§:DisplayObject;
      
      protected var §'!2§:Sprite;
      
      protected var §`V§:DisplayObject;
      
      protected var §[S§:Sprite;
      
      protected var §5f§:DisplayObject;
      
      protected var §5!4§:Sprite;
      
      protected var §>"6§:Sprite;
      
      protected var §""#§:DisplayObject;
      
      private var §6!d§:Number = 0;
      
      private var §>V§:Number = 0;
      
      private var §,!"§:Number = -1;
      
      private var §69§:Number = 0;
      
      private var §>!2§:Boolean = false;
      
      private var §`!T§:int = 0;
      
      private var §1?§:Boolean = false;
      
      public function §0"§(param1:§#=§, param2:§5L§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true, param7:Boolean = false)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:§ i§ = null;
         if(!_loc11_)
         {
            this.§&]§ = new Vector.<§&#§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§!`§ = param1;
                  while(!_loc11_)
                  {
                     this.§&%§ = param3;
                     continue loop1;
                     loop8:
                     for(; _loc10_ || param3; if(!(_loc10_ || this))
                     {
                        continue;
                     },_loc8_ = 0,if(_loc10_ || param3)
                     {
                        if(false)
                        {
                           §§goto(addr36);
                        }
                        addr187:
                        if(_loc8_ < param2.§>s§)
                        {
                           _loc9_ = param2.§`!^§(_loc8_);
                           if(!_loc11_)
                           {
                              this.§5`§(_loc9_.type,_loc9_.x,_loc9_.y,_loc9_.angle,_loc9_.index);
                              if(!(_loc11_ && param2))
                              {
                                 _loc8_++;
                              }
                           }
                           §§goto(addr187);
                        }
                        if(!(_loc11_ && param3))
                        {
                           this.§`!T§ = this.§=U§();
                           if(!_loc11_)
                           {
                              this.§">§ = 0;
                              §§goto(addr340);
                           }
                           §§goto(addr336);
                        }
                        §§goto(addr246);
                     },§§goto(addr39))
                     {
                        while(true)
                        {
                           this.setPosition(param2.slingshotX,param2.slingshotY,param2.set);
                           loop10:
                           for(; _loc10_; while(_loc10_ || param1)
                           {
                              continue loop8;
                           })
                           {
                              while(true)
                              {
                                 this.§2!n§();
                                 continue loop10;
                              }
                           }
                           loop7:
                           while(true)
                           {
                              if(_loc10_)
                              {
                                 addr81:
                                 if(_loc10_ || param3)
                                 {
                                    if(!param2)
                                    {
                                       §#7§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                                    }
                                    continue loop8;
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§`c§ = param6;
                                    §§goto(addr81);
                                 }
                                 addr112:
                              }
                              addr93:
                              addr117:
                              while(!(_loc11_ && param1))
                              {
                                 if(!(_loc11_ && param2))
                                 {
                                    this.§ '§ = param7;
                                    continue loop7;
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 this.§77§ = param5;
                                 §§goto(addr112);
                                 §§goto(addr93);
                              }
                           }
                           addr285:
                           addr279:
                           this.§,V§(§%!T§);
                           addr268:
                           this.§3I§ = 0;
                           if(!_loc11_)
                           {
                              this.§`#§();
                              addr260:
                              if(!(_loc11_ && param1))
                              {
                                 this.update(0,true);
                                 addr252:
                                 if(_loc10_)
                                 {
                                    if(_loc10_)
                                    {
                                       this.§^!K§();
                                       addr237:
                                       if(!_loc11_)
                                       {
                                          if(_loc10_ || param2)
                                          {
                                             this.§6!M§(0);
                                             addr222:
                                             if(_loc10_ || param3)
                                             {
                                                if(_loc10_)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      this.§<!G§ = false;
                                                      if(!_loc11_)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            §§goto(addr260);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   addr319:
                                                   if(_loc10_ || this)
                                                   {
                                                      this.§,V§(§%!T§);
                                                      addr280:
                                                      §§goto(addr268);
                                                      addr297:
                                                      addr336:
                                                   }
                                                   if(this.§&]§.length <= 0)
                                                   {
                                                      addr304:
                                                      §§push(§#7§);
                                                      §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§]!B§);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() + " ");
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() + this.§9=§);
                                                         }
                                                      }
                                                      §§pop().log(§§pop());
                                                      §§goto(addr319);
                                                   }
                                                   this.§,V§(§97§);
                                                   addr340:
                                                }
                                                §§goto(addr280);
                                             }
                                             §§goto(addr237);
                                             addr246:
                                          }
                                          §§goto(addr304);
                                       }
                                       §§goto(addr252);
                                    }
                                    §§goto(addr297);
                                 }
                                 §§goto(addr285);
                              }
                              §§goto(addr268);
                           }
                           §§goto(addr279);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr64);
      }
      
      public function get sprite() : Sprite
      {
         return this.§&%§;
      }
      
      public function get §6q§() : Sprite
      {
         return this.§4!!§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§6!d§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§">§ < this.§&]§.length;
      }
      
      public function get §<!v§() : Number
      {
         return this.§;!i§;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§9=§;
      }
      
      public function get angle() : Number
      {
         return this.§8M§;
      }
      
      public function get §2"1§() : Boolean
      {
         return this.§`c§;
      }
      
      public function get §0j§() : Boolean
      {
         return this.§ '§;
      }
      
      public function get §<!G§() : Boolean
      {
         return this.§1?§;
      }
      
      public function set §<!G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1?§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            if(this.§&]§.length <= 0)
            {
               loop1:
               while(true)
               {
                  this.§&]§ = null;
                  while(true)
                  {
                     §§push(this.§&%§);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              addr69:
                              this.§&%§.dispose();
                           }
                           while(_loc1_)
                           {
                              this.§&%§ = null;
                              loop4:
                              while(_loc1_ || _loc1_)
                              {
                                 while(true)
                                 {
                                    this.§-w§ = null;
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 if(!_loc2_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                           continue;
                        }
                        §§goto(addr21);
                     }
                     §§goto(addr69);
                  }
               }
               if(_loc1_)
               {
                  break;
               }
            }
            else
            {
               this.§%!R§(0);
            }
         }
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§`!b§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§`!b§);
                     addr73:
                     while(true)
                     {
                        §§pop().color = param1;
                        addr75:
                        while(true)
                        {
                        }
                     }
                  }
                  addr71:
               }
               while(true)
               {
                  §§push(this.§""#§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           addr51:
                           this.§""#§.color = param1;
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr51);
               }
               addr25:
               return;
            }
            §§goto(addr73);
         }
         §§goto(addr75);
      }
      
      public function §'R§(param1:String, param2:Number, param3:Number, param4:int) : §&#§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§&#§ = null;
         if(!_loc8_)
         {
            if(this.§&]§.length > 0)
            {
               (_loc6_ = this.§&]§[0]).§8!7§(false);
               addr26:
               if(_loc7_ || this)
               {
                  _loc6_.§??§ = false;
               }
            }
            var _loc5_:§&#§;
            (_loc5_ = this.§5`§(param1,param2,param3,0,param4)).§8!7§(true);
            return _loc5_;
         }
         §§goto(addr26);
      }
      
      protected function §5`§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §&#§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:§@-§ = this.§!`§.levelItemManager.§1!e§(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         if(!(_loc12_ && param3))
         {
            _loc7_.scaleY = _loc6_.scale;
         }
         var _loc8_:§&#§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(_loc11_)
         {
            if(param5 < 0)
            {
               if(!(_loc12_ && this))
               {
                  this.§&]§.push(_loc8_);
                  if(!(_loc12_ && param2))
                  {
                     addr94:
                     var _loc9_:*;
                     §§push((_loc9_ = this).§0"3§);
                     if(_loc11_ || param3)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc10_:* = §§pop();
                     if(!(_loc12_ && this))
                     {
                        _loc9_.§0"3§ = _loc10_;
                     }
                     if(_loc12_ && this)
                     {
                     }
                     return _loc8_;
                     addr85:
                  }
               }
               this.§-w§.addChild(_loc8_.sprite);
            }
            else
            {
               this.§&]§.splice(param5,0,_loc8_);
               if(_loc11_)
               {
                  §§goto(addr94);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr85);
      }
      
      protected function initializeSlingshotObject(param1:§@-§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §&#§
      {
         return new §&#§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function §,V§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§97§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     while(!_loc2_)
                     {
                        §§push(§]""§);
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           loop5:
                           while(true)
                           {
                              §§push(§'!i§);
                              loop6:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       break;
                                    }
                                    §§push(this.mSlingShotState);
                                    loop7:
                                    while(!_loc2_)
                                    {
                                       §§push(§%!T§);
                                       while(true)
                                       {
                                          if(!(_loc2_ && param1))
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   break;
                                                }
                                                §§push(this.mSlingShotState);
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop7;
                                             }
                                             continue loop2;
                                          }
                                          continue loop6;
                                       }
                                       while(_loc3_ || _loc3_)
                                       {
                                          this.§#!+§();
                                          §§goto(addr245);
                                       }
                                       while(true)
                                       {
                                          this.§^;§ = false;
                                          §§goto(addr29);
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              addr273:
                              while(true)
                              {
                                 this.§="'§ = 10000;
                                 §§goto(addr276);
                                 §§goto(addr57);
                              }
                           }
                        }
                        while(true)
                        {
                           this.§#!+§();
                           §§goto(addr293);
                        }
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     this.§#!+§();
                     §§goto(addr323);
                  }
               }
               while(_loc2_ && _loc3_)
               {
                  continue loop0;
               }
               §§goto(addr29);
            }
         }
         §§goto(addr273);
      }
      
      public function get §;c§() : §#=§
      {
         return this.§!`§;
      }
      
      public function §6!r§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mSlingShotState == §%!T§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr49:
                     return this.§="'§ <= 0;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      protected function §3a§() : §;!Q§
      {
         return this.§!`§.§13§.§6"%§("SLINGSHOT");
      }
      
      private function §2!n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9!i§ = this.§3a§();
            loop0:
            while(true)
            {
               this.§`!b§ = this.§9!i§.getFrame(0);
               while(true)
               {
                  §§push(this.§`!b§);
                  loop2:
                  while(true)
                  {
                     §§push(-3);
                     addr250:
                     while(true)
                     {
                        §§pop().pivotX = §§pop();
                        continue loop2;
                     }
                  }
               }
               while(true)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     continue loop0;
                  }
                  §§goto(addr89);
                  §§push(this.§0!§);
               }
            }
         }
         §§goto(addr227);
      }
      
      protected function §5!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§&%§);
            while(true)
            {
               §§pop().addChild(this.§##§);
               addr36:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §§pop().addChild(this.§0!§);
               if(!_loc1_)
               {
                  addr58:
                  if(!_loc2_)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§&%§);
                        loop4:
                        while(true)
                        {
                           §§pop().addChild(this.§-w§);
                           addr67:
                           addr92:
                           while(_loc2_)
                           {
                              continue loop4;
                           }
                           while(true)
                           {
                              §§push(this.§&%§);
                              while(true)
                              {
                                 §§pop().addChild(this.§4!!§);
                                 continue loop3;
                                 addr29:
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr36);
                              }
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr67);
            }
         }
         §§goto(addr92);
      }
      
      public function §9"3§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(!(_loc2_ && _loc2_))
         {
            this.§7W§ = this.§]!B§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§"Q§ = this.§9=§;
                  do
                  {
                     this.§@L§ = §&z§.§!"1§;
                  }
                  while(_loc2_);
                  
                  if(_loc3_ || _loc3_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     _loc1_ = null;
                     return;
                     addr57:
                  }
                  break;
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §]!6§(param1:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = new BitmapData(2,2,true,4278190080 | param1);
         if(!_loc3_)
         {
            if(§0""§)
            {
               if(!_loc3_)
               {
                  addr69:
                  this.§!`§.§]!z§.§ f§(§0""§);
               }
               while(true)
               {
               }
               addr74:
            }
            while(true)
            {
               §0""§ = this.§!`§.§]!z§.§@!;§(_loc2_);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr69);
      }
      
      protected function §'!e§() : DisplayObject
      {
         return new §4!2§(§0""§);
      }
      
      protected function §^R§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:BitmapData = null;
         if(!(_loc5_ && this))
         {
            §§push(!§6v§);
            if(_loc4_ || this)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     §§pop();
                     if(_loc4_ || this)
                     {
                        §§push(param2);
                        if(_loc5_ && this)
                        {
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr67);
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            addr66:
            if(§§pop())
            {
               addr67:
               _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
               if(!(_loc5_ && _loc3_))
               {
                  if(§6v§)
                  {
                     if(_loc4_ || param1)
                     {
                        this.§!`§.§]!z§.§ f§(§6v§);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr117);
                  }
               }
               §6v§ = this.§!`§.§]!z§.§@!;§(_loc3_);
            }
            addr117:
            return new §4!2§(§6v§);
         }
         §§goto(addr67);
      }
      
      protected function §?u§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§5!4§ = new Sprite();
            if(_loc6_ || param3)
            {
               this.§>"6§ = new Sprite();
            }
         }
         var _loc4_:DisplayObject;
         (_loc4_ = this.§^R§(param2,param3)).rotation = Math.PI;
         if(!_loc5_)
         {
            §§push(_loc4_);
            §§push(_loc4_.width);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() / 2);
            }
            §§pop().x = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc4_);
               §§push(_loc4_.height);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() / 2);
               }
               §§pop().y = §§pop();
               loop1:
               while(true)
               {
                  this.§>"6§.addChild(_loc4_);
                  loop2:
                  while(true)
                  {
                     this.§5!4§.addChild(this.§>"6§);
                     loop3:
                     for(; !_loc5_; while(_loc6_ || this)
                     {
                        this.§`V§ = this.§'!e§();
                        §§goto(addr152);
                     })
                     {
                        this.§'!2§ = new Sprite();
                        loop4:
                        while(true)
                        {
                           §§push(this.§'!2§);
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
                                    §§push(this.§'!2§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!(_loc6_ || param2))
                                       {
                                          break;
                                       }
                                       §§pop().y = §§pop();
                                       loop9:
                                       while(!_loc5_)
                                       {
                                          this.§]!6§(param1);
                                          continue loop3;
                                          addr114:
                                          if(!(_loc6_ || param3))
                                          {
                                             continue;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(this.§[S§);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(-17);
                                             loop15:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                loop16:
                                                while(!(_loc5_ && param1))
                                                {
                                                   §§push(this.§[S§);
                                                   loop17:
                                                   while(!_loc5_)
                                                   {
                                                      §§push(5);
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§pop().y = §§pop();
                                                         do
                                                         {
                                                            this.§5f§ = this.§'!e§();
                                                            while(!_loc5_)
                                                            {
                                                               addr71:
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  §§push(this.§[S§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  §§pop().addChild(this.§5f§);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr61);
                                                                  }
                                                                  §§goto(addr69);
                                                                  continue loop17;
                                                               }
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     while(!_loc5_)
                                                                     {
                                                                        this.§[S§ = new Sprite();
                                                                        continue loop13;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop8;
                                                                     addr144:
                                                                     addr152:
                                                                  }
                                                                  §§goto(addr114);
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop16;
                                                         }
                                                         while(!_loc6_);
                                                         
                                                         return;
                                                         addr93:
                                                      }
                                                      continue loop15;
                                                   }
                                                   continue loop14;
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      protected function §6!M§(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         §§push(this.§ true§);
         if(_loc11_)
         {
            §§push(this.§9=§);
            if(_loc11_)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc12_ && param1))
               {
                  addr34:
                  §§push(§§pop() / §#=§.§^!2§);
                  if(_loc11_)
                  {
                     addr37:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(this.§["6§);
                  if(!(_loc12_ && this))
                  {
                     §§push(this.§]!B§);
                     if(!_loc12_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc12_)
                        {
                           addr57:
                           §§push(§§pop() / §#=§.§^!2§);
                           if(_loc11_ || param1)
                           {
                              addr65:
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:Number = Math.cos(this.§8M§);
                           var _loc5_:Number = Math.sin(this.§8M§);
                           §§push(-Math.sin(this.§8M§));
                           if(_loc11_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           var _loc7_:Number = Math.cos(this.§8M§);
                           §§push(_loc3_);
                           if(_loc11_)
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
                           if(!(_loc12_ && _loc3_))
                           {
                              §§push(_loc8_);
                              if(_loc11_)
                              {
                                 §§push(_loc4_);
                                 if(_loc11_ || _loc2_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc11_)
                                    {
                                       §§push(_loc9_);
                                       if(_loc11_ || this)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc12_ && param1))
                                                {
                                                   addr147:
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc12_ && _loc3_))
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(!_loc12_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc11_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(_loc9_);
                                                                  if(_loc11_ || _loc2_)
                                                                  {
                                                                     addr180:
                                                                     §§push(§§pop() * _loc7_);
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        addr189:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           addr192:
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc12_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              addr196:
                                                                              §§push(3.5);
                                                                              if(!(_loc12_ && _loc3_))
                                                                              {
                                                                                 addr204:
                                                                                 §§push(8);
                                                                                 §§push(this.§@L§);
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    §§push(this.§5""§);
                                                                                    if(!(_loc12_ && this))
                                                                                    {
                                                                                       addr230:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          addr228:
                                                                                          §§push(§§pop() / this.§@L§);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                       if(!(_loc12_ && this))
                                                                                       {
                                                                                          addr238:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc10_:* = §§pop();
                                                                                       if(_loc11_ || _loc3_)
                                                                                       {
                                                                                          §§push(this.§5!4§);
                                                                                          loop0:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             addr725:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                addr726:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§5!4§);
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr276);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr228);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr238);
                                             }
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr196);
                        }
                        §§goto(addr65);
                     }
                  }
                  §§goto(addr57);
               }
               §§goto(addr37);
            }
         }
         §§goto(addr34);
      }
      
      public function §!j§() : §&#§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&#§ = null;
         do
         {
            if(this.§&]§.length <= 0)
            {
               if(_loc3_)
               {
                  this.§@"&§();
                  if(_loc3_ || _loc1_)
                  {
                     break;
                  }
                  §§goto(addr48);
               }
               break;
            }
            this.§%!R§(0,true);
         }
         while(!_loc4_);
         
         if(this.§&]§.length > 0)
         {
            addr48:
            _loc2_ = this.§&]§[0];
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.§8!7§(false);
            }
            §§goto(addr74);
         }
         addr74:
         var _loc1_:§&#§ = this.§5`§("BIRD_SARDINE",this.§]!B§,this.§9=§,0);
         if(!_loc4_)
         {
            _loc1_.§8!7§(true);
         }
         do
         {
            _loc1_.§??§ = false;
            do
            {
               this.§,V§(§'!i§);
            }
            while(_loc4_ && _loc2_);
            
         }
         while(!(_loc3_ || _loc2_));
         
         return _loc1_;
      }
      
      protected function §@"&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §>D§.§9!q§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§,V§(§1_§);
         }
      }
      
      public function §#!+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§7W§);
            §§push(this.§"Q§);
            if(_loc1_ || _loc1_)
            {
               §§push(this.§@L§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() / 8);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().setNewCoordinatesForRubber(§§pop(),§§pop());
         }
      }
      
      protected function get §@Q§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§7!V§);
         if(!(_loc2_ && _loc1_))
         {
            return §§pop() * this.§=l§;
         }
      }
      
      protected function get §5""§() : Number
      {
         return Math.min(this.§7!V§,this.§@L§);
      }
      
      protected function get §["6§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§7!V§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(this.§@L§);
               if(_loc2_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc1_)
                     {
                        addr35:
                        §§push(this.§7W§);
                        if(!_loc1_)
                        {
                           §§push(this.§@L§);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop() * Math.cos(this.§;!i§ / 180 * Math.PI));
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr75:
                                 §§push(§§pop() + §§pop());
                                 if(_loc2_ || this)
                                 {
                                    §§goto(addr83);
                                 }
                              }
                              else
                              {
                                 addr102:
                                 §§push(§§pop() + §§pop() * Math.cos(this.§;!i§ / 180 * Math.PI));
                              }
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr83);
                     }
                     else
                     {
                        addr84:
                        §§push(this.§7W§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this.§7!V§);
                           if(_loc2_ || _loc1_)
                           {
                           }
                           §§goto(addr102);
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr84);
               }
               §§goto(addr75);
            }
            addr83:
            return §§pop();
         }
         §§goto(addr35);
      }
      
      protected function get § true§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§7!V§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.§@L§);
               if(_loc1_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc2_)
                     {
                        addr39:
                        §§push(this.§"Q§);
                        if(_loc1_ || this)
                        {
                           addr58:
                           §§push(this.§@L§);
                           if(_loc1_)
                           {
                              §§push(§§pop() * Math.sin(this.§;!i§ / 180 * Math.PI));
                              if(!_loc2_)
                              {
                                 addr74:
                                 §§push(§§pop() - §§pop());
                                 if(_loc1_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr107);
                              }
                              else
                              {
                                 addr86:
                                 §§push(§§pop() * Math.sin(this.§;!i§ / 180 * Math.PI));
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr74);
                        }
                        else
                        {
                           addr82:
                           §§push(this.§7!V§);
                           if(_loc1_)
                           {
                              §§goto(addr86);
                           }
                        }
                        §§push(§§pop() - §§pop());
                     }
                     else
                     {
                        addr78:
                        §§push(this.§"Q§);
                        if(_loc1_)
                        {
                           §§goto(addr82);
                        }
                     }
                     addr107:
                     return §§pop();
                  }
                  §§goto(addr78);
               }
               §§goto(addr74);
            }
            §§goto(addr58);
         }
         §§goto(addr39);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            §§push(this.§,!"§);
            if(_loc8_)
            {
               if(§§pop() > 0)
               {
                  if(_loc8_ || param1)
                  {
                     §§goto(addr31);
                  }
               }
               §§push(param1);
               if(!_loc9_)
               {
                  §§push(§§pop() - this.§7W§);
                  if(!_loc8_)
                  {
                  }
                  addr42:
                  var _loc4_:* = §§pop();
                  §§push(param2);
                  if(_loc8_ || param1)
                  {
                     §§push(§§pop() - this.§"Q§);
                     if(_loc8_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  var _loc6_:*;
                  §§push(_loc6_ = Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                  if(!(_loc9_ && param2))
                  {
                     §§push(this.§=l§);
                     if(!_loc9_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc8_ || param1)
                        {
                           §§push(this.§@L§);
                           if(!_loc9_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!(_loc9_ && this))
                                 {
                                    §§push(param3);
                                    if(!(_loc9_ && param2))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc8_ || param3)
                                          {
                                             addr122:
                                             §§push(false);
                                          }
                                          else
                                          {
                                             addr141:
                                             var _loc7_:*;
                                             §§push(_loc7_ = Number(Math.atan2(-(param2 - this.§"Q§),param1 - this.§7W§)));
                                             if(!_loc9_)
                                             {
                                                §§push(180 / Math.PI);
                                                if(!(_loc9_ && param1))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc9_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         addr189:
                                                         _loc7_ = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            §§push(this.mDragging);
                                                            if(_loc8_ || param2)
                                                            {
                                                               §§push(!§§pop());
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§,!"§);
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §§push(0);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() < §§pop());
                                                                                 addr299:
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0.8);
                                                                                             addr302:
                                                                                             loop0:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr303:
                                                                                                loop1:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   loop2:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(-160));
                                                                                                      loop3:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc8_ || param3))
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         _loc7_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         loop8:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc8_ || this))
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            _loc6_ = §§pop();
                                                                                                            loop9:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_ && param2)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               if(!(_loc8_ || param1))
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               loop10:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§-!@§(_loc7_,_loc6_));
                                                                                                                  if(!(_loc9_ && param3))
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && param3))
                                                                                                                        {
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  addr220:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_ && this)
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     if(_loc9_ && param3)
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        §§push(this.§9!K§(_loc6_));
                                                                                                                        if(!(_loc8_ || this))
                                                                                                                        {
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr286);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr301:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr220);
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr298:
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                     }
                                                                     addr327:
                                                                  }
                                                                  §§goto(addr299);
                                                               }
                                                            }
                                                            §§goto(addr327);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr298);
                                             }
                                             §§goto(addr189);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.§@L§);
                                          if(!_loc9_)
                                          {
                                             addr130:
                                             §§push(this.§=l§);
                                             if(!_loc9_)
                                             {
                                                addr134:
                                                §§push(§§pop() / §§pop());
                                                if(_loc8_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc9_)
                                                   {
                                                      _loc6_ = §§pop();
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr141);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr122);
                              }
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr141);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr42);
         }
         addr31:
         return false;
      }
      
      protected function §9!K§(param1:Number) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc2_:Number = 12;
         var _loc3_:Number = 5;
         var _loc4_:Number = 4;
         §§push(this.§@L§);
         if(_loc8_)
         {
            §§push(§§pop() / 2);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!(_loc7_ && param1))
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
                        §§push(this.§;!i§);
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
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop10:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr363:
                                                      loop40:
                                                      while(true)
                                                      {
                                                         §§push(this.§;!i§);
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(-90);
                                                            loop41:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               loop42:
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  loop33:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     loop34:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop35:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() < §§pop());
                                                                           addr332:
                                                                           while(true)
                                                                           {
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§;!i§);
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(-90);
                                                                                             loop16:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            continue loop42;
                                                                                                         }
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                     addr283:
                                                                                                                  }
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  while(!_loc7_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     loop21:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        loop22:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc7_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                              if(!(_loc8_ || param1))
                                                                                                                              {
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop10;
                                                                                                                              }
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(_loc8_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§@L§);
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            continue loop8;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         if(_loc7_ && _loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue loop21;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            continue loop18;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr159:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(_loc7_ && this)
                                                                                                                                                {
                                                                                                                                                   continue loop3;
                                                                                                                                                }
                                                                                                                                                continue loop0;
                                                                                                                                                addr240:
                                                                                                                                             }
                                                                                                                                             continue loop40;
                                                                                                                                          }
                                                                                                                                          §§goto(addr311);
                                                                                                                                          §§goto(addr182);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             addr334:
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop2;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1);
                                                                                                                                             if(!(_loc7_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(!(_loc7_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr72);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      addr230:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr232);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          return §§pop();
                                                                                                                                          addr46:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr46);
                                                                                                                                 }
                                                                                                                                 addr337:
                                                                                                                                 return §§pop();
                                                                                                                                 addr134:
                                                                                                                              }
                                                                                                                              loop25:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr311:
                                                                                                                                 addr182:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    §§push(this.§;!i§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue loop35;
                                                                                                                                    }
                                                                                                                                    §§push(Math.abs(this.§;!i§ - -90 - _loc3_) - _loc2_);
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    addr219:
                                                                                                                                    addr219:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       addr232:
                                                                                                                                       addr232:
                                                                                                                                       addr232:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc7_ && param1)
                                                                                                                                          {
                                                                                                                                             continue loop22;
                                                                                                                                          }
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr310:
                                                                                                                              §§goto(addr240);
                                                                                                                           }
                                                                                                                           §§goto(addr310);
                                                                                                                        }
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               continue loop34;
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         addr87:
                                                                                                         §§push(_loc2_);
                                                                                                         if(!(_loc8_ || this))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(!(_loc8_ || _loc2_))
                                                                                                               {
                                                                                                                  continue loop33;
                                                                                                               }
                                                                                                               §§push(_loc4_);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc8_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              §§goto(addr134);
                                                                                                                           }
                                                                                                                           §§goto(addr310);
                                                                                                                        }
                                                                                                                        §§goto(addr159);
                                                                                                                     }
                                                                                                                     §§goto(addr219);
                                                                                                                  }
                                                                                                                  §§goto(addr232);
                                                                                                               }
                                                                                                               §§goto(addr219);
                                                                                                            }
                                                                                                            §§goto(addr283);
                                                                                                         }
                                                                                                         §§goto(addr182);
                                                                                                      }
                                                                                                      continue loop42;
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                                continue loop41;
                                                                                             }
                                                                                             continue loop41;
                                                                                          }
                                                                                          §§goto(addr337);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                   }
                                                }
                                                §§goto(addr332);
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
                  §§goto(addr46);
               }
            }
         }
         §§goto(addr363);
      }
      
      protected function §-!@§(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§;!i§ = param1;
            loop0:
            while(true)
            {
               this.§7!V§ = param2;
               loop1:
               while(true)
               {
                  §§push(this.§7!V§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§@L§);
                     if(_loc4_)
                     {
                        §§push(0.45);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                        }
                        addr136:
                     }
                     addr137:
                     loop4:
                     while(true)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(_loc4_)
                           {
                              this.§&n§ = true;
                           }
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 this.§>!=§ = true;
                                 if(!_loc3_)
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(true);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             if(_loc3_ && this)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                      addr124:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop6;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§#f§();
                                                            loop9:
                                                            while(!_loc3_)
                                                            {
                                                               this.§&n§ = false;
                                                               while(true)
                                                               {
                                                                  if(_loc3_ && this)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(!(_loc3_ && param2))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr125:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop6;
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      addr107:
                                                   }
                                                   §§goto(addr125);
                                                }
                                                addr122:
                                             }
                                             §§goto(addr107);
                                          }
                                          §§goto(addr124);
                                          addr92:
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr45);
                              }
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§push(this.§&n§);
                           if(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        §§goto(addr122);
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      protected function §#f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §>D§.§9!q§("SlingshotStreched");
         }
      }
      
      protected function applyGravity(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§]!B§);
            if(_loc2_)
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§push(§§pop() * Math.cos(this.§8M§ + Math.PI / 2));
                  if(_loc2_)
                  {
                     addr49:
                     §§push(§§pop() + §§pop());
                     §§push(this.§9=§);
                     if(!_loc2_)
                     {
                     }
                     addr91:
                     §§pop().setPosition(§§pop(),§§pop(),this.§8M§);
                     return;
                     addr89:
                  }
                  §§push(param1);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() * Math.sin(this.§8M§ + Math.PI / 2));
                     if(_loc2_ || this)
                     {
                        §§goto(addr89);
                        §§push(§§pop() + §§pop());
                     }
                  }
               }
               §§goto(addr91);
            }
         }
         §§goto(addr49);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() - this.§]!B§);
            if(!_loc8_)
            {
               addr24:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc8_)
            {
               this.§]!B§ = param1;
            }
            §§push(param2);
            if(!_loc8_)
            {
               §§push(§§pop() - this.§9=§);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            if(!(_loc8_ && param2))
            {
               this.§9=§ = param2;
               loop0:
               while(true)
               {
                  this.§8M§ = param3;
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§"Q§);
                     if(!(_loc8_ && this))
                     {
                        §§push(§§pop() + _loc6_);
                     }
                     §§pop().§"Q§ = §§pop();
                     loop2:
                     while(!(_loc8_ && param1))
                     {
                        §§push(this);
                        §§push(this.§7W§);
                        if(_loc7_)
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§7W§ = §§pop();
                        loop3:
                        for(; !_loc8_; while(_loc7_ || param2)
                        {
                           if(!_loc7_)
                           {
                              continue loop2;
                           }
                           while(true)
                           {
                              §§goto(addr53);
                           }
                        })
                        {
                           if(!param4)
                           {
                              do
                              {
                                 this.§>!=§ = true;
                                 if(!(_loc7_ || param1))
                                 {
                                    continue loop3;
                                 }
                              }
                              while(!(_loc7_ || param2));
                              
                              return;
                              addr53:
                           }
                           while(true)
                           {
                              this.§6!M§(0);
                              continue loop3;
                              §§goto(addr64);
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr97);
         }
         §§goto(addr24);
      }
      
      protected function §6!7§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§@Q§);
         if(_loc2_ || _loc2_)
         {
            return §§pop() / this.§@L§;
         }
      }
      
      public function §>"!§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§&#§ = this.§&]§[this.§">§];
         §§push(this.§6!7§());
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc2_)
            {
               if(_loc5_ || _loc3_)
               {
                  §§push(_loc2_.§+!4§);
                  if(_loc5_ || _loc1_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_ || _loc2_)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr82);
                     }
                  }
                  §§goto(addr85);
               }
            }
         }
         addr82:
         §§push(_loc1_);
         if(!_loc4_)
         {
            addr85:
            return §§pop() * _loc3_;
         }
      }
      
      public function §['§() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&#§ = null;
         if(_loc2_ || _loc2_)
         {
            if(this.§&]§.length > this.§">§)
            {
               if(_loc2_ || _loc1_)
               {
                  addr49:
                  _loc1_ = this.§&]§[this.§">§];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr49);
      }
      
      public function §-!9§() : Point
      {
         return new Point(this.§7W§,this.§"Q§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§&#§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_ || this)
         {
            this.§[R§(param1);
            loop0:
            while(true)
            {
               if(this.§>!=§)
               {
                  loop1:
                  while(true)
                  {
                     this.§6!M§(param1);
                     addr113:
                     addr50:
                     while(true)
                     {
                     }
                     if(!(_loc7_ && _loc3_))
                     {
                        loop8:
                        while(true)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 if(this.§="'§ < 0)
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       addr71:
                                       if(_loc7_ && this)
                                       {
                                          continue loop0;
                                       }
                                       this.§="'§ = 0;
                                    }
                                    while(!(_loc7_ && param2))
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          break loop8;
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                                 while(true)
                                 {
                                    if(this.mSlingShotState != §%!T§)
                                    {
                                       this.§2y§(param1,param2);
                                       break;
                                    }
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§goto(addr38);
                                 }
                                 §§goto(addr50);
                              }
                              continue loop1;
                              addr59:
                           }
                           _loc3_ = null;
                           if(!(_loc7_ && this))
                           {
                              if(this.§&]§.length > 0)
                              {
                                 if(!_loc7_)
                                 {
                                    _loc3_ = this.§&]§[this.§">§];
                                    addr142:
                                    if(_loc3_)
                                    {
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          _loc3_.§<h§(param1);
                                          if(_loc6_)
                                          {
                                             addr474:
                                             if(_loc3_)
                                             {
                                                §§push(this.mSlingShotState);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§97§);
                                                   addr453:
                                                   addr454:
                                                   while(§§pop() != §§pop())
                                                   {
                                                      §§push(this.mSlingShotState);
                                                      continue loop10;
                                                   }
                                                   addr454:
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr479:
                                                         break loop8;
                                                         addr479:
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr476);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr458);
                                          }
                                          §§goto(addr418);
                                       }
                                       §§goto(addr440);
                                    }
                                    §§goto(addr474);
                                 }
                                 §§goto(addr476);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr479);
                        }
                        return;
                        addr57:
                     }
                  }
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§="'§);
                  if(_loc6_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§="'§ = §§pop();
                  continue loop0;
                  §§goto(addr113);
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §8S§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§&#§ = null;
         if(!(_loc6_ && param2))
         {
            if(this.§&]§.length > 0)
            {
               if(_loc7_)
               {
                  _loc5_ = this.§&]§[this.§">§];
                  addr51:
                  if(!_loc5_)
                  {
                     if(_loc7_ || param3)
                     {
                        return;
                     }
                     return;
                     addr80:
                  }
                  §§goto(addr80);
               }
               _loc5_.setPosition(param1,param2,180 - this.§;!i§);
               do
               {
                  this.§,"1§(param3,param4);
               }
               while(!(_loc7_ || param1));
               
               §§goto(addr80);
            }
            §§goto(addr51);
         }
         §§goto(addr80);
      }
      
      protected function §?!k§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!2§ = false;
         }
         var _loc1_:§&#§ = null;
         if(_loc2_ || _loc2_)
         {
            if(this.§&]§.length > this.§">§)
            {
               if(!(_loc3_ && _loc1_))
               {
                  _loc1_ = this.§&]§[this.§">§];
                  addr51:
                  if(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr55);
                     }
                     else
                     {
                        while(true)
                        {
                           this.§5!$§();
                           loop1:
                           for(; _loc2_ || _loc2_; if(_loc3_ && this)
                           {
                              continue;
                           },if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr63);
                           },§§goto(addr165))
                           {
                              while(true)
                              {
                                 if(this.§">§ < this.§&]§.length)
                                 {
                                    this.§,V§(§97§);
                                    loop5:
                                    while(true)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          addr119:
                                          while(true)
                                          {
                                             this.§,V§(§%!T§);
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             break loop5;
                                          }
                                          while(true)
                                          {
                                             dispatchEvent(new Event(§=!f§));
                                             if(!_loc3_)
                                             {
                                                return;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       addr146:
                                       addr165:
                                       this.§!`§.§?!k§(_loc1_,this.§>V§,this.§;!i§);
                                       while(true)
                                       {
                                          this.§%!R§(this.§">§,_loc1_.§,!P§ > 0);
                                          break loop1;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr146);
                                    }
                                    addr171:
                                 }
                                 §§goto(addr119);
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     this.§6!d§ = new Date().time;
                  }
                  §§goto(addr171);
               }
               addr55:
               return;
            }
            §§goto(addr51);
         }
         §§goto(addr135);
      }
      
      protected function §[R§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            §§push(this.§,!"§);
            if(_loc5_)
            {
               §§push(0);
               loop0:
               while(§§pop() > §§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§>!=§ = true;
                     addr95:
                     loop7:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§,!"§);
                           if(_loc5_ || this)
                           {
                              §§push(§§pop() - param1);
                           }
                           §§pop().§,!"§ = §§pop();
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 continue loop7;
                              }
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§push(this.§,!"§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(0);
                                 if(_loc5_ || this)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    if(§§pop() <= §§pop())
                                    {
                                       continue;
                                    }
                                    addr117:
                                    addr104:
                                    addr117:
                                    §§push(this.§,!"§);
                                    if(!(_loc4_ && this))
                                    {
                                       addr113:
                                       §§push(§;!,§);
                                    }
                                    var _loc2_:Number = §§pop();
                                    §§push(this.§69§);
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(§§pop() * Math.cos(_loc2_ * Math.PI * 8));
                                       if(_loc5_)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(_loc2_);
                                                if(_loc5_)
                                                {
                                                   addr163:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc4_ && this))
                                                   {
                                                      addr171:
                                                      §§push(_loc2_);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc4_ && this))
                                                         {
                                                            addr182:
                                                            §§push(_loc2_);
                                                            if(!_loc4_)
                                                            {
                                                               addr185:
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  addr188:
                                                                  §§push(_loc2_);
                                                                  if(!_loc5_)
                                                                  {
                                                                  }
                                                                  addr195:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     addr198:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc3_:* = §§pop();
                                                                  if(!_loc4_)
                                                                  {
                                                                     this.§-!@§(this.§;!i§,_loc3_);
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        if(this.§,!"§ != 0)
                                                                        {
                                                                           loop5:
                                                                           while(this.§>!2§)
                                                                           {
                                                                              addr211:
                                                                              if(_loc5_)
                                                                              {
                                                                                 this.§?!k§();
                                                                              }
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr221:
                                                                              while(!_loc4_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§goto(addr211);
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           this.§,!"§ = -1;
                                                                        }
                                                                        continue;
                                                                        return;
                                                                     }
                                                                  }
                                                                  §§goto(addr223);
                                                               }
                                                               addr194:
                                                               §§goto(addr195);
                                                               §§push(_loc2_);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr194);
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                }
                                                §§goto(addr188);
                                             }
                                             §§goto(addr171);
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§push(§§pop() / §§pop());
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr113);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr117);
         }
         §§goto(addr95);
      }
      
      public function §,"1§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§>V§ = param1;
         }
         loop0:
         while(true)
         {
            this.§;!i§ = param2;
            loop1:
            while(true)
            {
               this.§,!"§ = §;!,§;
               addr88:
               while(_loc3_)
               {
                  this.§69§ = this.§7!V§;
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      protected function §5!$§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!(_loc3_ && _loc1_))
         {
            §>D§.§9!q§("BirdShot" + _loc1_);
         }
      }
      
      public function §2y§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§">§);
         if(_loc5_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc4_ >= this.§&]§.length)
            {
               if(!(_loc6_ && param2))
               {
                  break;
               }
            }
            else
            {
               this.§&]§[_loc4_].update(param1,this.mSlingShotState == §1_§,param2);
               while(true)
               {
                  _loc4_++;
               }
               addr87:
            }
            while(!_loc5_)
            {
               §§goto(addr87);
            }
         }
      }
      
      public function § e§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&#§ = null;
         if(_loc2_)
         {
            if(this.§">§ < this.§&]§.length)
            {
               _loc1_ = this.§&]§[this.§">§];
               addr37:
               if(_loc2_)
               {
                  return _loc1_.name;
               }
            }
            return null;
         }
         §§goto(addr37);
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§&#§ = null;
         var _loc2_:* = 0;
         if(!(_loc6_ && _loc3_))
         {
            this.mDragging = false;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§#!+§();
               while(true)
               {
                  if(_loc5_)
                  {
                     if(this.§,R§ < this.§&]§.length)
                     {
                        break;
                     }
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc5_)
                        {
                           return false;
                        }
                        continue;
                     }
                     if(true)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
               _loc1_ = this.§&]§[this.§,R§];
               if(!_loc6_)
               {
                  _loc1_.§=+§(-1,true);
               }
               addr88:
               §§push(this.§!`§.levelItemManager.§1!e§(_loc1_.name).score);
               if(_loc5_)
               {
                  §§push(int(§§pop()));
               }
               _loc2_ = §§pop();
               if(!(_loc6_ && _loc3_))
               {
                  if(_loc5_)
                  {
                     this.§^A§(_loc1_,_loc2_);
                     if(_loc5_)
                     {
                        if(false)
                        {
                           §§goto(addr88);
                        }
                        var _loc3_:*;
                        §§push((_loc3_ = this).§,R§);
                        if(_loc5_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(!(_loc6_ && this))
                        {
                           _loc3_.§,R§ = _loc4_;
                        }
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr88);
               }
               addr145:
               return true;
            }
         }
      }
      
      protected function §^A§(param1:§&#§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§!`§);
            §§push(param2);
            §§push(§52§.§[1§);
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
                  §§push(§`""§.§?!7§(param1.name));
               }
               §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
               §§goto(addr64);
            }
            §§goto(addr59);
         }
         addr64:
      }
      
      public function §=U§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&#§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§&]§)
         {
            if(!_loc5_)
            {
               §§push(_loc1_);
               if(!(_loc5_ && _loc1_))
               {
                  §§push(int(§§pop() + this.§!`§.levelItemManager.§1!e§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §=!s§() : int
      {
         return this.§`!T§;
      }
      
      protected function §^!K§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         var _loc1_:int = 1000;
         §§push(Math.cos(this.§8M§ + Math.PI / 2) * this.§5#§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(Math.sin(this.§8M§ + Math.PI / 2) * this.§5#§);
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(this.§!`§.objects);
            §§push(this.§7W§);
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(_loc5_ || this)
               {
                  addr144:
                  §§push(§§pop() + §§pop());
                  §§push(this.§"Q§);
                  if(_loc5_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
               }
               §§push(§§pop().§?!_§(§§pop(),§§pop()));
               loop1:
               while(true)
               {
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     addr163:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(-1);
                           addr165:
                           while(§§pop() == §§pop())
                           {
                              this.applyGravity(0.1);
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                                 addr101:
                                 if(!_loc6_)
                                 {
                                    addr104:
                                    if(§§pop() <= 0)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              if(!(_loc5_ || _loc3_))
                              {
                                 break;
                              }
                              return;
                           }
                           §§goto(addr114);
                        }
                     }
                  }
               }
            }
            §§goto(addr144);
         }
      }
      
      public function §4!J§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§&%§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc4_ || param2)
               {
                  §§push(-§§pop());
               }
               addr80:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
            addr61:
         }
         while(true)
         {
            §§push(this.§&%§);
            if(_loc4_ || this)
            {
               §§push(param2);
               if(_loc4_)
               {
                  if(!_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  else
                  {
                     §§goto(addr80);
                  }
               }
               §§pop().y = §§pop();
               if(_loc4_)
               {
                  break;
               }
               continue;
            }
            §§goto(addr61);
            §§goto(addr80);
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.mSlingShotState == §'!i§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              §§push(true);
                              break;
                           }
                           addr94:
                           while(true)
                           {
                              §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                              if(!_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop0;
                           }
                           addr94:
                        }
                        §§goto(addr94);
                     }
                     §§push(false);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  return §§pop();
                  addr63:
               }
               while(true)
               {
                  §§pop();
               }
            }
         }
         §§goto(addr94);
      }
      
      public function get canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.mSlingShotState == §'!i§);
            loop0:
            while(true)
            {
               §§push(§§pop());
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
                           §§push(this.§6!7§());
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() >= §^&§);
                              addr91:
                              loop8:
                              while(true)
                              {
                                 §§push(this.§,!"§);
                                 if(!(_loc1_ || this))
                                 {
                                    continue loop4;
                                 }
                                 addr34:
                                 §§push(§§pop() < 0);
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr53:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop2;
                                       }
                                       addr72:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§pop();
                                                if(!_loc1_)
                                                {
                                                   break;
                                                }
                                                continue loop8;
                                             }
                                             continue loop0;
                                             §§goto(addr34);
                                          }
                                          continue loop3;
                                          addr76:
                                       }
                                       §§goto(addr53);
                                    }
                                    continue loop1;
                                    return §§pop();
                                 }
                                 §§goto(addr76);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr72);
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.mDragging = false;
            if(!_loc2_)
            {
               addr39:
               this.§,V§(§'!i§);
            }
            var _loc1_:§&#§ = this.§&]§[this.§">§];
            if(_loc3_)
            {
               _loc1_.§=+§(§89§.§8N§);
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            this.mDragging = true;
         }
         var _loc1_:§&#§ = this.§&]§[this.§">§];
         if(!(_loc2_ && this))
         {
            _loc1_.§=+§(§89§.§ v§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§^;§ = true;
         }
      }
      
      protected function §%!R§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§&#§ = null;
         if(_loc5_ || param2)
         {
            if(param1 < 0)
            {
               if(!_loc4_)
               {
                  return;
               }
               addr42:
               _loc3_ = this.§&]§[param1];
               if(_loc5_ || _loc3_)
               {
                  this.§-w§.removeChild(_loc3_.sprite);
               }
               loop0:
               while(true)
               {
                  if(param2)
                  {
                     if(_loc5_)
                     {
                        this.§4!u§(this.§&]§[param1]);
                     }
                     loop1:
                     while(true)
                     {
                        addr79:
                        while(true)
                        {
                           if(!(_loc4_ && this))
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  addr76:
                  while(true)
                  {
                     _loc3_.dispose();
                     §§goto(addr79);
                  }
               }
            }
            else if(this.§&]§[param1])
            {
               if(_loc5_)
               {
                  §§goto(addr42);
               }
               §§goto(addr127);
            }
         }
         §§goto(addr122);
      }
      
      protected function §4!u§(param1:§&#§) : void
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
               if(_loc10_ || _loc2_)
               {
                  if(_loc10_ || _loc3_)
                  {
                     if(!_loc9_)
                     {
                        §§push(this.§!`§);
                        if(!_loc9_)
                        {
                           §§push(§§pop().particles);
                           if(_loc10_)
                           {
                              §§push(§`""§.§-!0§);
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(§"w§.§,§);
                                 if(!(_loc9_ && this))
                                 {
                                    §§push(§`""§.§@b§);
                                    if(!_loc9_)
                                    {
                                       §§push(param1.x);
                                       if(_loc10_ || this)
                                       {
                                          §§push(param1.y);
                                          if(!_loc9_)
                                          {
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §§push(1000);
                                                if(_loc10_)
                                                {
                                                   §§push("");
                                                   if(_loc10_)
                                                   {
                                                      §§push(0);
                                                      if(_loc10_)
                                                      {
                                                         §§pop().§9!@§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                         addr125:
                                                         if(!_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§!`§);
                                                            addr136:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().particles);
                                                               addr137:
                                                               while(true)
                                                               {
                                                                  §§push(§`""§.§-J§);
                                                                  addr139:
                                                                  while(true)
                                                                  {
                                                                     §§push(§"w§.§,§);
                                                                     addr141:
                                                                     while(true)
                                                                     {
                                                                        §§push(§`""§.§@b§);
                                                                        addr143:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.x);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr151:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.y);
                                                                                    addr153:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + _loc8_);
                                                                                       addr155:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(1500);
                                                                                          addr156:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push("");
                                                                                             addr157:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§`""§.§6!X§(param1.name));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr151:
                                                                              }
                                                                              §§goto(addr155);
                                                                           }
                                                                           §§goto(addr151);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr325:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc10_ || this)
                                                         {
                                                            §§push(§§pop() * Math.cos(_loc6_));
                                                         }
                                                         §§push(_loc2_);
                                                         if(_loc10_ || this)
                                                         {
                                                            §§push(-§§pop());
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() * Math.sin(_loc6_));
                                                            }
                                                         }
                                                         §§push(5);
                                                         §§push(_loc2_);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() * 20);
                                                         }
                                                         §§pop().§9!@§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                         addr195:
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               _loc5_++;
                                                               while(true)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.sprite);
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        §§push(-§§pop().height);
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(_loc10_ || _loc2_)
                                                                           {
                                                                              §§push(§#=§.§^!2§);
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc9_ && _loc2_))
                                                                                          {
                                                                                             addr258:
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                addr266:
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      if(_loc10_ || this)
                                                                                                      {
                                                                                                         §§push(Math.random() * -_loc8_);
                                                                                                         if(_loc10_ || param1)
                                                                                                         {
                                                                                                            addr295:
                                                                                                            §§push(2);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr299:
                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  addr307:
                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        addr317:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(!(_loc9_ && this))
                                                                                                                        {
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           §§goto(addr325);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr419:
                                                                                                                           while(!(_loc9_ && this))
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 continue loop12;
                                                                                                                                 §§goto(addr307);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              break loop12;
                                                                                                                           }
                                                                                                                           addr357:
                                                                                                                           addr419:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     loop8:
                                                                                                                     while(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Math.random() * -_loc7_);
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(2);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr356:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr355:
                                                                                                                                    }
                                                                                                                                    §§goto(addr356);
                                                                                                                                 }
                                                                                                                                 addr347:
                                                                                                                              }
                                                                                                                              §§goto(addr357);
                                                                                                                           }
                                                                                                                           addr417:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              addr418:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr419);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr266);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc10_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              break loop8;
                                                                                                                           }
                                                                                                                           §§goto(addr418);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc10_ || this)
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr417);
                                                                                                                              }
                                                                                                                              addr413:
                                                                                                                           }
                                                                                                                           §§goto(addr419);
                                                                                                                        }
                                                                                                                        §§goto(addr417);
                                                                                                                     }
                                                                                                                     addr337:
                                                                                                                  }
                                                                                                                  §§goto(addr365);
                                                                                                               }
                                                                                                               §§goto(addr317);
                                                                                                            }
                                                                                                            §§goto(addr355);
                                                                                                         }
                                                                                                         §§goto(addr299);
                                                                                                      }
                                                                                                      §§goto(addr317);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr336:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr337);
                                                                                                      }
                                                                                                   }
                                                                                                   addr335:
                                                                                                }
                                                                                                §§goto(addr340);
                                                                                             }
                                                                                             §§goto(addr295);
                                                                                          }
                                                                                          §§goto(addr317);
                                                                                       }
                                                                                       §§goto(addr336);
                                                                                    }
                                                                                    §§goto(addr258);
                                                                                 }
                                                                                 §§goto(addr356);
                                                                              }
                                                                              §§goto(addr299);
                                                                           }
                                                                           §§goto(addr418);
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     addr329:
                                                                     while(true)
                                                                     {
                                                                        §§push(-§§pop().width);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§goto(addr335);
                                                                           §§push(§#=§.§^!2§);
                                                                        }
                                                                        §§goto(addr347);
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                               }
                                                               addr130:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr329);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr156);
                                             }
                                             §§goto(addr153);
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr130);
               }
               §§goto(addr125);
            }
            else
            {
               §§push(_loc4_);
               if(_loc10_ || param1)
               {
                  §§goto(addr383);
                  §§push(Math.random() * (720 / _loc3_));
               }
            }
            §§goto(addr413);
         }
      }
      
      public function removeObject(param1:§&#§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§%!R§(this.§&]§.indexOf(param1));
         }
      }
      
      public function §`#§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§&#§ = null;
         if(!(_loc3_ && _loc2_))
         {
            this.§&]§.sort(this.§0!>§);
         }
         loop0:
         while(true)
         {
            §§push(this.§-w§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§-w§);
               if(_loc4_)
               {
                  continue loop0;
               }
            }
            addr57:
            var _loc2_:int = 0;
            if(!_loc3_)
            {
               while(_loc2_ < this.§&]§.length)
               {
                  _loc1_ = this.§&]§[_loc2_];
                  if(!_loc3_)
                  {
                     this.§-w§.addChildAt(_loc1_.sprite,0);
                     if(!(_loc4_ || _loc3_))
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
      
      private function §0!>§(param1:§&#§, param2:§&#§) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1.launchIndex);
            if(!_loc3_)
            {
               §§push(param2.launchIndex);
               loop0:
               while(§§pop() >= §§pop())
               {
                  while(true)
                  {
                     §§push(param1.launchIndex);
                     if(!_loc4_)
                     {
                        addr91:
                        break;
                     }
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                     §§push(param2.launchIndex);
                     if(!_loc3_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc4_ || this)
                           {
                              break;
                           }
                           if(!(_loc4_ || param2))
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              break loop0;
                           }
                           addr72:
                        }
                        §§push(0);
                        if(!(_loc3_ && param2))
                        {
                           return §§pop();
                        }
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
               }
               §§push(-1);
            }
            §§goto(addr91);
         }
         §§goto(addr72);
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §&#§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= this.§&]§.length)
            {
               if(_loc4_)
               {
                  return null;
               }
               loop1:
               while(!(_loc4_ || _loc3_))
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(this.§&]§[_loc3_])
            {
               if(_loc4_)
               {
                  if(this.§&]§[_loc3_].isInCoordinates(param1,param2))
                  {
                     break;
                  }
                  §§goto(addr31);
               }
               break;
            }
            §§goto(addr31);
         }
         while(!(_loc5_ && param1));
         
         return this.§&]§[_loc3_];
      }
      
      public function §-!P§(param1:Number, param2:Number) : §0"§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§]!B§);
               if(_loc3_)
               {
                  §§push(this.§@L§);
                  while(true)
                  {
                     §§push(4);
                     addr234:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr235:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                        }
                     }
                  }
                  addr233:
               }
               loop4:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  loop5:
                  while(true)
                  {
                     §§push(§§pop());
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
                                 §§push(param1);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§]!B§);
                                    addr189:
                                    while(true)
                                    {
                                       §§push(this.§@L§);
                                       loop11:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(4);
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                addr195:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr196:
                                                   while(_loc3_ || param1)
                                                   {
                                                      §§push(§§pop() <= §§pop());
                                                   }
                                                   continue loop4;
                                                }
                                                addr149:
                                                §§push(4);
                                                if(!(_loc4_ && this))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break loop11;
                                                      addr160:
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                   loop22:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr161:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            if(_loc3_ || param2)
                                                            {
                                                               break loop22;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  addr125:
                                                                  while(_loc3_)
                                                                  {
                                                                     §§push(this.§9=§);
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§@L§);
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!(_loc3_ || this))
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§goto(addr149);
                                                                        }
                                                                        §§goto(addr235);
                                                                     }
                                                                     §§goto(addr195);
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                            continue loop8;
                                                            addr207:
                                                         }
                                                         addr183:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr184:
                                                            while(true)
                                                            {
                                                               §§push(this.§9=§);
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr125);
                                                         }
                                                      }
                                                   }
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc4_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  return this;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  §§goto(addr215);
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            return null;
                                                            addr90:
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      addr206:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop19;
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr233);
                                          }
                                       }
                                       §§goto(addr234);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           while(true)
                           {
                              §§goto(addr206);
                              addr76:
                              §§push(§§pop());
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              }
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue loop5;
                              }
                              §§goto(addr90);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr215);
      }
      
      public function §'!%§(param1:§5L§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§&#§ = null;
         var _loc4_:§ i§ = null;
         if(!(_loc6_ && this))
         {
            param1.slingshotX = this.§]!B§;
            if(!_loc6_)
            {
               addr35:
               param1.slingshotY = this.§9=§;
            }
            var _loc2_:* = Number(0);
            loop0:
            while(_loc2_ < this.§&]§.length)
            {
               _loc3_ = this.§&]§[_loc2_];
               (_loc4_ = new § i§()).x = _loc3_.x;
               if(!(_loc6_ && _loc2_))
               {
                  _loc4_.y = _loc3_.y;
                  while(true)
                  {
                     _loc4_.type = _loc3_.name;
                     loop2:
                     for(; !(_loc6_ && _loc2_); loop4:
                     while(_loc5_ || param1)
                     {
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + 1);
                              if(!_loc6_)
                              {
                                 addr83:
                                 §§push(Number(§§pop()));
                              }
                              _loc2_ = §§pop();
                              if(!_loc5_)
                              {
                                 continue loop4;
                              }
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr83);
                        }
                        continue loop0;
                     })
                     {
                        while(true)
                        {
                           param1.§'"&§(_loc4_);
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr100);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §5A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§&]§.length > 0)
         {
            this.removeObject(this.§&]§[0]);
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      public function §?y§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(_loc6_ || param2)
               {
                  if(§§pop() >= this.§&]§.length)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§]!B§);
                        addr176:
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
                                    while(true)
                                    {
                                       §§pop();
                                       addr182:
                                       while(true)
                                       {
                                          §§push(this.§]!B§);
                                          addr138:
                                          while(true)
                                          {
                                             §§push(§§pop() < param2.x);
                                          }
                                       }
                                    }
                                    addr181:
                                 }
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop10:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop11:
                                             while(!_loc5_)
                                             {
                                                §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_ || param2)
                                                         {
                                                            §§push(this.§9=§);
                                                            loop13:
                                                            for(; _loc6_; §§push(this.§9=§),if(_loc5_)
                                                            {
                                                               continue;
                                                            },if(_loc6_)
                                                            {
                                                               if(_loc5_ && param1)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§push(§§pop() < param2.y);
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     §§goto(addr58);
                                                                  }
                                                                  §§goto(addr181);
                                                               }
                                                               §§goto(addr124);
                                                            },§§goto(addr138))
                                                            {
                                                               §§push(§§pop() > param1.y);
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           addr124:
                                                                           while(_loc6_ || param2)
                                                                           {
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    _loc3_.push(this.§&]§[_loc4_]);
                                                                                    §§push(_loc4_);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr228:
                                                                                    addr222:
                                                                                 }
                                                                                 continue loop13;
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    addr193:
                                                                                    §§push(Number(§§pop() + 1));
                                                                                    break loop13;
                                                                                 }
                                                                                 break loop13;
                                                                                 addr67:
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop11;
                                                                           addr124:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr58:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc5_ && param2))
                                                                              {
                                                                                 §§goto(addr67);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr84:
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    §§goto(addr25);
                                                                                 }
                                                                              }
                                                                              §§goto(addr228);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop10;
                                                                     addr25:
                                                                     return _loc3_;
                                                                  }
                                                                  continue loop4;
                                                                  addr117:
                                                               }
                                                               §§goto(addr124);
                                                            }
                                                            _loc4_ = §§pop();
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§goto(addr182);
                                                }
                                                continue loop0;
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr117);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  else if(this.§&]§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr222);
                  }
                  §§goto(addr228);
               }
               §§goto(addr193);
            }
            §§goto(addr176);
         }
      }
      
      public function §]!K§(param1:String, param2:Number, param3:Number, param4:Number) : §&#§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§&#§ = this.§5`§(param1,param2,param3,param4);
         if(_loc7_ || param3)
         {
            this.§>!e§();
         }
         return _loc5_;
      }
      
      public function §0a§() : int
      {
         return this.§&]§.length;
      }
      
      public function §&Y§() : int
      {
         return this.§0"3§;
      }
      
      public function §>!e§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§&]§.sort(this.§3j§);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§&]§.length)
            {
               if(_loc3_)
               {
                  if(_loc3_ || _loc3_)
                  {
                     this.§">§ = 0;
                  }
                  else
                  {
                     _loc1_++;
                     continue;
                     addr88:
                  }
               }
               if(!_loc2_)
               {
                  break;
               }
               continue;
            }
            this.§&]§[_loc1_].launchIndex = _loc1_;
            §§goto(addr88);
         }
      }
      
      private function §3j§(param1:§&#§, param2:§&#§) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Number = Math.pow(param1.x - this.§]!B§,2) + Math.pow(param1.y - this.§9=§,2);
         var _loc4_:Number = Math.pow(param2.x - this.§]!B§,2) + Math.pow(param2.y - this.§9=§,2);
         §§push(_loc3_);
         if(!(_loc6_ && param2))
         {
            return §§pop() - _loc4_;
         }
      }
   }
}
