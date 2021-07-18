package §5!V§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §"v§.§9"§;
   import §&"5§.§+2§;
   import §&"5§.§6!L§;
   import §,a§.§+"&§;
   import §,a§.§<!m§;
   import §-!n§.§5!U§;
   import §3"5§.§^X§;
   import §7R§.Texture;
   import §=!M§.§9!P§;
   import §default§.§=!Z§;
   import §default§.Sprite;
   import §default§.§^$§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[!6§
   {
      
      public static const §5r§:int = 0;
      
      public static const §]!L§:int = 1;
      
      public static const §"!P§:int = 2;
      
      public static const §[B§:int = 3;
      
      public static const § L§:int = 5;
      
      public static const final:int = 3151368;
      
      protected static const §<L§:int = 8;
      
      protected static const §!f§:int = 0;
      
      public static const §]![§:Number = 46.25;
      
      public static const §`!W§:Number = 52.5;
      
      protected static const §=!2§:Number = -0.7;
      
      protected static const §%u§:Number = 0;
      
      protected static var § "#§:Texture;
      
      public static const §'Z§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §5r§ = 0;
            loop0:
            while(true)
            {
               §]!L§ = 1;
               loop1:
               while(true)
               {
                  §"!P§ = 2;
                  while(true)
                  {
                     §[B§ = 3;
                     loop3:
                     while(true)
                     {
                        § L§ = 5;
                        loop4:
                        while(true)
                        {
                           final = 3151368;
                           loop5:
                           while(true)
                           {
                              §<L§ = 8;
                              while(true)
                              {
                                 §!f§ = 0;
                                 addr103:
                                 while(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 addr89:
                                 continue loop4;
                                 loop9:
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop5;
                                    }
                                    §`!W§ = 52.5;
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §=!2§ = -0.7;
                                          continue loop3;
                                       }
                                       continue loop9;
                                    }
                                    §§goto(addr103);
                                 }
                              }
                           }
                        }
                     }
                     if(_loc2_ || §[!6§)
                     {
                        if(_loc2_)
                        {
                           return;
                           addr41:
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §]![§ = 46.25;
            §§goto(addr89);
         }
         §§goto(addr41);
      }
      
      public var §9q§:§!w§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §@p§:Number;
      
      protected var §'V§:Number;
      
      protected var §0B§:Number;
      
      protected var §#0§:Number;
      
      protected var §'!P§:Number;
      
      public var §"!1§:Number;
      
      public var §+t§:Boolean = false;
      
      protected var §3_§:Number;
      
      public var mBirds:Vector.<§>n§>;
      
      public var §"!"§:int;
      
      public var §5!Z§:int;
      
      public var §6#§:Number;
      
      public var §>!w§:Sprite;
      
      public var §"d§:int = 0;
      
      public var §6I§:Number = 0;
      
      public var §>@§:Array;
      
      public var §2!E§:Array;
      
      public var mSlingShotState:int;
      
      public var §-"5§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §-!0§:Boolean = false;
      
      public var §+%§:Number;
      
      protected var §!&§:Sprite;
      
      protected var §#!N§:§^$§;
      
      protected var §<!]§:§^$§;
      
      protected var §4=§:Sprite;
      
      protected var §<"=§:Sprite;
      
      protected var §+'§:Sprite;
      
      protected var §&!&§:§=!Z§;
      
      protected var §<">§:§=!Z§;
      
      private var §40§:Number = 0;
      
      private var §7!H§:int = 0;
      
      protected var §]§:Number = -0.7;
      
      protected var §0!;§:Number = 0;
      
      public function §[!6§(param1:§!w§, param2:§9"§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§^X§ = null;
         if(!_loc7_)
         {
            this.mBirds = new Vector.<§>n§>();
            while(true)
            {
               super();
               addr90:
               while(true)
               {
                  this.§9q§ = param1;
               }
               addr43:
               if(!(_loc6_ || this))
               {
                  continue;
               }
               if(false)
               {
                  loop6:
                  while(true)
                  {
                     this.§2r§();
                     loop7:
                     while(_loc6_ || param1)
                     {
                        _loc4_ = 0;
                        if(!(_loc6_ || param3))
                        {
                           continue;
                        }
                        addr34:
                        if(_loc6_ || param1)
                        {
                           if(!_loc6_)
                           {
                              break loop6;
                           }
                           §§goto(addr43);
                        }
                        while(true)
                        {
                           this.setPosition(param2.§=!?§,param2.§'!`§);
                           break loop7;
                           §§goto(addr34);
                        }
                     }
                     while(true)
                     {
                        continue loop6;
                     }
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(param2)
                        {
                           §§goto(addr66);
                        }
                        else
                        {
                           §9!P§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                        }
                        this.setSlingShotState(§[B§);
                        addr221:
                        if(_loc6_)
                        {
                           addr205:
                           this.§+%§ = 0;
                           addr209:
                           if(_loc6_ || this)
                           {
                              this.§&8§();
                              this.update(0,true);
                              addr196:
                              if(!_loc7_)
                              {
                                 if(_loc6_)
                                 {
                                    this.§2!Y§();
                                    addr179:
                                    if(!_loc7_)
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          if(_loc6_)
                                          {
                                             this.§&!a§(0);
                                             if(!(_loc7_ && param3))
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      §§goto(addr209);
                                                   }
                                                   return;
                                                   addr175:
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr179);
                                          }
                                          addr250:
                                          §§push(§9!P§);
                                          §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() + " ");
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() + this.mY);
                                             }
                                          }
                                          §§pop().log(§§pop());
                                          this.setSlingShotState(§[B§);
                                          addr275:
                                       }
                                       addr224:
                                       §§goto(addr205);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr275);
                              }
                              addr204:
                              §§goto(addr204);
                           }
                           addr236:
                           if(!_loc7_)
                           {
                              §§goto(addr224);
                           }
                           if(this.mBirds.length <= 0)
                           {
                              §§goto(addr250);
                           }
                           this.setSlingShotState(§5r§);
                           §§goto(addr236);
                           addr279:
                        }
                        addr229:
                        §§goto(addr229);
                     }
                     addr86:
                     while(true)
                     {
                        this.§!&§ = param3;
                        continue loop3;
                     }
                  }
                  §§goto(addr90);
               }
               addr123:
               if(_loc4_ < param2.§ "2§)
               {
                  _loc5_ = param2.§,;§(_loc4_);
                  if(_loc6_ || this)
                  {
                     this.§3"<§(_loc5_.id,_loc5_.x,_loc5_.y);
                     if(_loc6_)
                     {
                        addr122:
                        _loc4_++;
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr122);
               }
               if(_loc6_ || param1)
               {
                  this.§7!H§ = this.§@!b§();
                  if(!_loc7_)
                  {
                     this.§"!"§ = 0;
                     §§goto(addr279);
                  }
               }
               §§goto(addr175);
            }
         }
         §§goto(addr86);
      }
      
      public function get sprite() : Sprite
      {
         return this.§!&§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§40§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§"!"§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.mBirds.length > 0)
            {
               this.§5,§(0);
               continue;
            }
            if(_loc2_ || this)
            {
               this.mBirds = null;
            }
            loop1:
            while(true)
            {
               §§push(this.§!&§);
               if(_loc2_ || this)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        this.§>!w§ = null;
                        addr76:
                        loop4:
                        while(true)
                        {
                           if(!(_loc1_ && this))
                           {
                              this.§>@§ = null;
                              while(true)
                              {
                                 if(!(_loc2_ || this))
                                 {
                                    break loop4;
                                 }
                                 this.§2!E§ = null;
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc2_)
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
                                    continue loop4;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§!&§);
                     §§goto(addr76);
                  }
               }
               while(true)
               {
                  §§pop().dispose();
                  continue loop1;
               }
            }
         }
      }
      
      public function §`!+§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>n§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§>n§;
         (_loc5_ = this.§3"<§(param1,param2,param3,param4)).§<"4§();
         if(!(_loc6_ && param3))
         {
            this.setSlingShotState(§"!P§);
         }
         return _loc5_;
      }
      
      protected function §3"<§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>n§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§>n§ = new §>n§(this,new Sprite(),param1,param2,param3);
         if(!(_loc7_ && param1))
         {
            if(param4 >= 0)
            {
               this.mBirds.splice(param4,0,_loc5_);
               while(true)
               {
                  if(!_loc7_)
                  {
                     loop1:
                     while(true)
                     {
                        this.§>!w§.addChild(_loc5_.sprite);
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(_loc6_ || param2)
                        {
                           return _loc5_;
                        }
                        addr94:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  §§goto(addr94);
               }
            }
            while(true)
            {
               this.mBirds.push(_loc5_);
            }
         }
         §§goto(addr94);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§5r§);
                  addr301:
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     while(true)
                     {
                        §§push(§]!L§);
                        addr278:
                        addr279:
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           loop5:
                           while(true)
                           {
                              §§push(§"!P§);
                              addr262:
                              while(§§pop() != §§pop())
                              {
                                 §§push(this.mSlingShotState);
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 continue loop1;
                              }
                              addr263:
                              addr266:
                              addr248:
                              this.§6#§ = 10000;
                              this.§-!0§ = false;
                              if(!(_loc2_ && this))
                              {
                                 this.§8"1§();
                                 addr29:
                                 loop12:
                                 while(true)
                                 {
                                    this.mDragging = false;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                return;
                                             }
                                             addr304:
                                             this.§6#§ = 1000;
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  this.mBirds[this.§"!"§].setPosition(this.§#0§ - this.mBirds[this.§"!"§].radius * Math.cos(this.§6I§ / (180 / Math.PI)),this.§'!P§ + this.mBirds[this.§"!"§].radius * Math.sin(this.§6I§ / (180 / Math.PI)));
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr263);
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  this.§8"1§();
                                                               }
                                                               addr207:
                                                               continue loop12;
                                                               addr207:
                                                               addr235:
                                                            }
                                                         }
                                                         this.§6#§ = 2000;
                                                         §§goto(addr207);
                                                      }
                                                      else
                                                      {
                                                         addr190:
                                                         if(_loc3_)
                                                         {
                                                            if(!this.mDragging)
                                                            {
                                                               this.§8"1§();
                                                               addr52:
                                                               continue loop12;
                                                            }
                                                            loop15:
                                                            while(true)
                                                            {
                                                               this.mDragging = false;
                                                               addr198:
                                                               addr281:
                                                               while(!_loc2_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     this.§-!0§ = false;
                                                                     continue loop15;
                                                                  }
                                                                  addr286:
                                                                  continue loop12;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§6#§ = 0;
                                                                  break loop12;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr198);
                                                }
                                                §§goto(addr155);
                                                this.§8"1§();
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr286);
                                       }
                                       §§goto(addr98);
                                    }
                                    §§goto(addr52);
                                 }
                                 addr243:
                                 while(true)
                                 {
                                    §§goto(addr29);
                                 }
                                 addr29:
                              }
                              break loop2;
                           }
                        }
                        while(true)
                        {
                           this.§8"1§();
                           §§goto(addr281);
                        }
                     }
                  }
                  this.§8"1§();
                  §§goto(addr304);
               }
            }
         }
         §§goto(addr279);
      }
      
      public function get §4+§() : §!w§
      {
         return this.§9q§;
      }
      
      public function §5!c§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.mSlingShotState == §[B§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr54:
                     §§pop();
                     return this.§6#§ <= 0;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §2r§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§+2§ = this.§14§();
         var _loc2_:§6!L§ = _loc1_.getFrame(0);
         var _loc3_:§6!L§ = _loc1_.getFrame(1);
         if(_loc4_)
         {
            this.§&!&§ = new §=!Z§(_loc2_.texture);
            while(true)
            {
               §§push(this.§&!&§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr275:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      protected function §14§() : §+2§
      {
         return this.§9q§.§<"%§.§@7§("SLINGSHOT");
      }
      
      public function §&!O§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc3_)
         {
            this.§'V§ = this.mX;
            loop0:
            while(true)
            {
               addr52:
               while(true)
               {
                  this.§0B§ = this.mY;
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr52);
         }
         _loc1_ = null;
      }
      
      protected function §4"?§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(!(_loc4_ && _loc3_))
         {
            if(!§ "#§)
            {
               if(!_loc4_)
               {
                  addr30:
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc3_)
                  {
                     § "#§ = this.§9q§.§7!J§.§&#§(_loc2_);
                     addr47:
                     this.§+'§ = new Sprite();
                  }
                  §§goto(addr47);
               }
               var _loc1_:§=!Z§ = new §=!Z§(§ "#§);
               if(!(_loc4_ && this))
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
                        loop2:
                        while(true)
                        {
                           this.§+'§.addChild(_loc1_);
                           loop3:
                           for(; _loc3_; while(!(_loc4_ && _loc1_))
                           {
                              this.§4=§.addChild(this.§#!N§);
                              continue loop2;
                           })
                           {
                              this.§4=§ = new Sprite();
                              while(true)
                              {
                                 this.§#!N§ = new §^$§(2,2,final);
                                 continue loop3;
                                 addr114:
                                 if(_loc3_ || this)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       this.§<!]§ = new §^$§(2,2,final);
                                       while(_loc3_)
                                       {
                                          this.§<"=§.addChild(this.§<!]§);
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break loop8;
                                                }
                                                continue loop1;
                                             }
                                             addr112:
                                             while(_loc3_)
                                             {
                                                §§goto(addr114);
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    return;
                                    addr121:
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr121);
            }
            §§goto(addr47);
         }
         §§goto(addr30);
      }
      
      public function §&!a§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§'!P§);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() / §!w§.§4!-§);
            if(!(_loc7_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§#0§);
         if(_loc6_ || this)
         {
            §§push(§§pop() / §!w§.§4!-§);
            if(!_loc7_)
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(3.5);
            if(!(_loc7_ && _loc2_))
            {
               §§push(8);
               §§push(this.§3_§);
               if(_loc6_)
               {
                  §§push(this.§"!1§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc6_ || _loc3_)
                     {
                        addr80:
                        §§push(§§pop() / this.§3_§);
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!(_loc7_ && param1))
                     {
                        addr91:
                        var _loc4_:Number = §§pop();
                        if(!(_loc7_ && param1))
                        {
                           §§push(this.§+'§);
                           loop0:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr569:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 addr570:
                                 while(true)
                                 {
                                    §§push(this.§+'§);
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        §§goto(addr447);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr91);
         }
         §§goto(addr51);
      }
      
      public function §1!@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.mBirds.length > 0)
            {
               this.§5,§(0,true);
               continue;
            }
            loop1:
            while(true)
            {
               this.§7!d§();
               while(true)
               {
                  this.§3"<§("BIRD_SARDINE",this.mX,this.mY);
                  while(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        this.setSlingShotState(§"!P§);
                        if(_loc2_)
                        {
                           if(!(_loc1_ && this))
                           {
                              return;
                           }
                           continue loop0;
                        }
                        continue;
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function §7!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5!U§.playSound("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.setSlingShotState(§ L§);
         }
      }
      
      public function §8"1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.§'V§);
            §§push(this.§0B§);
            if(_loc2_ || _loc1_)
            {
               §§push(this.§3_§);
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
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!(_loc9_ && param1))
         {
            §§push(this.§#0§);
            while(true)
            {
               §§push(param1);
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr1342:
                              while(true)
                              {
                                 §§push(this.§'!P§);
                                 addr1318:
                                 while(true)
                                 {
                                    §§push(param2);
                                    addr1319:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr1341:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    this.§"!1§ = Math.sqrt((param2 - this.§0B§) * (param2 - this.§0B§) + (param1 - this.§'V§) * (param1 - this.§'V§));
                                    while(true)
                                    {
                                       §§push(this.§"!1§);
                                       while(true)
                                       {
                                          §§push(this.§3_§);
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(param3);
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§'V§);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(this.§3_§);
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     §§push(this.§'V§);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr1238:
                                                                              §§push(this.§"!1§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                              }
                                                                              addr1238:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    param1 = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_ && param3)
                                                                                       {
                                                                                          addr1262:
                                                                                          this.§"!1§ = Math.sqrt((this.§'!P§ - this.§0B§) * (this.§'!P§ - this.§0B§) + (this.§#0§ - this.§'V§) * (this.§#0§ - this.§'V§));
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§0B§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§3_§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param2);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§0B§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§"!1§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        param2 = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§"!1§ = this.§3_§;
                                                                                                                           loop167:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr1187:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§#0§ = param1;
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       this.§'!P§ = param2;
                                                                                                                                       while(!_loc9_)
                                                                                                                                       {
                                                                                                                                          this.§6I§ = Math.atan2(-(this.§'!P§ - this.§0B§),this.§#0§ - this.§'V§);
                                                                                                                                          loop29:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(this.§6I§);
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * (180 / Math.PI));
                                                                                                                                             }
                                                                                                                                             §§pop().§6I§ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.mDragging);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(false);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(12);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc4_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(5);
                                                                                                                                                                  loop41:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     addr1091:
                                                                                                                                                                     while(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                        continue loop41;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop17;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            if(_loc9_ && this)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1086);
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          if(!(_loc10_ || param2))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr696);
                                                                                                                                          §§push(_loc7_);
                                                                                                                                       }
                                                                                                                                       continue loop10;
                                                                                                                                    }
                                                                                                                                    continue loop167;
                                                                                                                                 }
                                                                                                                                 continue loop167;
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
                                                                                    §§goto(addr1252);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1238);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1262);
                                                   }
                                                }
                                             }
                                             §§goto(addr1187);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr1322);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr1249);
      }
      
      protected function §switch§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5!U§.playSound("SlingshotStreched");
         }
      }
      
      public function §`@§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.mX);
            §§push(this.mY);
            if(!(_loc3_ && _loc3_))
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
            §§push(§§pop() - this.mX);
            if(!(_loc6_ && this))
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               this.mX = param1;
            }
            §§push(param2);
            if(_loc7_ || param2)
            {
               §§push(§§pop() - this.mY);
               if(!(_loc6_ && param1))
               {
                  addr55:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!_loc6_)
               {
                  this.mY = param2;
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§@p§);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§@p§ = §§pop();
                     addr191:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§0B§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§0B§ = §§pop();
                     }
                     addr83:
                     if(!(_loc6_ && param3))
                     {
                        return;
                     }
                  }
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§'!P§);
                  if(!(_loc6_ && param3))
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§'!P§ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§'V§);
                     if(!(_loc6_ && this))
                     {
                        §§push(§§pop() + _loc4_);
                     }
                     §§pop().§'V§ = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§#0§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + _loc4_);
                        }
                        §§pop().§#0§ = §§pop();
                        while(true)
                        {
                           if(param3)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 continue loop4;
                              }
                              addr121:
                              while(true)
                              {
                              }
                              addr121:
                           }
                           while(true)
                           {
                              this.§-"5§ = true;
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr121);
                           }
                           if(!_loc6_)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr55);
         }
         §§goto(addr30);
      }
      
      public function §""0§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§>n§ = null;
         _loc2_ = this.mBirds[this.§"!"§];
         §§push(this.§"!1§);
         if(!(_loc4_ && this))
         {
            §§push(§§pop() / this.§3_§);
            if(!(_loc4_ && this))
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               if(_loc2_ != null)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr73:
                     if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                     {
                        if(_loc5_)
                        {
                           §§goto(addr80);
                        }
                        §§goto(addr124);
                     }
                     else
                     {
                        §§push(§[!6§.§]![§);
                        if(!_loc4_)
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr127);
                  }
                  addr80:
                  §§push(§[!6§.§`!W§);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc4_ && _loc3_))
                     {
                        addr105:
                        §§push(Number(§§pop()));
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc1_ = §§pop();
                           addr124:
                           §§push(_loc1_);
                           if(_loc5_)
                           {
                              addr127:
                              §§push(§§pop() * _loc3_);
                           }
                        }
                     }
                     §§goto(addr127);
                  }
                  else
                  {
                     addr97:
                     §§push(Number(§§pop()));
                     if(!(_loc4_ && this))
                     {
                        §§goto(addr105);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr124);
            }
            §§goto(addr73);
         }
         §§goto(addr49);
      }
      
      public function §9!l§() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§>n§ = null;
         if(_loc2_ || this)
         {
            if(this.mBirds.length > this.§"!"§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr49:
                  _loc1_ = this.mBirds[this.§"!"§];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr49);
      }
      
      public function §7!6§() : Point
      {
         return new Point(this.§'V§,this.§0B§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>n§ = null;
         if(!(_loc4_ && _loc3_))
         {
            this.§'N§(param1);
            loop0:
            while(true)
            {
               if(!this.§-"5§)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§6#§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§6#§ = §§pop();
                     loop4:
                     while(true)
                     {
                        do
                        {
                           if(this.§6#§ < 0)
                           {
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    this.§6#§ = 0;
                                    while(_loc5_ || _loc3_)
                                    {
                                       while(true)
                                       {
                                       }
                                       if(_loc5_ || param2)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§goto(addr371);
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue loop0;
                                    addr73:
                                 }
                                 else
                                 {
                                    addr95:
                                 }
                                 while(true)
                                 {
                                    this.§&!a§(param1);
                                    continue loop0;
                                 }
                              }
                              addr68:
                           }
                           while(true)
                           {
                              if(this.mSlingShotState == §[B§)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    §§goto(addr40);
                                 }
                                 else
                                 {
                                    addr54:
                                    if(!(_loc4_ && param2))
                                    {
                                       break;
                                    }
                                    §§goto(addr68);
                                 }
                              }
                              else
                              {
                                 this.§ ]§(param1,param2);
                              }
                              §§goto(addr54);
                           }
                        }
                        while(false);
                        
                        _loc3_ = null;
                        if(!(_loc4_ && _loc3_))
                        {
                           if(this.mBirds.length > 0)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 _loc3_ = this.mBirds[this.§"!"§];
                                 addr139:
                                 if(_loc3_)
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       _loc3_.§'"7§(param1);
                                       if(!_loc4_)
                                       {
                                          addr365:
                                          if(_loc3_)
                                          {
                                             addr346:
                                             if(this.mSlingShotState != §5r§)
                                             {
                                                addr307:
                                                §§push(this.mSlingShotState);
                                                if(!_loc4_)
                                                {
                                                   addr310:
                                                   §§push(§]!L§);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         §§push(this.mSlingShotState);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§"!P§);
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr310);
                                                            }
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(_loc3_);
                                                                  §§push(this.§#0§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(_loc3_.radius);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop() * Math.cos(this.§6I§ / (180 / Math.PI)));
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr259:
                                                                           §§push(§§pop() - §§pop());
                                                                           §§push(this.§'!P§);
                                                                           if(!(_loc4_ && param2))
                                                                           {
                                                                              §§push(_loc3_.radius);
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 §§push(§§pop() * Math.sin(this.§6I§ / (180 / Math.PI)));
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                        §§pop().setPosition(§§pop(),§§pop());
                                                                        addr290:
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 §§push(this.§-!0§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.§"!1§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(this.§3_§);
                                                                                                if(_loc5_ || param2)
                                                                                                {
                                                                                                   addr194:
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   §§push(this.§6I§);
                                                                                                }
                                                                                                §§pop().§6"0§(§§pop(),§§pop());
                                                                                                addr197:
                                                                                                if(!(_loc5_ || _loc3_))
                                                                                                {
                                                                                                   §§goto(addr290);
                                                                                                }
                                                                                                if(_loc5_ || param2)
                                                                                                {
                                                                                                   if(_loc5_ || param2)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         addr220:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr347:
                                                                                                      if(this.§6#§ <= 0)
                                                                                                      {
                                                                                                         this.setSlingShotState(§]!L§);
                                                                                                         _loc3_.§7f§();
                                                                                                         addr364:
                                                                                                         addr351:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr318:
                                                                                                   if(!(_loc4_ && this))
                                                                                                   {
                                                                                                      this.setSlingShotState(§"!P§);
                                                                                                      addr328:
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         §§goto(addr220);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr364);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr370:
                                                                                                      addr371:
                                                                                                      return;
                                                                                                      addr370:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr371);
                                                                                             }
                                                                                             §§goto(addr194);
                                                                                          }
                                                                                          addr367:
                                                                                          this.setSlingShotState(§[B§);
                                                                                          §§goto(addr370);
                                                                                       }
                                                                                       §§goto(addr197);
                                                                                    }
                                                                                    §§goto(addr371);
                                                                                 }
                                                                                 addr317:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§goto(addr318);
                                                                                 }
                                                                                 §§goto(addr220);
                                                                              }
                                                                              §§goto(addr364);
                                                                           }
                                                                           addr313:
                                                                           if(_loc5_)
                                                                           {
                                                                              addr315:
                                                                              §§goto(addr317);
                                                                              §§push(_loc3_.§"_§);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr351);
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr371);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr313);
                                                   }
                                                }
                                                §§goto(addr346);
                                             }
                                             §§goto(addr347);
                                          }
                                          §§goto(addr367);
                                          addr153:
                                       }
                                       §§goto(addr370);
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr365);
                              }
                              §§goto(addr315);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr365);
                     }
                  }
                  addr81:
               }
               §§goto(addr95);
            }
         }
         §§goto(addr80);
      }
      
      public function §`"$§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§>n§ = null;
         if(_loc6_)
         {
            if(this.mBirds.length > 0)
            {
               if(_loc6_)
               {
                  _loc5_ = this.mBirds[this.§"!"§];
                  §§goto(addr45);
               }
               §§goto(addr49);
            }
            addr45:
            if(!_loc5_)
            {
               if(!_loc7_)
               {
                  addr49:
                  return;
               }
            }
            else
            {
               addr75:
               _loc5_.setPosition(param1,param2);
               do
               {
                  this.§6"0§(param3,param4);
               }
               while(_loc7_);
               
            }
            return;
         }
         §§goto(addr75);
      }
      
      protected function §6"0§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>n§ = null;
         if(_loc5_)
         {
            this.§]§ = §=!2§;
            if(_loc5_ || _loc3_)
            {
               this.§0!;§ = §%u§;
               if(!_loc4_)
               {
                  if(this.mBirds.length > 0)
                  {
                     if(!_loc4_)
                     {
                        _loc3_ = this.mBirds[this.§"!"§];
                        addr51:
                        if(!_loc3_)
                        {
                           if(!_loc5_)
                           {
                              loop3:
                              while(true)
                              {
                                 if(this.§"!"§ < this.mBirds.length)
                                 {
                                    this.setSlingShotState(§5r§);
                                    if(_loc5_ || param2)
                                    {
                                       §§goto(addr64);
                                    }
                                 }
                                 if(!_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    addr103:
                                    if(!(_loc4_ && param1))
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             this.setSlingShotState(§[B§);
                                             break loop3;
                                          }
                                          addr117:
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             addr165:
                                             while(true)
                                             {
                                                this.§9q§.§3"%§(_loc3_,param1,param2);
                                                addr149:
                                                while(_loc5_ || this)
                                                {
                                                   this.§5,§(this.§"!"§,_loc3_.§[1§ > 0);
                                                   while(true)
                                                   {
                                                      this.§[4§();
                                                      continue loop3;
                                                      §§goto(addr103);
                                                   }
                                                }
                                                break loop3;
                                                §§goto(addr165);
                                             }
                                             addr175:
                                          }
                                          addr180:
                                          while(true)
                                          {
                                             this.§40§ = new Date().time;
                                             continue loop8;
                                          }
                                       }
                                    }
                                    §§goto(addr141);
                                 }
                                 break;
                              }
                              while(_loc4_ && _loc3_)
                              {
                                 §§goto(addr149);
                              }
                              addr64:
                              return;
                           }
                           §§goto(addr55);
                        }
                        else
                        {
                           this.mDragging = false;
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr51);
               }
               §§goto(addr117);
            }
            §§goto(addr180);
         }
         addr55:
      }
      
      protected function §[4§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc2_)
         {
            §5!U§.playSound("BirdShot" + _loc1_);
         }
      }
      
      public function § ]§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§"!"§);
         if(!(_loc6_ && this))
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
            §§push(_loc4_);
            if(!_loc6_)
            {
               if(§§pop() >= this.mBirds.length)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        if(_loc5_)
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
                              continue loop1;
                           }
                           addr93:
                           while(true)
                           {
                              this.mBirds[_loc4_].update(param1,true,param2);
                           }
                        }
                        addr74:
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  continue;
               }
               addr81:
               if(this.mSlingShotState == § L§)
               {
                  §§goto(addr93);
               }
               else
               {
                  this.mBirds[_loc4_].update(param1,false,param2);
               }
               §§goto(addr74);
            }
            §§goto(addr81);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§>n§ = null;
         var _loc2_:* = 0;
         if(_loc6_)
         {
            this.mDragging = false;
         }
         while(true)
         {
            loop1:
            while(true)
            {
               this.§8"1§();
               while(this.§5!Z§ >= this.mBirds.length)
               {
                  if(_loc6_ || _loc1_)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        return false;
                     }
                     continue;
                  }
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
               _loc1_ = this.mBirds[this.§5!Z§];
               if(_loc6_)
               {
                  §§push(§<!m§.§"!F§(_loc1_.name).score);
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
                        §§push(this.§9q§);
                        §§push(_loc2_);
                        §§push(§]"%§.§9"?§);
                        §§push(true);
                        §§push(_loc1_.x);
                        §§push(_loc1_.y);
                        if(_loc6_ || this)
                        {
                           §§push(3);
                           if(!(_loc5_ && _loc1_))
                           {
                              addr125:
                              §§push(§§pop() - §§pop());
                              §§push(§&!>§.§6[§(_loc1_.name));
                           }
                           §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                           while(true)
                           {
                              _loc1_.§+i§(-1,true);
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(!(_loc5_ && _loc2_))
                              {
                                 if(_loc6_)
                                 {
                                    if(true)
                                    {
                                       var _loc3_:*;
                                       §§push((_loc3_ = this).§5!Z§);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                    }
                                    continue loop4;
                                    if(_loc6_ || _loc2_)
                                    {
                                       _loc3_.§5!Z§ = _loc4_;
                                    }
                                    break;
                                 }
                                 continue loop3;
                              }
                           }
                           return true;
                           addr130:
                        }
                        §§goto(addr125);
                     }
                  }
               }
               §§goto(addr130);
            }
         }
      }
      
      public function §@!b§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§>n§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.mBirds)
         {
            if(_loc5_)
            {
               §§push(_loc1_);
               if(!(_loc6_ && this))
               {
                  §§push(int(§§pop() + §<!m§.§"!F§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §=R§() : int
      {
         return this.§7!H§;
      }
      
      public function §'N§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§+%§);
            loop0:
            while(true)
            {
               §§push(0);
               addr236:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     addr26:
                     return;
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§+%§);
                     if(_loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§+%§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr232);
      }
      
      public function §2!Y§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 1000;
         loop0:
         while(true)
         {
            §§push(this.§9q§.objects.§%! §(this.§'V§,this.§@p§));
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
                        loop5:
                        while(§§pop() == §§pop())
                        {
                           this.§`@§(0.1);
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    continue loop4;
                                 }
                                 addr45:
                                 if(!_loc4_)
                                 {
                                    addr48:
                                    §§push(0);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                           return;
                        }
                        §§goto(addr75);
                     }
                  }
               }
            }
         }
      }
      
      public function §%]§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(this.§!&§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr73:
               while(true)
               {
                  §§push(-§§pop());
                  addr74:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr72:
         }
         while(true)
         {
            §§push(this.§!&§);
            if(_loc3_ || param2)
            {
               §§push(param2);
               if(_loc3_)
               {
                  §§push(-§§pop());
               }
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     §§pop().y = §§pop();
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr73);
               }
               §§goto(addr74);
            }
            else
            {
               §§goto(addr72);
            }
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.mSlingShotState == §"!P§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(true);
                           break;
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           while(true)
                           {
                              addr20:
                              while(true)
                              {
                                 §§push(false);
                                 if(!_loc3_)
                                 {
                                    break loop5;
                                 }
                                 addr24:
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop0;
                                 }
                                 addr62:
                                 addr94:
                                 while(!_loc2_)
                                 {
                                    continue loop5;
                                    §§goto(addr24);
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                 }
                              }
                           }
                           addr87:
                        }
                        while(true)
                        {
                           §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                           continue loop0;
                        }
                     }
                     §§goto(addr20);
                  }
                  return §§pop();
               }
               §§goto(addr94);
            }
         }
         §§goto(addr87);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.mSlingShotState == §"!P§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr48:
                     §§pop();
                     §§push(this.§"!1§);
                     §§push(this.§3_§);
                     if(_loc1_ || this)
                     {
                        §§push(§§pop() * §'Z§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mDragging = false;
            if(!(_loc2_ && _loc2_))
            {
               this.setSlingShotState(§"!P§);
            }
         }
         var _loc1_:§>n§ = this.mBirds[this.§"!"§];
         if(_loc3_ || this)
         {
            _loc1_.§+i§(§+"&§.§@!2§);
         }
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            this.mDragging = true;
         }
         var _loc1_:§>n§ = this.mBirds[this.§"!"§];
         if(_loc2_ || _loc2_)
         {
            _loc1_.§+i§(§+"&§.§85§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§-!0§ = true;
         }
      }
      
      protected function §5,§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>n§ = null;
         if(!_loc4_)
         {
            if(param1 < 0)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr32);
               }
               else
               {
                  addr42:
                  _loc3_ = this.mBirds[param1];
                  if(_loc5_ || param2)
                  {
                     this.§>!w§.removeChild(_loc3_.sprite);
                     while(true)
                     {
                        if(param2)
                        {
                           while(true)
                           {
                              this.§=!>§(this.mBirds[param1]);
                              addr105:
                              while(true)
                              {
                              }
                           }
                           addr99:
                        }
                        addr83:
                        addr122:
                        §§goto(addr127);
                     }
                  }
                  §§goto(addr105);
               }
            }
            else if(this.mBirds[param1])
            {
               if(_loc5_)
               {
                  §§goto(addr42);
               }
               addr127:
               while(true)
               {
                  _loc3_.dispose();
                  while(_loc5_ || param1)
                  {
                     if(!_loc4_)
                     {
                        this.mBirds[param1] = null;
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     §§goto(addr99);
                  }
               }
               this.mBirds.splice(param1,1);
               return;
            }
            §§goto(addr122);
         }
         addr32:
      }
      
      public function §=!>§(param1:§>n§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:int = 5;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(!(_loc9_ && _loc2_))
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(this.§9q§);
                     if(!_loc9_)
                     {
                        §§push(§§pop().particles);
                        if(_loc10_ || _loc2_)
                        {
                           §§push(§&!>§.§^!R§);
                           if(_loc10_)
                           {
                              §§push(§-5§.§5Q§);
                              if(!_loc9_)
                              {
                                 §§push(§&!>§.§&W§);
                                 if(_loc10_ || this)
                                 {
                                    §§push(param1.x);
                                    if(!(_loc9_ && param1))
                                    {
                                       if(_loc10_)
                                       {
                                          §§push(param1.y);
                                          if(!(_loc9_ && this))
                                          {
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                §§push(1000);
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push("");
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      §§push(0);
                                                      if(_loc10_ || param1)
                                                      {
                                                         §§pop().§[b§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                         addr145:
                                                         if(!(_loc10_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ && this))
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(param1.sprite);
                                                                  addr346:
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(-§§pop().width);
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§!w§.§4!-§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr381:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(_loc9_ && param1)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(Math.random() * -_loc7_);
                                                                              addr386:
                                                                              while(true)
                                                                              {
                                                                                 §§push(2);
                                                                                 addr387:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr388:
                                                                                    addr442:
                                                                                    loop10:
                                                                                    while(_loc10_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       while(!(_loc9_ && this))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             continue loop3;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(180 / Math.PI);
                                                                                          break loop10;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       addr443:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr381:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §§goto(addr381);
                                                                           }
                                                                           §§goto(addr404);
                                                                        }
                                                                     }
                                                                     §§goto(addr381);
                                                                  }
                                                                  addr426:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr437:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        §§goto(addr438);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.sprite);
                                                               if(_loc10_ || this)
                                                               {
                                                                  §§push(-§§pop().height);
                                                                  if(_loc9_ && _loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§!w§.§4!-§);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc10_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          addr284:
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                if(_loc9_ && _loc2_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr301:
                                                                                                §§push(Math.random() * -_loc8_);
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   §§push(2);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr317:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr324:
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               break;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr437);
                                                                                                      }
                                                                                                      §§goto(addr386);
                                                                                                   }
                                                                                                   §§goto(addr387);
                                                                                                }
                                                                                                §§goto(addr317);
                                                                                             }
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                          §§goto(addr388);
                                                                                       }
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                    §§goto(addr396);
                                                                                 }
                                                                                 §§goto(addr324);
                                                                              }
                                                                              §§goto(addr443);
                                                                           }
                                                                           §§goto(addr372);
                                                                        }
                                                                        §§goto(addr301);
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Math.random() * (720 / _loc3_));
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §§goto(addr426);
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§goto(addr438);
                                                                        }
                                                                     }
                                                                     addr409:
                                                                  }
                                                                  §§goto(addr442);
                                                               }
                                                               §§goto(addr346);
                                                            }
                                                            _loc8_ = §§pop();
                                                         }
                                                         addr175:
                                                         §§push(this.§9q§.particles);
                                                         §§push(§&!>§.§]!c§);
                                                         §§push(§-5§.§5Q§);
                                                         §§push(§&!>§.§&W§);
                                                         §§push(param1.x);
                                                         §§push(_loc7_);
                                                         if(!_loc9_)
                                                         {
                                                            addr181:
                                                            §§push(§§pop() + §§pop());
                                                            §§push(param1.y + _loc8_);
                                                            §§push(1500);
                                                            §§push("");
                                                            §§push(§&!>§.§6H§(param1.name));
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      §§push(_loc2_);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() * Math.cos(_loc6_));
                                                      }
                                                      §§push(_loc2_);
                                                      if(_loc10_ || this)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc10_ || param1)
                                                         {
                                                            addr212:
                                                            §§push(§§pop() * Math.sin(_loc6_));
                                                         }
                                                         §§push(5);
                                                         §§push(_loc2_);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() * 20);
                                                         }
                                                         §§pop().§[b§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                         _loc5_++;
                                                         continue;
                                                         addr233:
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr181);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr233);
               }
               §§goto(addr145);
            }
            else
            {
               §§push(_loc4_);
            }
            §§goto(addr409);
         }
      }
      
      public function removeObject(param1:§>n§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§5,§(this.mBirds.indexOf(param1));
         }
      }
      
      public function §&8§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§>n§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§>n§ = null;
         var _loc1_:* = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc6_ && this))
            {
               if(§§pop() >= this.mBirds.length - 1)
               {
                  if(_loc7_)
                  {
                     addr238:
                     if(this.§>!w§.numChildren > 0)
                     {
                        §§push(this.§>!w§);
                        if(!(_loc6_ && this))
                        {
                           §§pop().removeChildAt(0);
                           if(_loc7_)
                           {
                              §§goto(addr238);
                           }
                           addr251:
                           while(true)
                           {
                              addr281:
                              if(_loc1_ >= this.mBirds.length)
                              {
                                 §§goto(addr285);
                              }
                              _loc2_ = this.mBirds[_loc1_];
                              if(!_loc6_)
                              {
                                 this.§>!w§.addChildAt(_loc2_.sprite,0);
                                 if(!_loc6_)
                                 {
                                    _loc1_++;
                                 }
                              }
                           }
                        }
                        §§goto(addr238);
                     }
                     if(_loc7_)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           break;
                        }
                        §§goto(addr281);
                     }
                  }
               }
               else
               {
                  §§push(Number(Math.sqrt((this.mX - this.mBirds[_loc1_].x) * (this.mX - this.mBirds[_loc1_].x) + (this.mY - this.mBirds[_loc1_].y) * (this.mY - this.mBirds[_loc1_].y))));
                  if(_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_ || _loc3_)
                     {
                        §§push(Number(Math.sqrt((this.mX - this.mBirds[_loc1_ + 1].x) * (this.mX - this.mBirds[_loc1_ + 1].x) + (this.mY - this.mBirds[_loc1_ + 1].y) * (this.mY - this.mBirds[_loc1_ + 1].y))));
                        if(_loc7_ || this)
                        {
                           §§goto(addr142);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr155);
                  }
                  addr142:
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     _loc4_ = §§pop();
                     addr146:
                     §§push(_loc3_);
                  }
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc7_ || _loc2_))
                     {
                        continue;
                     }
                     addr155:
                     _loc5_ = this.mBirds[_loc1_];
                     if(!(_loc6_ && _loc1_))
                     {
                        this.mBirds.splice(_loc1_,1);
                        loop1:
                        while(true)
                        {
                           addr189:
                           while(true)
                           {
                              this.mBirds.splice(_loc1_ + 1,0,_loc5_);
                              continue loop1;
                           }
                        }
                        addr204:
                     }
                     while(true)
                     {
                        _loc1_ = int(Math.max(-1,_loc1_ - 2));
                        if(!_loc7_)
                        {
                           continue;
                        }
                        if(_loc7_ || this)
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr204);
                        }
                        §§goto(addr189);
                     }
                  }
                  _loc1_++;
                  if(_loc7_)
                  {
                     continue;
                  }
                  §§goto(addr285);
               }
               §§goto(addr285);
            }
            break;
         }
         _loc1_ = §§pop();
         if(_loc7_)
         {
            §§goto(addr251);
         }
         addr285:
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §>n§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.mBirds.length)
            {
               if(_loc5_)
               {
                  continue;
               }
               if(_loc4_ || this)
               {
                  break;
               }
               addr90:
            }
            else if(this.mBirds[_loc3_])
            {
               if(_loc4_ || param1)
               {
                  if(this.mBirds[_loc3_].isInCoordinates(param1,param2))
                  {
                     if(_loc4_)
                     {
                        return this.mBirds[_loc3_];
                     }
                  }
                  addr48:
                  _loc3_++;
                  continue;
               }
               §§goto(addr90);
            }
            §§goto(addr48);
         }
         return null;
      }
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §[!6§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.mX);
               addr205:
               while(true)
               {
                  §§push(this.§3_§);
                  addr217:
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
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop16:
                                          for(; !_loc3_; while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc4_ || param2))
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr135);
                                             }
                                             §§goto(addr68);
                                          })
                                          {
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             loop17:
                                             while(true)
                                             {
                                                §§pop();
                                                loop18:
                                                while(_loc4_ || this)
                                                {
                                                   §§push(param2);
                                                   loop19:
                                                   for(; _loc4_; while(true)
                                                   {
                                                      §§push(this.mY);
                                                      if(!(_loc4_ || param1))
                                                      {
                                                         continue loop19;
                                                      }
                                                      §§push(this.§@p§);
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr44);
                                                      }
                                                      §§goto(addr102);
                                                   },addr25:,return null)
                                                   {
                                                      §§push(this.mY);
                                                      while(true)
                                                      {
                                                         §§push(this.§3_§);
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§push(4);
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc3_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr102:
                                                                  §§push(§§pop() - §§pop() / §§pop());
                                                                  while(_loc4_ || this)
                                                                  {
                                                                     §§push(§§pop() >= §§pop());
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        addr223:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           break loop18;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              §§pop();
                                                                              continue loop19;
                                                                           }
                                                                           addr186:
                                                                           while(_loc4_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           addr58:
                                                                           §§push(§§pop() <= §§pop());
                                                                           continue loop6;
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       addr78:
                                                                                    }
                                                                                    §§goto(addr25);
                                                                                 }
                                                                                 return this;
                                                                                 addr68:
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                        addr135:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr186);
                                                                     §§goto(addr113);
                                                                  }
                                                                  addr113:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                                  addr174:
                                                               }
                                                            }
                                                            while(_loc4_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            continue loop4;
                                                            addr175:
                                                         }
                                                         §§goto(addr102);
                                                         addr44:
                                                         if(_loc3_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§goto(addr58);
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          continue loop7;
                                       }
                                    }
                                    §§goto(addr223);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function writeSlingshotInformation(param1:§9"§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§>n§ = null;
         var _loc4_:§^X§ = null;
         if(!_loc6_)
         {
            param1.§=!?§ = this.mX;
            if(!(_loc6_ && _loc3_))
            {
               addr35:
               param1.§'!`§ = this.mY;
            }
            var _loc2_:Number = 0;
            loop0:
            while(_loc2_ < this.mBirds.length)
            {
               _loc3_ = this.mBirds[_loc2_];
               (_loc4_ = new §^X§()).x = _loc3_.x;
               if(_loc5_)
               {
                  _loc4_.y = _loc3_.y;
               }
               loop1:
               while(true)
               {
                  _loc4_.id = _loc3_.name;
                  loop2:
                  while(true)
                  {
                     addr99:
                     while(true)
                     {
                        param1.§"A§(_loc4_);
                        addr103:
                        while(_loc5_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function § I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
            if(!(_loc2_ || _loc1_))
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
            while(true)
            {
               if(§§pop() >= this.mBirds.length)
               {
                  loop2:
                  while(!_loc5_)
                  {
                     §§push(this.mX);
                     loop3:
                     while(_loc6_ || this)
                     {
                        if(_loc6_)
                        {
                           §§push(§§pop() > param1.x);
                           if(_loc6_)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr186:
                                    while(true)
                                    {
                                       §§pop();
                                       addr187:
                                       while(true)
                                       {
                                          §§push(this.mX);
                                          addr150:
                                          while(true)
                                          {
                                             §§push(§§pop() < param2.x);
                                          }
                                       }
                                    }
                                    addr186:
                                 }
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                loop9:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      _loc3_.push(this.mBirds[_loc4_]);
                                                   }
                                                   else
                                                   {
                                                      addr222:
                                                   }
                                                   §§push(this.mY);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc5_ && param2)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() > param1.y);
                                                         while(_loc6_)
                                                         {
                                                            if(!(_loc6_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!(_loc6_ || _loc3_))
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        break loop9;
                                                                     }
                                                                     _loc3_.push(this);
                                                                  }
                                                                  addr82:
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr132:
                                                                  while(!(_loc5_ && param2))
                                                                  {
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     continue loop2;
                                                                     §§goto(addr82);
                                                                  }
                                                                  §§goto(addr187);
                                                               }
                                                               return _loc3_;
                                                               addr66:
                                                            }
                                                            §§goto(addr186);
                                                            §§goto(addr187);
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop1;
                                                }
                                                break loop1;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop4;
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr124);
                                             }
                                             §§goto(addr66);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr186);
                        }
                        §§push(Number(§§pop()));
                        break;
                     }
                     _loc4_ = §§pop();
                     break;
                  }
                  continue loop0;
               }
               if(this.mBirds[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr222);
               }
               break;
               §§goto(addr222);
            }
            §§push(_loc4_);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            §§goto(addr193);
         }
      }
      
      public function § &§() : Array
      {
         return [this.§<">§,this.§&!&§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §>n§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§>n§ = this.§3"<§(param1,param2,param3);
         if(_loc6_ || param1)
         {
            this.§&8§();
         }
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
   }
}
