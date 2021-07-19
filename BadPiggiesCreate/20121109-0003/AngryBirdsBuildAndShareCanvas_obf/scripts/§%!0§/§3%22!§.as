package §%!0§
{
   import §#";§.§0"#§;
   import §+!-§.§4!O§;
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §0!%§.Texture;
   import §6]§.§,"0§;
   import §;"7§.§"!B§;
   import §;"7§.§+!I§;
   import §<i§.§'!e§;
   import §[!P§.§-2§;
   import §]";§.§!<§;
   import §]";§.§34§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3"!§
   {
      
      public static const §`!C§:int = 0;
      
      public static const §7!x§:int = 1;
      
      public static const §'!f§:int = 2;
      
      public static const §3"4§:int = 3;
      
      public static const §`!s§:int = 5;
      
      public static const §"$§:int = 3151368;
      
      protected static const §]!5§:int = 8;
      
      protected static const §"!o§:int = 0;
      
      public static const §^X§:Number = 46.25;
      
      public static const §&S§:Number = 52.5;
      
      protected static const §3""§:Number = -0.7;
      
      protected static const §@!d§:Number = 0;
      
      protected static var §?,§:Texture;
      
      public static const §!+§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!C§ = 0;
            loop0:
            while(true)
            {
               §7!x§ = 1;
               while(true)
               {
                  §'!f§ = 2;
                  loop2:
                  while(true)
                  {
                     §3"4§ = 3;
                     addr142:
                     while(true)
                     {
                        §`!s§ = 5;
                        while(true)
                        {
                           §"$§ = 3151368;
                           while(_loc2_ || _loc1_)
                           {
                              §]!5§ = 8;
                              while(_loc2_ || _loc1_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
                  §§goto(addr67);
               }
            }
         }
         §§goto(addr96);
      }
      
      public var §`!G§:§,4§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §5"2§:Number;
      
      protected var §!O§:Number;
      
      protected var §>L§:Number;
      
      protected var §^!i§:Number;
      
      protected var §@%§:Number;
      
      public var §?!g§:Number;
      
      public var §4Y§:Boolean = false;
      
      protected var §6O§:Number;
      
      public var mBirds:Vector.<§%Q§>;
      
      public var §,";§:int;
      
      public var §'!C§:int;
      
      public var §3R§:Number;
      
      public var §,!]§:Sprite;
      
      public var §?!F§:int = 0;
      
      public var §!P§:Number = 0;
      
      public var §0K§:Array;
      
      public var §,"4§:Array;
      
      public var mSlingShotState:int;
      
      public var §#l§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §9!M§:Boolean = false;
      
      public var §?U§:Number;
      
      protected var §[!!§:Boolean = false;
      
      protected var § D§:Sprite;
      
      protected var §<<§:§4!O§;
      
      protected var §!!Q§:§4!O§;
      
      protected var §0c§:Sprite;
      
      protected var §#!i§:Sprite;
      
      protected var § L§:Sprite;
      
      protected var § !_§:§7"#§;
      
      protected var §]G§:§7"#§;
      
      private var §-!Z§:Number = 0;
      
      private var §=!J§:int = 0;
      
      protected var §!!P§:Number = -0.7;
      
      protected var §!!L§:Number = 0;
      
      public function §3"!§(param1:§,4§, param2:§'!e§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§-2§ = null;
         if(!_loc7_)
         {
            this.mBirds = new Vector.<§%Q§>();
            while(true)
            {
               super();
               loop2:
               while(_loc6_ || param3)
               {
                  this.§ D§ = param3;
                  loop3:
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        continue loop2;
                     }
                     if(!param2)
                     {
                        §,"0§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                        break;
                     }
                     loop4:
                     while(true)
                     {
                        this.setPosition(param2.§!M§,param2.§finally§);
                        loop5:
                        while(!_loc7_)
                        {
                           while(true)
                           {
                              this.§8![§();
                              while(_loc6_)
                              {
                                 _loc4_ = 0;
                                 if(_loc6_)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop5;
                              addr36:
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(false)
                              {
                                 continue;
                              }
                              addr113:
                              if(_loc4_ < param2.§@!;§)
                              {
                                 _loc5_ = param2.§+,§(_loc4_);
                                 if(!(_loc7_ && param3))
                                 {
                                    this.§<f§(_loc5_.id,_loc5_.x,_loc5_.y);
                                    if(!_loc7_)
                                    {
                                       _loc4_++;
                                    }
                                 }
                                 §§goto(addr113);
                              }
                              if(_loc6_ || param3)
                              {
                                 this.§=!J§ = this.§'i§();
                                 if(_loc6_ || param3)
                                 {
                                    this.§,";§ = 0;
                                    addr314:
                                    if(this.mBirds.length <= 0)
                                    {
                                       addr275:
                                       §§push(§,"0§);
                                       §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() + " ");
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(§§pop() + this.mY);
                                          }
                                       }
                                       §§pop().log(§§pop());
                                       this.setSlingShotState(§3"4§);
                                       addr310:
                                       if(!(_loc7_ && param1))
                                       {
                                          addr227:
                                          this.§?U§ = 0;
                                          this.§2X§();
                                          this.update(0,true);
                                          addr237:
                                          addr231:
                                          if(!(_loc7_ && param3))
                                          {
                                             if(!(_loc7_ && param1))
                                             {
                                                this.§=t§();
                                                addr186:
                                                if(_loc6_ || this)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         this.§6!t§(0);
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  if(!(_loc6_ || param2))
                                                                  {
                                                                     §§goto(addr310);
                                                                  }
                                                                  return;
                                                                  addr182:
                                                               }
                                                               addr249:
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§goto(addr237);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                            addr236:
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   break loop3;
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr231);
                                          }
                                          addr226:
                                          §§goto(addr226);
                                       }
                                       §§goto(addr275);
                                    }
                                    this.setSlingShotState(§`!C§);
                                    §§goto(addr249);
                                 }
                                 break loop3;
                              }
                              §§goto(addr182);
                           }
                           continue loop3;
                        }
                        addr80:
                        while(true)
                        {
                           this.§`!G§ = param1;
                           continue loop2;
                        }
                     }
                  }
                  this.setSlingShotState(§3"4§);
                  §§goto(addr236);
               }
            }
         }
         §§goto(addr80);
      }
      
      public function get sprite() : Sprite
      {
         return this.§ D§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§-!Z§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§,";§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            if(this.mBirds.length <= 0)
            {
               while(_loc1_)
               {
                  this.mBirds = null;
                  loop2:
                  while(true)
                  {
                     §§push(this.§ D§);
                     if(!(_loc2_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§ D§);
                              addr88:
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr89:
                                 loop7:
                                 while(true)
                                 {
                                    this.§ D§ = null;
                                    addr72:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          break loop7;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 addr74:
                              }
                           }
                        }
                        while(true)
                        {
                           this.§,!]§ = null;
                           addr43:
                           while(_loc1_ || _loc1_)
                           {
                              continue loop2;
                           }
                           §§goto(addr72);
                           §§goto(addr74);
                        }
                     }
                     §§goto(addr88);
                  }
               }
            }
            else
            {
               this.§26§(0);
            }
         }
      }
      
      public function §!K§(param1:String, param2:Number, param3:Number, param4:int = -1) : §%Q§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§%Q§;
         (_loc5_ = this.§<f§(param1,param2,param3,param4)).§=!h§();
         if(_loc7_)
         {
            this.setSlingShotState(§'!f§);
         }
         return _loc5_;
      }
      
      protected function §<f§(param1:String, param2:Number, param3:Number, param4:int = -1) : §%Q§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§%Q§ = new §%Q§(this,new Sprite(),param1,param2,param3);
         if(_loc7_ || param3)
         {
            if(param4 >= 0)
            {
               this.mBirds.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  if(_loc6_)
                  {
                     while(true)
                     {
                        continue loop0;
                     }
                     continue;
                     addr100:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               this.mBirds.push(_loc5_);
               §§goto(addr100);
            }
         }
         §§goto(addr92);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§`!C§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     while(true)
                     {
                        §§push(§7!x§);
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           loop5:
                           for(; _loc3_; while(true)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop5;
                              addr163:
                              §§push(this.mSlingShotState);
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              addr173:
                              §§push(§`!s§);
                              if(_loc2_ && this)
                              {
                                 while(§§pop() != §§pop())
                                 {
                                    §§goto(addr163);
                                    §§goto(addr173);
                                 }
                                 §§goto(addr246);
                                 addr245:
                              }
                              if(_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr186);
                                 }
                                 §§goto(addr24);
                              }
                              else
                              {
                                 §§goto(addr275);
                              }
                           },continue loop1)
                           {
                              §§push(§'!f§);
                              while(true)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       break;
                                    }
                                    §§push(this.mSlingShotState);
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                              addr283:
                              this.§3R§ = 10000;
                              loop17:
                              while(true)
                              {
                                 this.§9!M§ = false;
                                 loop18:
                                 while(true)
                                 {
                                    this.§[!z§();
                                    loop19:
                                    while(true)
                                    {
                                       addr24:
                                       addr50:
                                       loop13:
                                       while(true)
                                       {
                                          this.mDragging = false;
                                          if(_loc2_ && param1)
                                          {
                                             break;
                                          }
                                          if(_loc2_ && _loc3_)
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop13;
                                                }
                                                addr115:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         if(!(_loc3_ || this))
                                                         {
                                                            break loop2;
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop19;
                                                   }
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         continue loop13;
                                                      }
                                                      addr246:
                                                      addr248:
                                                      this.§[!z§();
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            continue loop17;
                                                         }
                                                         continue loop18;
                                                      }
                                                   }
                                                   continue loop18;
                                                }
                                             }
                                             continue loop19;
                                          }
                                          if(!_loc2_)
                                          {
                                             return;
                                          }
                                          §§goto(addr283);
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   addr301:
                                                   addr186:
                                                   while(!_loc2_)
                                                   {
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         continue loop0;
                                                      }
                                                      loop12:
                                                      while(true)
                                                      {
                                                         continue loop10;
                                                         addr324:
                                                         while(true)
                                                         {
                                                            this.§3R§ = 1000;
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.§3R§ = 0;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break loop4;
                                                      }
                                                      this.mDragging = false;
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            this.§9!M§ = false;
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     this.§[!z§();
                                                                     §§goto(addr115);
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  addr291:
                                                               }
                                                            }
                                                            addr141:
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                   }
                                                   addr205:
                                                }
                                                §§goto(addr291);
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr141);
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop3;
                        }
                        while(true)
                        {
                           this.§[!z§();
                           §§goto(addr301);
                        }
                     }
                  }
                  this.§[!z§();
                  §§goto(addr324);
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  §§goto(addr245);
                  §§push(§3"4§);
               }
            }
         }
         while(true)
         {
            if(!this.mDragging)
            {
               this.§[!z§();
               §§goto(addr50);
            }
            §§goto(addr205);
            §§goto(addr195);
         }
      }
      
      public function get §0z§() : §,4§
      {
         return this.§`!G§;
      }
      
      public function §,@§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.mSlingShotState == §3"4§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§pop();
                     addr65:
                     return this.§3R§ <= 0;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §8![§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§"!B§ = this.§,!Z§();
         var _loc2_:§+!I§ = _loc1_.getFrame(0);
         var _loc3_:§+!I§ = _loc1_.getFrame(1);
         if(!_loc5_)
         {
            this.§ !_§ = new §7"#§(_loc2_.texture);
            while(true)
            {
               §§push(this.§ !_§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr265:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
               if(_loc5_)
               {
                  continue;
               }
               §§goto(addr84);
               §§push(this.§ D§);
            }
         }
         §§goto(addr80);
      }
      
      protected function §,!Z§() : §"!B§
      {
         return this.§`!G§.§00§.§`" §("SLINGSHOT");
      }
      
      public function §>!Z§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc2_ || _loc1_)
         {
            this.§!O§ = this.mX;
            loop0:
            while(true)
            {
               addr53:
               while(true)
               {
                  this.§>L§ = this.mY;
                  continue loop0;
               }
            }
            addr73:
         }
         while(true)
         {
            this.§6O§ = §,g§.§!!+§;
            if(!_loc2_)
            {
               continue;
            }
            if(!_loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr73);
            }
            §§goto(addr53);
         }
         _loc1_ = null;
      }
      
      protected function §;!5§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(_loc4_ || this)
         {
            if(!§?,§)
            {
               if(!_loc3_)
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(!(_loc3_ && _loc2_))
                  {
                     §?,§ = this.§`!G§.§8=§.§%N§(_loc2_);
                  }
               }
               addr57:
               var _loc1_:§7"#§ = new §7"#§(§?,§);
               if(_loc4_ || _loc2_)
               {
                  _loc1_.rotation = Math.PI;
                  while(true)
                  {
                     _loc1_.x = _loc1_.width / 2;
                     loop1:
                     while(!_loc3_)
                     {
                        _loc1_.y = _loc1_.height / 2;
                        loop2:
                        while(true)
                        {
                           this.§ L§.addChild(_loc1_);
                           while(true)
                           {
                              this.§0c§ = new Sprite();
                              addr89:
                              if(_loc4_ || this)
                              {
                                 return;
                                 addr106:
                              }
                           }
                           addr139:
                           if(!(_loc4_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           this.§#!i§ = new Sprite();
                           loop7:
                           do
                           {
                              this.§!!Q§ = new §4!O§(2,2,§"$§);
                              loop8:
                              for(; _loc4_; this.§#!i§.addChild(this.§!!Q§),if(_loc4_)
                              {
                                 continue loop7;
                              })
                              {
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 addr157:
                                 while(true)
                                 {
                                    this.§0c§.addChild(this.§<<§);
                                    break loop8;
                                 }
                              }
                              loop6:
                              while(true)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§goto(addr139);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§<<§ = new §4!O§(2,2,§"$§);
                                       §§goto(addr157);
                                       continue loop6;
                                    }
                                    §§goto(addr106);
                                    addr163:
                                 }
                              }
                              continue loop2;
                           }
                           while(!(_loc4_ || _loc2_));
                           
                           §§goto(addr89);
                        }
                     }
                  }
               }
               §§goto(addr163);
            }
            this.§ L§ = new Sprite();
         }
         §§goto(addr57);
      }
      
      public function §6!t§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§@%§);
         if(_loc7_)
         {
            §§push(§§pop() / §,4§.§,^§);
            if(_loc7_ || _loc3_)
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§^!i§);
            if(_loc7_ || _loc2_)
            {
               §§push(§§pop() / §,4§.§,^§);
               if(_loc7_)
               {
                  addr47:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(3.5);
               if(_loc7_ || this)
               {
                  §§push(8);
                  §§push(this.§6O§);
                  if(!_loc6_)
                  {
                     §§push(this.§?!g§);
                     if(_loc7_)
                     {
                        addr77:
                        §§push(§§pop() - §§pop());
                        if(_loc7_ || _loc2_)
                        {
                           §§push(this.§6O§);
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(!(_loc6_ && param1))
                        {
                           addr86:
                           §§push(Number(§§pop()));
                        }
                        var _loc4_:* = §§pop();
                        if(_loc7_ || _loc2_)
                        {
                           §§push(this.§ L§);
                           loop0:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr540:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 addr541:
                                 while(true)
                                 {
                                    §§push(this.§ L§);
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        §§goto(addr173);
                     }
                     §§push(§§pop() / §§pop());
                  }
                  §§goto(addr77);
               }
               §§goto(addr86);
            }
            §§goto(addr47);
         }
         §§goto(addr31);
      }
      
      public function §7!_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            if(this.mBirds.length <= 0)
            {
               if(!_loc1_)
               {
                  this.§+!p§();
               }
               while(!_loc1_)
               {
                  this.§<f§("BIRD_SARDINE",this.mX,this.mY);
                  do
                  {
                     this.setSlingShotState(§'!f§);
                  }
                  while(_loc1_);
                  
                  if(!_loc1_)
                  {
                     return;
                  }
               }
            }
            else
            {
               this.§26§(0,true);
            }
         }
      }
      
      protected function §+!p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §0"#§.§9"2§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.setSlingShotState(§`!s§);
         }
      }
      
      public function §[!z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this);
            §§push(this.§!O§);
            §§push(this.§>L§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.§6O§);
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
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function §1!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §0"#§.§9"2§("SlingshotStreched");
         }
      }
      
      public function §1!?§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this);
            §§push(this.mX);
            §§push(this.mY);
            if(_loc3_)
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
         if(!_loc7_)
         {
            §§push(§§pop() - this.mX);
            if(_loc6_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            this.mX = param1;
         }
         §§push(param2);
         if(!(_loc7_ && param2))
         {
            §§push(§§pop() - this.mY);
            if(!_loc7_)
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!(_loc7_ && this))
            {
               this.mY = param2;
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§5"2§);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§5"2§ = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§>L§);
                     if(_loc6_ || param3)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§>L§ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§@%§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§@%§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§!O§);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + _loc4_);
                           }
                           §§pop().§!O§ = §§pop();
                           loop4:
                           do
                           {
                              §§push(this);
                              §§push(this.§^!i§);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + _loc4_);
                              }
                              §§pop().§^!i§ = §§pop();
                              while(true)
                              {
                                 if(param3)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    addr111:
                                    while(_loc6_)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    continue loop1;
                                    addr111:
                                 }
                                 while(true)
                                 {
                                    this.§#l§ = true;
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§goto(addr111);
                                 }
                                 if(_loc6_ || param2)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           while(_loc7_);
                           
                           return;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               this.§6!t§(0);
               §§goto(addr111);
            }
         }
         §§goto(addr49);
      }
      
      public function §@!Y§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§%Q§ = null;
         _loc2_ = this.mBirds[this.§,";§];
         §§push(this.§?!g§);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop() / this.§6O§);
            if(_loc5_ || _loc2_)
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               if(_loc2_ != null)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     addr73:
                     if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                     {
                        if(_loc5_)
                        {
                           addr80:
                           §§push(§3"!§.§&S§);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(Number(§§pop()));
                              if(!_loc5_)
                              {
                              }
                              addr110:
                              §§push(Number(§§pop()));
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr118:
                                 _loc1_ = §§pop();
                                 §§goto(addr119);
                              }
                           }
                           §§goto(addr137);
                        }
                        addr119:
                        §§push(_loc1_);
                        if(_loc5_ || this)
                        {
                           addr137:
                           return §§pop() * _loc3_;
                        }
                     }
                     §§push(§3"!§.§^X§);
                     if(_loc5_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr110);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr80);
               }
               §§goto(addr118);
            }
            §§goto(addr73);
         }
         §§goto(addr49);
      }
      
      public function §]5§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§%Q§ = null;
         if(!_loc2_)
         {
            if(this.mBirds.length <= this.§,";§)
            {
               return null;
            }
            if(_loc3_)
            {
               _loc1_ = this.mBirds[this.§,";§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §5!s§() : Point
      {
         return new Point(this.§!O§,this.§>L§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§%Q§ = null;
         if(!_loc5_)
         {
            this.§3u§(param1);
            loop0:
            while(true)
            {
               if(this.§#l§)
               {
                  while(true)
                  {
                     this.§6!t§(param1);
                     addr104:
                     while(true)
                     {
                     }
                  }
                  addr101:
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§3R§);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§3R§ = §§pop();
                  loop3:
                  for(; _loc4_ || param1; while(_loc4_ || this)
                  {
                     continue loop0;
                  })
                  {
                     do
                     {
                        if(this.§3R§ < 0)
                        {
                           continue loop3;
                        }
                        loop7:
                        while(true)
                        {
                           if(this.mSlingShotState == §3"4§)
                           {
                              if(!(_loc5_ && param2))
                              {
                                 if(_loc4_ || param1)
                                 {
                                    §§goto(addr370);
                                 }
                                 continue loop3;
                              }
                           }
                           else
                           {
                              this.§#!&§(param1,param2);
                           }
                           addr46:
                           if(!(_loc5_ && param1))
                           {
                              break;
                           }
                           addr77:
                           while(!_loc5_)
                           {
                              continue loop7;
                              §§goto(addr46);
                           }
                           §§goto(addr101);
                        }
                     }
                     while(false);
                     
                     _loc3_ = null;
                     if(!(_loc5_ && param2))
                     {
                        if(this.mBirds.length > 0)
                        {
                           if(!(_loc5_ && param1))
                           {
                              _loc3_ = this.mBirds[this.§,";§];
                              addr138:
                              if(_loc3_)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    _loc3_.§"#§(param1);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       addr364:
                                       if(_loc3_)
                                       {
                                          addr345:
                                          if(this.mSlingShotState != §`!C§)
                                          {
                                             addr303:
                                             §§push(this.mSlingShotState);
                                             if(_loc4_ || param2)
                                             {
                                                addr311:
                                                if(§§pop() != §7!x§)
                                                {
                                                   §§push(this.mSlingShotState);
                                                   if(_loc4_ || param1)
                                                   {
                                                      §§push(§'!f§);
                                                      if(!_loc5_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr345);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc4_ || param2)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  §§push(this.§^!i§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(_loc3_.radius);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop() * Math.cos(this.§!P§ / (180 / Math.PI)));
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           addr270:
                                                                           §§push(§§pop() - §§pop());
                                                                           §§push(this.§@%§);
                                                                           if(_loc4_ || param2)
                                                                           {
                                                                              §§push(_loc3_.radius);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop() * Math.sin(this.§!P§ / (180 / Math.PI)));
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                     §§pop().setPosition(§§pop(),§§pop());
                                                                     addr295:
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this.§9!M§);
                                                                        if(_loc4_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr173:
                                                                                    §§push(this);
                                                                                    §§push(this.§?!g§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(this.§6O§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr193:
                                                                                          §§push(§§pop() / §§pop());
                                                                                          §§push(this.§!P§);
                                                                                       }
                                                                                       §§pop().§7",§(§§pop(),§§pop());
                                                                                       addr196:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr295);
                                                                                       }
                                                                                       if(!(_loc5_ && param2))
                                                                                       {
                                                                                          if(_loc4_ || param2)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   addr216:
                                                                                                }
                                                                                                §§goto(addr370);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc3_.§`!Q§();
                                                                                                addr363:
                                                                                             }
                                                                                             §§goto(addr370);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr317:
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                this.setSlingShotState(§'!f§);
                                                                                                addr327:
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr216);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   this.setSlingShotState(§7!x§);
                                                                                                   addr350:
                                                                                                   §§goto(addr363);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr298:
                                                                                          §§goto(addr370);
                                                                                       }
                                                                                       §§goto(addr327);
                                                                                    }
                                                                                    §§goto(addr193);
                                                                                 }
                                                                                 addr366:
                                                                                 this.setSlingShotState(§3"4§);
                                                                                 addr370:
                                                                                 return;
                                                                                 addr369:
                                                                              }
                                                                              §§goto(addr196);
                                                                           }
                                                                           §§goto(addr370);
                                                                        }
                                                                        addr316:
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr317);
                                                                        }
                                                                        §§goto(addr216);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  §§goto(addr270);
                                                               }
                                                               else
                                                               {
                                                                  addr346:
                                                                  if(this.§3R§ <= 0)
                                                                  {
                                                                     §§goto(addr350);
                                                                  }
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                         §§goto(addr370);
                                                      }
                                                      §§goto(addr311);
                                                   }
                                                   §§goto(addr303);
                                                }
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr316);
                                                   §§push(_loc3_.§'&§);
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr345);
                                          }
                                          §§goto(addr346);
                                       }
                                       addr157:
                                    }
                                 }
                                 §§goto(addr366);
                              }
                              §§goto(addr364);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr104);
               }
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               this.§3R§ = 0;
               §§goto(addr77);
            }
         }
         §§goto(addr104);
      }
      
      public function §'q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§%Q§ = null;
         if(_loc7_)
         {
            if(this.mBirds.length > 0)
            {
               if(_loc7_ || this)
               {
                  _loc5_ = this.mBirds[this.§,";§];
                  §§goto(addr51);
               }
               §§goto(addr91);
            }
            addr51:
            if(!_loc5_)
            {
               if(!(_loc6_ && this))
               {
                  §§goto(addr60);
               }
            }
            else
            {
               addr91:
               _loc5_.setPosition(param1,param2);
               do
               {
                  this.§7",§(param3,param4);
               }
               while(_loc6_ && this);
               
            }
            return;
         }
         addr60:
      }
      
      protected function §7",§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§%Q§ = null;
         if(!(_loc5_ && param2))
         {
            this.§!!P§ = §3""§;
            if(_loc4_ || _loc3_)
            {
               this.§!!L§ = §@!d§;
               if(_loc4_)
               {
                  if(this.mBirds.length > 0)
                  {
                     if(_loc4_)
                     {
                        _loc3_ = this.mBirds[this.§,";§];
                        addr55:
                        if(!_loc3_)
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr59);
                           }
                        }
                        else
                        {
                           this.mDragging = false;
                        }
                        loop4:
                        while(true)
                        {
                           this.§9!M§ = false;
                           addr174:
                           loop6:
                           while(true)
                           {
                              this.§-!Z§ = new Date().time;
                              addr169:
                              while(true)
                              {
                                 this.§`!G§.§59§(_loc3_,param1,param2);
                                 addr152:
                                 while(true)
                                 {
                                    this.§26§(this.§,";§,_loc3_.§`#§ > 0);
                                    addr142:
                                    addr144:
                                    while(_loc5_)
                                    {
                                       continue loop4;
                                    }
                                    while(true)
                                    {
                                       this.§%!k§();
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(this.§,";§ < this.mBirds.length)
                        {
                           this.setSlingShotState(§`!C§);
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              addr95:
                              if(!(_loc4_ || param2))
                              {
                                 continue;
                              }
                              if(_loc4_ || this)
                              {
                                 this.setSlingShotState(§3"4§);
                              }
                              §§goto(addr174);
                           }
                           if(!(_loc5_ && param1))
                           {
                              if(!_loc5_)
                              {
                                 if(_loc4_ || param2)
                                 {
                                    break;
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr95);
                     }
                     return;
                  }
                  §§goto(addr55);
               }
               §§goto(addr144);
            }
            §§goto(addr174);
         }
         addr59:
      }
      
      protected function §%!k§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!_loc2_)
         {
            §0"#§.§9"2§("BirdShot" + _loc1_);
         }
      }
      
      public function §#!&§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§,";§);
         if(_loc6_ || param1)
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
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(§§pop() >= this.mBirds.length)
               {
                  if(_loc6_ || param1)
                  {
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           addr99:
                           while(true)
                           {
                              this.mBirds[_loc4_].update(param1,true,param2);
                              continue loop1;
                           }
                        }
                     }
                     else
                     {
                        addr82:
                     }
                     while(true)
                     {
                        _loc4_++;
                     }
                     addr66:
                  }
                  while(!_loc6_)
                  {
                     §§goto(addr99);
                  }
                  continue;
               }
               addr87:
               if(this.mSlingShotState == §`!s§)
               {
                  §§goto(addr99);
               }
               else
               {
                  this.mBirds[_loc4_].update(param1,false,param2);
                  §§goto(addr82);
               }
               §§goto(addr82);
            }
            §§goto(addr87);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§%Q§ = null;
         var _loc2_:* = 0;
         if(!(_loc6_ && _loc2_))
         {
            this.mDragging = false;
            loop0:
            do
            {
               loop1:
               while(true)
               {
                  this.§[!z§();
                  loop2:
                  while(this.§'!C§ >= this.mBirds.length)
                  {
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && this))
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     addr49:
                     while(true)
                     {
                        if(true)
                        {
                           break loop2;
                        }
                        continue loop1;
                     }
                  }
                  _loc1_ = this.mBirds[this.§'!C§];
                  if(!(_loc6_ && _loc1_))
                  {
                     §§push(§!<§.§[!@§(_loc1_.name).score);
                     if(_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§`!G§);
                        §§push(_loc2_);
                        §§push(§3!s§.§8!#§);
                        §§push(true);
                        §§push(_loc1_.x);
                        §§push(_loc1_.y);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(3);
                           if(!_loc6_)
                           {
                              addr115:
                              §§push(§§pop() - §§pop());
                              §§push(§`!E§.§6!%§(_loc1_.name));
                           }
                           §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                           if(!(_loc5_ || _loc1_))
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              _loc1_.§5"7§(-1,true);
                              if(_loc5_)
                              {
                                 if(true)
                                 {
                                    var _loc3_:*;
                                    §§push((_loc3_ = this).§'!C§);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc4_:* = §§pop();
                                 }
                                 continue;
                                 if(!_loc6_)
                                 {
                                    _loc3_.§'!C§ = _loc4_;
                                 }
                                 break;
                              }
                              break;
                           }
                           continue loop4;
                        }
                        §§goto(addr115);
                     }
                     return true;
                  }
               }
            }
            while(!_loc5_);
            
            return false;
         }
         §§goto(addr49);
      }
      
      public function §'i§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§%Q§ = null;
         var _loc1_:* = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            if(_loc6_ || _loc1_)
            {
               §§push(_loc1_);
               if(_loc6_ || _loc3_)
               {
                  §§push(int(§§pop() + §!<§.§[!@§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §9C§() : int
      {
         return this.§=!J§;
      }
      
      public function §3u§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_ || param1)
         {
            §§push(this.§?U§);
            loop0:
            while(true)
            {
               §§push(0);
               addr207:
               loop1:
               while(§§pop() >= §§pop())
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§?U§);
                     if(_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§?U§ = §§pop();
                     continue loop0;
                     addr119:
                     if(_loc4_ || this)
                     {
                        break loop1;
                     }
                  }
               }
               §§goto(addr27);
            }
            addr206:
         }
         while(true)
         {
            §§push(this.§?U§);
            if(_loc4_ || this)
            {
               §§push(0);
               if(!(_loc3_ && this))
               {
                  if(§§pop() <= §§pop())
                  {
                     while(true)
                     {
                        §§push(this.§`!G§);
                        while(true)
                        {
                           §§push(§§pop().objects);
                           while(true)
                           {
                              §§push(§§pop().§&A§(this.§!O§,this.§5"2§));
                              loop7:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc3_ && param1)
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop7;
                                       }
                                       if(§§pop() >= 0)
                                       {
                                          §§push(this.§`!G§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop().objects);
                                             addr133:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr134:
                                                while(true)
                                                {
                                                   §§push(§§pop().getObject(§§pop()));
                                                   addr135:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§5"$§);
                                                      addr136:
                                                      addr137:
                                                      addr140:
                                                      while(§§pop())
                                                      {
                                                         continue loop10;
                                                      }
                                                      this.§?U§ = -1;
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr27);
                                                      }
                                                      else
                                                      {
                                                         addr27:
                                                         return;
                                                         addr147:
                                                      }
                                                      §§goto(addr27);
                                                   }
                                                }
                                             }
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
                  §§goto(addr27);
               }
               else
               {
                  §§goto(addr207);
               }
            }
            else
            {
               §§goto(addr206);
            }
            §§goto(addr207);
            if(_loc3_ && _loc2_)
            {
               continue;
            }
            this.§1!?§(0.1);
            §§goto(addr173);
         }
      }
      
      public function §=t§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         loop0:
         while(true)
         {
            §§push(this.§`!G§.objects.§&A§(this.§!O§,this.§5"2§));
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
                     while(true)
                     {
                        §§push(-1);
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(!_loc4_)
                              {
                                 while(true)
                                 {
                                    this.§?U§ = -1;
                                    §§goto(addr77);
                                 }
                                 addr73:
                              }
                           }
                           else
                           {
                              this.§1!?§(0.1);
                           }
                           while(true)
                           {
                              if(_loc3_ || this)
                              {
                                 §§push(_loc1_);
                                 if(_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 if(!(_loc3_ || _loc1_))
                                 {
                                    continue loop2;
                                 }
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc3_ || _loc3_)
                                    {
                                       _loc1_ = §§pop();
                                       continue loop4;
                                    }
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                              }
                              continue loop3;
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr73);
                                 }
                                 addr77:
                              }
                              continue loop0;
                              while(!(_loc3_ || this))
                              {
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §6"1§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§ D§);
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
         if(!_loc3_)
         {
            §§push(this.mSlingShotState == §'!f§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr99:
                     while(true)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        addr60:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  addr98:
               }
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              §§push(true);
                              break loop5;
                           }
                           addr65:
                        }
                        else if(_loc3_ && _loc2_)
                        {
                           §§goto(addr99);
                        }
                     }
                     §§push(false);
                     if(!_loc2_)
                     {
                        break;
                     }
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           break loop4;
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr60);
                  }
                  continue loop0;
               }
               return §§pop();
            }
            return §§pop();
         }
         §§goto(addr65);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.mSlingShotState == §'!f§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§pop();
                     addr55:
                     §§push(this.§?!g§);
                     §§push(this.§6O§);
                     if(_loc2_)
                     {
                        §§push(§§pop() * §!+§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mDragging = false;
            if(_loc3_ || _loc3_)
            {
               addr39:
               this.setSlingShotState(§'!f§);
            }
            var _loc1_:§%Q§ = this.mBirds[this.§,";§];
            if(_loc3_)
            {
               _loc1_.§5"7§(§34§.§ c§);
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mDragging = true;
         }
         var _loc1_:§%Q§ = this.mBirds[this.§,";§];
         if(_loc2_ || this)
         {
            _loc1_.§5"7§(§34§.§'!`§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9!M§ = true;
         }
      }
      
      protected function §26§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§%Q§ = null;
         if(_loc4_ || this)
         {
            if(param1 < 0)
            {
               if(_loc4_)
               {
                  §§goto(addr31);
               }
               else
               {
                  addr46:
                  _loc3_ = this.mBirds[param1];
                  if(!(_loc5_ && this))
                  {
                     this.§,!]§.removeChild(_loc3_.sprite);
                     loop0:
                     while(true)
                     {
                        if(!param2)
                        {
                           loop2:
                           while(true)
                           {
                              _loc3_.dispose();
                              while(!_loc5_)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    this.mBirds[param1] = null;
                                    if(_loc4_)
                                    {
                                       if(true)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                           }
                           this.mBirds.splice(param1,1);
                        }
                        else
                        {
                           addr80:
                           addr126:
                        }
                        continue;
                        return;
                     }
                  }
                  while(true)
                  {
                     §§goto(addr80);
                  }
               }
            }
            else if(this.mBirds[param1])
            {
               if(!_loc5_)
               {
                  §§goto(addr46);
               }
               §§goto(addr80);
            }
            §§goto(addr126);
         }
         addr31:
      }
      
      public function §>q§(param1:§%Q§) : void
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
               if(_loc9_)
               {
                  if(!_loc10_)
                  {
                     if(_loc9_ || this)
                     {
                        §§push(this.§`!G§);
                        if(!(_loc10_ && this))
                        {
                           §§push(§§pop().particles);
                           if(!(_loc10_ && _loc2_))
                           {
                              §§push(§`!E§.§5!p§);
                              if(!(_loc10_ && this))
                              {
                                 §§push(§6!Q§.§+f§);
                                 if(_loc9_ || this)
                                 {
                                    §§push(§`!E§.§]W§);
                                    if(_loc9_)
                                    {
                                       §§push(param1.x);
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§push(param1.y);
                                          if(_loc9_)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(1000);
                                                if(!_loc10_)
                                                {
                                                   §§push("");
                                                   if(!(_loc10_ && this))
                                                   {
                                                      §§push(0);
                                                      if(!_loc10_)
                                                      {
                                                         §§pop().§'p§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                         addr129:
                                                         if(_loc10_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         loop32:
                                                         while(true)
                                                         {
                                                            §§push(param1.sprite);
                                                            loop29:
                                                            while(true)
                                                            {
                                                               §§push(-§§pop().width);
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(§,4§.§,^§);
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr405:
                                                                              while(true)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 addr406:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Math.random() * -_loc7_);
                                                                                    addr411:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(2);
                                                                                       addr412:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr413:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr404:
                                                                        }
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr415:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                              addr429:
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr430:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    continue loop19;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr417:
                                                                        _loc7_ = §§pop();
                                                                        addr414:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.sprite);
                                                                           if(!_loc9_)
                                                                           {
                                                                              continue loop29;
                                                                           }
                                                                           §§push(-§§pop().height);
                                                                           if(!(_loc10_ && _loc3_))
                                                                           {
                                                                              §§push(§,4§.§,^§);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc9_ || _loc2_)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc9_ || _loc2_)
                                                                                          {
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr289:
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc9_ || this)
                                                                                                   {
                                                                                                      if(!(_loc10_ && this))
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(_loc9_ || this)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(Math.random() * -_loc8_);
                                                                                                                        if(!(_loc10_ && this))
                                                                                                                        {
                                                                                                                           addr337:
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              §§push(2);
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 addr343:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc10_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          addr363:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc9_ || this)
                                                                                                                                          {
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             addr422:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Math.random() * (720 / _loc3_));
                                                                                                                                                addr428:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr414);
                                                                                                                                          }
                                                                                                                                          §§goto(addr429);
                                                                                                                                       }
                                                                                                                                       §§goto(addr415);
                                                                                                                                    }
                                                                                                                                    §§goto(addr363);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr411);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr412);
                                                                                                                           }
                                                                                                                           §§goto(addr413);
                                                                                                                        }
                                                                                                                        §§goto(addr343);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(180 / Math.PI);
                                                                                                                        addr446:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           addr447:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr442:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     continue loop32;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr406);
                                                                                                               }
                                                                                                               §§goto(addr411);
                                                                                                            }
                                                                                                            §§goto(addr363);
                                                                                                         }
                                                                                                         §§goto(addr446);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr405);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr343);
                                                                                                }
                                                                                                §§goto(addr363);
                                                                                             }
                                                                                             §§goto(addr430);
                                                                                          }
                                                                                          §§goto(addr447);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr404);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr363);
                                                                                 }
                                                                                 §§goto(addr428);
                                                                              }
                                                                              §§goto(addr337);
                                                                           }
                                                                           §§goto(addr289);
                                                                           §§goto(addr417);
                                                                        }
                                                                        addr414:
                                                                        _loc8_ = §§pop();
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§`!G§);
                                                                           addr150:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().particles);
                                                                              addr151:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§`!E§.§@!1§);
                                                                                 addr153:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§6!Q§.§+f§);
                                                                                    addr155:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§`!E§.§]W§);
                                                                                       addr157:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.x);
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                addr168:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.y);
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      addr179:
                                                                                                      §§push(§§pop() + _loc8_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(1500);
                                                                                                         addr180:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push("");
                                                                                                            addr181:
                                                                                                            loop2:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§`!E§.§]!I§(param1.name));
                                                                                                               addr185:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * Math.cos(_loc6_));
                                                                                                                  }
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                     if(_loc9_ || param1)
                                                                                                                     {
                                                                                                                        addr203:
                                                                                                                        §§push(§§pop() * Math.sin(_loc6_));
                                                                                                                     }
                                                                                                                     §§push(5);
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(!(_loc10_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * 20);
                                                                                                                     }
                                                                                                                     §§pop().§'p§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                     while(!(_loc9_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     _loc5_++;
                                                                                                                     continue loop0;
                                                                                                                     addr229:
                                                                                                                  }
                                                                                                                  §§goto(addr203);
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr179:
                                                                                                   }
                                                                                                   §§goto(addr179);
                                                                                                }
                                                                                             }
                                                                                             addr167:
                                                                                          }
                                                                                          §§goto(addr168);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr418:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        §§goto(addr442);
                                                                     }
                                                                  }
                                                                  §§goto(addr405);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr418);
                  }
                  §§goto(addr229);
               }
               §§goto(addr129);
            }
            else
            {
               §§push(_loc4_);
            }
            §§goto(addr422);
         }
      }
      
      public function removeObject(param1:§%Q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§26§(this.mBirds.indexOf(param1));
         }
      }
      
      public function §2X§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§%Q§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§%Q§ = null;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc7_)
            {
               if(§§pop() >= this.mBirds.length - 1)
               {
                  if(_loc6_)
                  {
                     addr232:
                     if(this.§,!]§.numChildren > 0)
                     {
                        §§push(this.§,!]§);
                        if(!_loc7_)
                        {
                           §§pop().removeChildAt(0);
                           if(!_loc7_)
                           {
                              §§goto(addr232);
                           }
                           §§goto(addr294);
                        }
                        §§goto(addr232);
                     }
                     addr222:
                     if(_loc6_)
                     {
                        addr239:
                        §§push(0);
                        if(!(_loc7_ && _loc2_))
                        {
                           break;
                        }
                        addr290:
                        if(§§pop() < this.mBirds.length)
                        {
                           _loc2_ = this.mBirds[_loc1_];
                           if(!(_loc7_ && this))
                           {
                              this.§,!]§.addChildAt(_loc2_.sprite,0);
                              if(!(_loc7_ && this))
                              {
                                 addr288:
                                 _loc1_++;
                              }
                              while(true)
                              {
                                 §§goto(addr290);
                              }
                              addr289:
                           }
                           §§goto(addr288);
                        }
                     }
                     addr294:
                     return;
                     addr222:
                  }
                  §§goto(addr239);
               }
               else
               {
                  §§push(Number(Math.sqrt((this.mX - this.mBirds[_loc1_].x) * (this.mX - this.mBirds[_loc1_].x) + (this.mY - this.mBirds[_loc1_].y) * (this.mY - this.mBirds[_loc1_].y))));
                  if(_loc6_ || _loc2_)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc7_ && this))
                     {
                        §§push(Number(Math.sqrt((this.mX - this.mBirds[_loc1_ + 1].x) * (this.mX - this.mBirds[_loc1_ + 1].x) + (this.mY - this.mBirds[_loc1_ + 1].y) * (this.mY - this.mBirds[_loc1_ + 1].y))));
                        if(_loc6_ || this)
                        {
                           §§push(§§pop());
                           if(_loc6_ || this)
                           {
                              _loc4_ = §§pop();
                              addr155:
                              §§push(_loc3_);
                           }
                           if(§§pop() < §§pop())
                           {
                              if(_loc6_ || _loc1_)
                              {
                                 _loc5_ = this.mBirds[_loc1_];
                                 if(_loc6_)
                                 {
                                    this.mBirds.splice(_loc1_,1);
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.mBirds.splice(_loc1_ + 1,0,_loc5_);
                                       while(_loc6_)
                                       {
                                          _loc1_ = int(Math.max(-1,_loc1_ - 2));
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             if(true)
                                             {
                                                break loop2;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    addr209:
                                    _loc1_++;
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr222);
                                 }
                              }
                              §§goto(addr239);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr294);
                  }
                  §§goto(addr155);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(!_loc7_)
         {
            §§goto(addr289);
         }
         §§goto(addr294);
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §%Q§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.mBirds.length)
            {
               if(!_loc4_)
               {
                  if(!(_loc4_ && this))
                  {
                     return null;
                  }
               }
               loop2:
               while(true)
               {
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  addr58:
                  if(_loc5_ || this)
                  {
                     break;
                  }
                  addr73:
                  while(!this.mBirds[_loc3_].isInCoordinates(param1,param2))
                  {
                     continue loop2;
                     §§goto(addr58);
                  }
               }
               continue;
               return this.mBirds[_loc3_];
            }
            if(this.mBirds[_loc3_])
            {
               §§goto(addr73);
            }
            §§goto(addr49);
         }
      }
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §3"!§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.mX);
               loop1:
               while(true)
               {
                  §§push(this.§6O§);
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
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr243:
                                          while(true)
                                          {
                                             §§push(param1);
                                             addr171:
                                             while(true)
                                             {
                                                §§push(this.mX);
                                                if(_loc3_ || this)
                                                {
                                                   §§push(this.§6O§);
                                                   while(true)
                                                   {
                                                      §§push(4);
                                                      addr183:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                         while(true)
                                                         {
                                                            if(_loc4_ && param1)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                   }
                                                   addr182:
                                                }
                                                addr194:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                }
                                             }
                                          }
                                       }
                                       addr242:
                                    }
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop11:
                                          while(_loc3_ || param2)
                                          {
                                             if(!§§pop())
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc3_ || param2))
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr168:
                                                            while(true)
                                                            {
                                                               §§push(this.mY);
                                                               if(_loc4_ && this)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§5"2§);
                                                               if(_loc3_)
                                                               {
                                                                  addr40:
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  addr105:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ && param2)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(this.§6O§);
                                                                     if(_loc3_ || param2)
                                                                     {
                                                                        §§push(4);
                                                                        if(_loc3_)
                                                                        {
                                                                           addr135:
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§goto(addr182);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr183);
                                                                     }
                                                                     §§goto(addr135);
                                                                     §§goto(addr40);
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               else
                                                               {
                                                                  while(_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop() >= §§pop());
                                                                        continue loop17;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  addr152:
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                            §§goto(addr171);
                                                         }
                                                      }
                                                      §§goto(addr78);
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                             §§goto(addr205);
                                          }
                                          continue loop7;
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
         §§goto(addr243);
      }
      
      public function writeSlingshotInformation(param1:§'!e§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§%Q§ = null;
         var _loc4_:§-2§ = null;
         if(!_loc5_)
         {
            param1.§!M§ = this.mX;
            if(!(_loc5_ && _loc2_))
            {
               addr36:
               param1.§finally§ = this.mY;
            }
            var _loc2_:* = Number(0);
            while(_loc2_ < this.mBirds.length)
            {
               _loc3_ = this.mBirds[_loc2_];
               (_loc4_ = new §-2§()).x = _loc3_.x;
               if(!(_loc5_ && _loc2_))
               {
                  _loc4_.y = _loc3_.y;
                  loop1:
                  while(true)
                  {
                     _loc4_.id = _loc3_.name;
                     addr109:
                     while(true)
                     {
                        addr92:
                        while(true)
                        {
                           param1.§=o§(_loc4_);
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc6_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc2_ = §§pop();
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr96);
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §`!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
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
            while(!(_loc5_ && param2))
            {
               if(§§pop() >= this.mBirds.length)
               {
                  loop2:
                  while(!_loc5_)
                  {
                     §§push(this.mX);
                     loop3:
                     for(; !(_loc5_ && _loc3_); while(_loc6_ || this)
                     {
                        §§goto(addr165);
                        §§push(§§pop() < param2.x);
                        §§goto(addr76);
                     })
                     {
                        if(!_loc5_)
                        {
                           §§push(§§pop() > param1.x);
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(this.mY);
                                                      addr76:
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc5_ && param2)
                                                         {
                                                            break;
                                                            addr86:
                                                         }
                                                         §§push(§§pop() > param1.y);
                                                         while(!(_loc5_ && param1))
                                                         {
                                                         }
                                                         §§push(this.mY);
                                                         addr151:
                                                         continue loop12;
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            if(_loc6_ || param2)
                                                            {
                                                               §§push(§§pop() < param2.y);
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr86);
                                                                  }
                                                                  while(§§pop())
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        _loc3_.push(this);
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr243:
                                                                        addr205:
                                                                        §§push(_loc4_ + 1);
                                                                        break loop3;
                                                                     }
                                                                     addr137:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           if(!(_loc6_ || param2))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§goto(addr151);
                                                                           continue loop2;
                                                                        }
                                                                        addr202:
                                                                        addr202:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.mX);
                                                                           break loop14;
                                                                        }
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  return _loc3_;
                                                                  addr54:
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc5_)
                                                {
                                                   continue loop11;
                                                }
                                                if(!(_loc6_ || param1))
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   continue loop10;
                                                }
                                                §§goto(addr54);
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    addr165:
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    §§goto(addr202);
                                 }
                              }
                              if(!(_loc6_ || this))
                              {
                                 continue;
                              }
                              §§pop();
                              §§goto(addr137);
                           }
                        }
                        §§goto(addr205);
                     }
                     §§push(Number(§§pop()));
                     break loop1;
                  }
                  continue loop0;
               }
               if(this.mBirds[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  if(_loc6_)
                  {
                     _loc3_.push(this.mBirds[_loc4_]);
                  }
               }
               §§goto(addr243);
            }
            _loc4_ = §§pop();
         }
      }
      
      public function §=B§() : Array
      {
         return [this.§]G§,this.§ !_§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §%Q§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§%Q§ = this.§<f§(param1,param2,param3);
         if(!_loc6_)
         {
            this.§2X§();
         }
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
      
      public function §5§() : Boolean
      {
         return this.§[!!§;
      }
   }
}
