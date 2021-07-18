package §4!<§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.§ "E§;
   import §'!6§.§5T§;
   import §'!6§.Sprite;
   import §+!c§.§;!=§;
   import §-f§.§8!<§;
   import §-f§.§[!J§;
   import §8m§.§@"M§;
   import §9!n§.§0"T§;
   import §<5§.Texture;
   import §<T§.§4!N§;
   import §<T§.§^"5§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §super§.§^m§;
   
   public class §&=§
   {
      
      public static const §4"%§:int = 0;
      
      public static const §&e§:int = 1;
      
      public static const §9!H§:int = 2;
      
      public static const §&!K§:int = 3;
      
      public static const §+!`§:int = 5;
      
      public static const §2"!§:int = 3151368;
      
      protected static const §?A§:int = 8;
      
      protected static const §%![§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §!"C§:Number = -0.7;
      
      protected static const §'§:Number = 0;
      
      protected static var §<!q§:Texture;
      
      public static const §=!$§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §4"%§ = 0;
            while(true)
            {
               §&e§ = 1;
               addr152:
               while(true)
               {
                  §9!H§ = 2;
                  addr147:
                  while(true)
                  {
                     §&!K§ = 3;
                     addr142:
                     while(true)
                     {
                        §+!`§ = 5;
                     }
                  }
               }
            }
            addr156:
         }
         while(true)
         {
            §2"!§ = 3151368;
            loop5:
            while(true)
            {
               §?A§ = 8;
               loop6:
               while(true)
               {
                  if(_loc1_ && §&=§)
                  {
                     continue loop5;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §%![§ = 0;
                  while(true)
                  {
                     BIRD_LAUNCH_FORCE = 46.25;
                     continue loop6;
                     addr72:
                     if(_loc1_ && §&=§)
                     {
                        continue;
                     }
                     §'§ = 0;
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr152);
                  }
               }
               §§goto(addr142);
            }
         }
      }
      
      public var mLevelMain:§'!S§;
      
      public var §4!K§:Number;
      
      public var §7!#§:Number;
      
      public var §""P§:Number;
      
      protected var §?"M§:Number;
      
      protected var §5E§:Number;
      
      protected var §'!Z§:Number;
      
      protected var §[I§:Number;
      
      public var §;!8§:Number;
      
      public var §4q§:Boolean = false;
      
      protected var §]"4§:Number;
      
      public var §9!L§:Vector.<§ !X§>;
      
      public var §<"§:int;
      
      public var §5"U§:int = 0;
      
      public var §?"B§:int;
      
      public var §;z§:Number;
      
      public var §7!g§:Sprite;
      
      public var §>H§:int = 0;
      
      public var §[h§:Number = 0;
      
      public var §<!§:Array;
      
      public var §`a§:Array;
      
      public var mSlingShotState:int;
      
      public var §+C§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §4c§:Boolean = false;
      
      public var §8!T§:Number;
      
      protected var §0I§:Boolean = false;
      
      protected var §?!T§:Sprite;
      
      protected var §?"#§:§5T§;
      
      protected var §"&§:§5T§;
      
      protected var §8h§:Sprite;
      
      protected var §@"N§:Sprite;
      
      protected var §&"2§:Sprite;
      
      protected var §7]§:§ "E§;
      
      protected var §"%§:§ "E§;
      
      private var §+J§:Number = 0;
      
      private var §`"&§:int = 0;
      
      protected var §5![§:Number = -0.7;
      
      protected var §1!%§:Number = 0;
      
      public function §&=§(param1:§'!S§, param2:§0"T§, param3:Sprite)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:§^m§ = null;
         if(!_loc6_)
         {
            this.§9!L§ = new Vector.<§ !X§>();
            while(true)
            {
               super();
               loop1:
               while(!(_loc6_ && param1))
               {
                  this.mLevelMain = param1;
                  loop2:
                  while(true)
                  {
                     this.§?!T§ = param3;
                     loop3:
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           if(!param2)
                           {
                              §;!=§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                           }
                           loop4:
                           while(!_loc6_)
                           {
                              this.setPosition(param2.§7x§,param2.§;"H§);
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    this.§>U§();
                                    do
                                    {
                                       _loc4_ = 0;
                                    }
                                    while(!_loc7_);
                                    
                                    if(_loc6_ && this)
                                    {
                                       continue loop5;
                                    }
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    if(!_loc7_)
                                    {
                                       continue loop3;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    while(_loc4_ < param2.§9X§)
                                    {
                                       _loc5_ = param2.§1!e§(_loc4_);
                                       if(_loc7_ || param3)
                                       {
                                          this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
                                          if(_loc7_)
                                          {
                                             _loc4_++;
                                          }
                                       }
                                    }
                                    if(!(_loc6_ && param3))
                                    {
                                       this.§`"&§ = this.§@Z§();
                                       if(_loc7_)
                                       {
                                          this.§<"§ = 0;
                                          loop9:
                                          while(true)
                                          {
                                             if(this.§9!L§.length > 0)
                                             {
                                                this.§^!]§(§4"%§);
                                                loop10:
                                                while(true)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         this.§8!T§ = 0;
                                                         loop13:
                                                         while(true)
                                                         {
                                                            this.§5!r§();
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  continue loop9;
                                                               }
                                                               addr244:
                                                               addr244:
                                                               while(true)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               loop16:
                                                               while(!(_loc6_ && param3))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.updateAnimations(0);
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     addr152:
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        if(!(_loc6_ && param3))
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           break loop14;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     addr185:
                                                                     addr295:
                                                                     while(!_loc6_)
                                                                     {
                                                                        this.§5!$§();
                                                                        continue loop16;
                                                                        §§goto(addr152);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§^!]§(§&!K§);
                                                                        §§goto(addr244);
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                            addr217:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  break loop12;
                                                               }
                                                               continue loop12;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr239:
                                             }
                                             while(true)
                                             {
                                                §§push(§;!=§);
                                                §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(this.§4!K§);
                                                   if(_loc7_ || param1)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc7_)
                                                      {
                                                         addr282:
                                                         §§push(§§pop() + " ");
                                                         if(_loc7_ || param1)
                                                         {
                                                            addr291:
                                                            §§push(§§pop() + this.§7!#§);
                                                         }
                                                         §§pop().log(§§pop());
                                                         §§goto(addr295);
                                                      }
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr282);
                                             }
                                          }
                                       }
                                       §§goto(addr244);
                                    }
                                    §§goto(addr179);
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop1;
                           break;
                        }
                        continue loop2;
                     }
                     while(true)
                     {
                        if(_loc7_ || this)
                        {
                           this.§^!]§(§&!K§);
                           §§goto(addr217);
                        }
                        §§goto(addr239);
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!T§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§+J§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§<"§ < this.§9!L§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            if(this.§9!L§.length <= 0)
            {
               loop1:
               while(_loc1_ || this)
               {
                  this.§9!L§ = null;
                  loop2:
                  while(true)
                  {
                     §§push(this.§?!T§);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§?!T§);
                              addr101:
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr102:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    this.§?!T§ = null;
                                    while(true)
                                    {
                                       if(!(_loc1_ || this))
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              addr34:
                              if(!(_loc2_ && this))
                              {
                                 return;
                              }
                           }
                        }
                        while(true)
                        {
                           this.§7!g§ = null;
                           loop5:
                           while(true)
                           {
                              this.§<!§ = null;
                              while(true)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop5;
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr75);
                        }
                        continue loop1;
                     }
                     §§goto(addr101);
                  }
               }
            }
            else
            {
               this.§"!>§(0);
            }
         }
      }
      
      public function §<-§(param1:String, param2:Number, param3:Number, param4:int = -1) : § !X§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§ !X§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§8""§();
         if(_loc6_ || param2)
         {
            this.§^!]§(§9!H§);
         }
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : § !X§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§ !X§ = new § !X§(this,new Sprite(),param1,param2,param3);
         if(!(_loc6_ && this))
         {
            if(param4 < 0)
            {
               if(!(_loc6_ && this))
               {
                  this.§9!L§.push(_loc5_);
               }
               while(true)
               {
                  §§goto(addr50);
               }
               addr100:
            }
            else
            {
               this.§9!L§.splice(param4,0,_loc5_);
            }
            while(true)
            {
               if(!_loc6_)
               {
                  §§goto(addr85);
               }
               else
               {
                  §§goto(addr100);
               }
               return _loc5_;
            }
         }
         §§goto(addr85);
      }
      
      public function §^!]§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§4"%§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     while(true)
                     {
                        §§push(§&e§);
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
                                    §§push(§9!H§);
                                    addr260:
                                    addr268:
                                    while(true)
                                    {
                                       if(_loc2_ || _loc2_)
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
                                    addr268:
                                    this.§;z§ = 10000;
                                    loop19:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§4c§ = false;
                                          loop22:
                                          while(true)
                                          {
                                             this.§?!r§();
                                             loop23:
                                             while(true)
                                             {
                                                addr23:
                                                loop11:
                                                while(true)
                                                {
                                                   this.mDragging = false;
                                                   if(!_loc3_)
                                                   {
                                                      addr29:
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            return;
                                                         }
                                                         addr215:
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            this.§4c§ = false;
                                                            while(true)
                                                            {
                                                               this.§?!r§();
                                                               addr107:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  addr111:
                                                                  if(_loc3_ && param1)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§9!L§[this.§<"§].setPosition(this.§'!Z§ - this.§9!L§[this.§<"§].radius * Math.cos(this.§[h§ / (180 / Math.PI)),this.§[I§ + this.§9!L§[this.§<"§].radius * Math.sin(this.§[h§ / (180 / Math.PI)));
                                                                     break loop11;
                                                                     §§goto(addr111);
                                                                  }
                                                               }
                                                            }
                                                            addr123:
                                                         }
                                                         else
                                                         {
                                                            addr242:
                                                            this.§?!r§();
                                                            this.§;z§ = 2000;
                                                            addr227:
                                                            continue;
                                                            addr244:
                                                            addr227:
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   loop12:
                                                   while(_loc2_)
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr166:
                                                      addr288:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(!this.mDragging)
                                                                  {
                                                                     this.§?!r§();
                                                                     continue loop12;
                                                                  }
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc3_ && _loc3_)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!(_loc2_ || param1))
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           this.mDragging = false;
                                                                           §§goto(addr215);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr268);
                                                                        }
                                                                     }
                                                                     §§goto(addr244);
                                                                  }
                                                                  §§goto(addr215);
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr305:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                      }
                                                   }
                                                   §§goto(addr107);
                                                   §§goto(addr227);
                                                }
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr23);
                                                      }
                                                      while(true)
                                                      {
                                                         this.§;z§ = 0;
                                                         §§goto(addr288);
                                                      }
                                                      addr300:
                                                   }
                                                   §§goto(addr123);
                                                   §§goto(addr29);
                                                }
                                             }
                                          }
                                       }
                                       addr313:
                                       while(true)
                                       {
                                          this.§;z§ = 1000;
                                          §§goto(addr305);
                                       }
                                    }
                                 }
                              }
                              break;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           this.§?!r§();
                           §§goto(addr300);
                        }
                        if(_loc2_ || param1)
                        {
                           continue loop1;
                        }
                     }
                  }
                  this.§?!r§();
                  §§goto(addr313);
               }
            }
         }
         §§goto(addr118);
      }
      
      public function get §3![§() : §'!S§
      {
         return this.mLevelMain;
      }
      
      public function §6"+§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mSlingShotState == §&!K§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr49:
                     §§pop();
                     return this.§;z§ <= 0;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §>U§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4!N§ = this.getSlingshotAnimation();
         var _loc2_:§^"5§ = _loc1_.getFrame(0);
         var _loc3_:§^"5§ = _loc1_.getFrame(1);
         if(!(_loc5_ && this))
         {
            this.§7]§ = new § "E§(_loc2_.texture);
            while(true)
            {
               §§push(this.§7]§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr260:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      protected function getSlingshotAnimation() : §4!N§
      {
         return this.mLevelMain.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §0!,§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc2_ || _loc2_)
         {
            this.§?"M§ = this.§4!K§;
            loop0:
            while(true)
            {
               addr61:
               while(true)
               {
                  this.§5E§ = this.§7!#§;
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        this.§]"4§ = §^!Z§.§1=§;
                        if(!_loc3_)
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
            §§goto(addr61);
         }
         _loc1_ = null;
      }
      
      protected function §14§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(_loc3_ || _loc1_)
         {
            if(!§<!q§)
            {
               if(_loc3_ || this)
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(!(_loc4_ && _loc1_))
                  {
                     §<!q§ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc2_);
                  }
               }
               addr61:
               var _loc1_:§ "E§ = new § "E§(§<!q§);
               if(!(_loc4_ && _loc3_))
               {
                  _loc1_.rotation = Math.PI;
                  while(true)
                  {
                     _loc1_.x = _loc1_.width / 2;
                     addr160:
                     if(!_loc3_)
                     {
                        continue;
                     }
                     this.§?"#§ = new §5T§(2,2,§2"!§);
                     while(!_loc4_)
                     {
                        this.§8h§.addChild(this.§?"#§);
                        do
                        {
                           this.§@"N§ = new Sprite();
                           loop7:
                           do
                           {
                              this.§"&§ = new §5T§(2,2,§2"!§);
                              addr121:
                              addr158:
                              while(_loc3_ || _loc1_)
                              {
                                 this.§@"N§.addChild(this.§"&§);
                                 if(_loc3_)
                                 {
                                    continue loop7;
                                 }
                              }
                              addr178:
                              while(!_loc4_)
                              {
                                 §§goto(addr160);
                                 §§goto(addr121);
                              }
                              while(true)
                              {
                                 this.§8h§ = new Sprite();
                                 §§goto(addr158);
                              }
                           }
                           while(_loc4_ && _loc3_);
                           
                        }
                        while(_loc4_);
                        
                        if(!(_loc4_ && this))
                        {
                           return;
                        }
                     }
                     while(!_loc4_)
                     {
                        this.§&"2§.addChild(_loc1_);
                        §§goto(addr178);
                     }
                     while(true)
                     {
                        _loc1_.y = _loc1_.height / 2;
                        §§goto(addr186);
                     }
                     addr186:
                     addr196:
                  }
               }
               §§goto(addr196);
            }
            this.§&"2§ = new Sprite();
         }
         §§goto(addr61);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§[I§);
         if(!_loc7_)
         {
            §§push(§§pop() / §'!S§.§2"<§);
            if(_loc6_ || _loc3_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§'!Z§);
            if(_loc6_ || this)
            {
               §§push(§§pop() / §'!S§.§2"<§);
               if(!(_loc7_ && _loc3_))
               {
                  addr51:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(3.5);
               if(!(_loc7_ && this))
               {
                  §§push(8);
                  §§push(this.§]"4§);
                  if(!_loc7_)
                  {
                     §§push(this.§;!8§);
                     if(_loc6_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc7_ && this))
                        {
                           addr80:
                           §§push(§§pop() / this.§]"4§);
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc6_)
                        {
                           addr86:
                           var _loc4_:Number = §§pop();
                           if(!(_loc7_ && param1))
                           {
                              §§push(this.§&"2§);
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
                                       §§push(this.§&"2§);
                                       loop3:
                                       for(; !_loc7_; while(true)
                                       {
                                          §§push(this.§&"2§);
                                          if(_loc7_ && param1)
                                          {
                                             continue loop3;
                                          }
                                          §§push(this.§[h§);
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§goto(addr487);
                                          }
                                          §§goto(addr507);
                                       },§§goto(addr630))
                                       {
                                          §§push(_loc2_);
                                          while(true)
                                          {
                                             §§pop().y = §§pop();
                                             continue loop3;
                                             addr487:
                                             if(_loc7_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             §§push(-§§pop());
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§push(§§pop() / (180 / Math.PI));
                                             }
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                continue loop1;
                                             }
                                             §§pop().rotation = §§pop();
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§push(this.§7]§);
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(this.§4!K§);
                                                   addr459:
                                                   while(true)
                                                   {
                                                      §§push(§'!S§.§2"<§);
                                                      addr461:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr462:
                                                         while(true)
                                                         {
                                                            §§push(3);
                                                            addr463:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               addr464:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  addr465:
                                                                  while(!_loc7_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr630);
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           §§goto(addr393);
                        }
                        §§goto(addr86);
                     }
                  }
                  §§goto(addr80);
               }
               §§goto(addr86);
            }
            §§goto(addr51);
         }
         §§goto(addr30);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            if(this.§9!L§.length <= 0)
            {
               loop1:
               while(true)
               {
                  this.§4N§();
                  while(true)
                  {
                     this.addSlingshotObject("BIRD_SARDINE",this.§4!K§,this.§7!#§);
                     while(_loc2_)
                     {
                        this.§^!]§(§9!H§);
                        if(_loc2_)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               if(_loc2_ || this)
               {
                  break;
               }
            }
            else
            {
               this.§"!>§(0,true);
            }
         }
      }
      
      protected function §4N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@"M§.§3"C§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§^!]§(§+!`§);
         }
      }
      
      public function §?!r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§?"M§);
            §§push(this.§5E§);
            if(!(_loc1_ && this))
            {
               §§push(this.§]"4§);
               if(_loc2_)
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
      
      protected function §&!n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §@"M§.§3"C§("SlingshotStreched");
         }
      }
      
      public function applyGravity(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            §§push(this.§4!K§);
            §§push(this.§7!#§);
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
         if(_loc7_ || param2)
         {
            §§push(§§pop() - this.§4!K§);
            if(!_loc6_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param2))
            {
               this.§4!K§ = param1;
            }
            §§push(param2);
            if(_loc7_ || param2)
            {
               §§push(§§pop() - this.§7!#§);
               if(!(_loc6_ && param2))
               {
                  addr60:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc7_ || param3)
               {
                  this.§7!#§ = param2;
                  loop0:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§""P§);
                     if(!(_loc6_ && this))
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§""P§ = §§pop();
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§5E§);
                        if(_loc7_ || param1)
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§5E§ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§[I§);
                           if(!(_loc6_ && param2))
                           {
                              §§push(§§pop() + _loc5_);
                           }
                           §§pop().§[I§ = §§pop();
                           addr161:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§?"M§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + _loc4_);
                              }
                              §§pop().§?"M§ = §§pop();
                              addr142:
                              while(!_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop2;
                           }
                        }
                        addr115:
                        if(_loc7_ || this)
                        {
                           loop9:
                           while(true)
                           {
                              this.§+C§ = true;
                              if(_loc7_ || param3)
                              {
                                 addr85:
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc6_ && param3))
                                    {
                                       if(!_loc6_)
                                       {
                                          this.updateAnimations(0);
                                          while(_loc7_)
                                          {
                                             §§goto(addr115);
                                             continue loop9;
                                          }
                                          §§goto(addr142);
                                          addr113:
                                       }
                                       break;
                                    }
                                    addr132:
                                    while(true)
                                    {
                                       if(param3)
                                       {
                                          continue loop7;
                                       }
                                       continue loop9;
                                    }
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr113);
                           }
                           return;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§'!Z§);
                  if(_loc7_)
                  {
                     §§push(§§pop() + _loc4_);
                  }
                  §§pop().§'!Z§ = §§pop();
                  §§goto(addr132);
               }
            }
            §§goto(addr60);
         }
         §§goto(addr30);
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§ !X§ = null;
         _loc2_ = this.§9!L§[this.§<"§];
         §§push(this.§;!8§);
         if(!_loc5_)
         {
            §§push(§§pop() / this.§]"4§);
            if(!(_loc5_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               if(!(_loc5_ && _loc3_))
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(!(_loc5_ && _loc1_))
                     {
                        addr79:
                        §§push(§&=§.BIRD_LAUNCH_FORCE_GREEN);
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc4_)
                           {
                              addr114:
                              §§push(Number(§§pop()));
                              if(!(_loc5_ && _loc2_))
                              {
                                 _loc1_ = §§pop();
                                 addr123:
                                 §§push(_loc1_);
                                 if(_loc5_)
                                 {
                                 }
                                 §§goto(addr128);
                              }
                              addr128:
                              return §§pop();
                              addr86:
                           }
                           addr126:
                           §§goto(addr128);
                           §§push(§§pop() * _loc3_);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr123);
                  }
                  else
                  {
                     §§push(§&=§.BIRD_LAUNCH_FORCE);
                     if(!(_loc5_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc5_ && _loc2_))
                        {
                           §§goto(addr114);
                        }
                        §§goto(addr126);
                     }
                  }
                  §§goto(addr123);
               }
               §§goto(addr79);
            }
            §§goto(addr123);
         }
         §§goto(addr79);
      }
      
      public function §@!]§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ !X§ = null;
         if(_loc3_ || _loc2_)
         {
            if(this.§9!L§.length > this.§<"§)
            {
               if(!_loc2_)
               {
                  addr55:
                  _loc1_ = this.§9!L§[this.§<"§];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr55);
      }
      
      public function §+"8§() : Point
      {
         return new Point(this.§?"M§,this.§5E§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§ !X§ = null;
         if(_loc5_ || this)
         {
            this.updateGroundControl(param1);
            loop0:
            while(true)
            {
               if(!this.§+C§)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§;z§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§;z§ = §§pop();
                     loop4:
                     while(true)
                     {
                        do
                        {
                           if(this.§;z§ < 0)
                           {
                              while(true)
                              {
                                 this.§;z§ = 0;
                                 addr73:
                                 loop7:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          this.updateAnimations(param1);
                                          break loop7;
                                       }
                                       addr90:
                                    }
                                 }
                                 continue loop0;
                              }
                              addr70:
                           }
                           while(true)
                           {
                              if(this.mSlingShotState == §&!K§)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             §§goto(addr393);
                                          }
                                          continue loop0;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 else
                                 {
                                    addr56:
                                    if(!(_loc4_ && param2))
                                    {
                                       break;
                                    }
                                    §§goto(addr70);
                                 }
                                 §§goto(addr73);
                              }
                              else
                              {
                                 this.§`8§(param1,param2);
                              }
                              §§goto(addr56);
                           }
                        }
                        while(false);
                        
                        _loc3_ = null;
                        if(_loc5_ || param1)
                        {
                           if(this.§9!L§.length > 0)
                           {
                              if(_loc5_)
                              {
                                 _loc3_ = this.§9!L§[this.§<"§];
                                 addr129:
                                 if(_loc3_)
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       _loc3_.§<!c§(param1);
                                       if(_loc5_ || this)
                                       {
                                          addr387:
                                          if(_loc3_)
                                          {
                                             addr377:
                                             if(this.mSlingShotState != §4"%§)
                                             {
                                                addr325:
                                                §§push(this.mSlingShotState);
                                                §§push(§&e§);
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      §§push(this.mSlingShotState);
                                                      if(_loc5_ || param2)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(§9!H§);
                                                            if(_loc4_ && param1)
                                                            {
                                                               §§goto(addr325);
                                                            }
                                                            if(§§pop() == §§pop())
                                                            {
                                                               addr242:
                                                               if(!_loc4_)
                                                               {
                                                                  addr246:
                                                                  §§push(_loc3_.§0s§());
                                                                  if(_loc5_ || param2)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        addr254:
                                                                        §§push(_loc3_);
                                                                        §§push(this.§'!Z§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(_loc3_.radius);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop() * Math.cos(this.§[h§ / (180 / Math.PI)));
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 addr281:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 §§push(this.§[I§);
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    addr290:
                                                                                    §§push(_loc3_.radius);
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       §§push(§§pop() * Math.sin(this.§[h§ / (180 / Math.PI)));
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                              }
                                                                              §§pop().setPosition(§§pop(),§§pop());
                                                                              addr311:
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 addr149:
                                                                                 §§push(this.§4c§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!(_loc5_ || this))
                                                                                                {
                                                                                                   §§goto(addr242);
                                                                                                }
                                                                                                if(_loc5_ || param2)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§;!8§);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(this.§]"4§);
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         addr205:
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         §§push(this.§[h§);
                                                                                                      }
                                                                                                      §§pop().§6W§(§§pop(),§§pop());
                                                                                                      addr208:
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               addr219:
                                                                                                            }
                                                                                                            §§goto(addr393);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr393:
                                                                                                            return;
                                                                                                            addr392:
                                                                                                         }
                                                                                                         §§goto(addr393);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.§^!]§(§9!H§);
                                                                                                         addr363:
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§goto(addr219);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr369:
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr383:
                                                                                                               this.§^!]§(§&e§);
                                                                                                               _loc3_.§2!K§();
                                                                                                               §§goto(addr369);
                                                                                                               addr386:
                                                                                                            }
                                                                                                            addr319:
                                                                                                            §§goto(addr393);
                                                                                                         }
                                                                                                         addr350:
                                                                                                      }
                                                                                                      §§goto(addr393);
                                                                                                   }
                                                                                                   §§goto(addr205);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr379:
                                                                                                   if(this.§;z§ <= 0)
                                                                                                   {
                                                                                                      §§goto(addr383);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr319);
                                                                                             }
                                                                                             §§goto(addr254);
                                                                                          }
                                                                                          §§goto(addr311);
                                                                                       }
                                                                                       §§goto(addr208);
                                                                                    }
                                                                                    §§goto(addr393);
                                                                                 }
                                                                                 §§goto(addr246);
                                                                                 addr318:
                                                                              }
                                                                              addr333:
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    addr349:
                                                                                    if(_loc3_.§'K§)
                                                                                    {
                                                                                       §§goto(addr350);
                                                                                    }
                                                                                    §§goto(addr219);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr389:
                                                                                    this.§^!]§(§&!K§);
                                                                                    §§goto(addr392);
                                                                                 }
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                           §§goto(addr290);
                                                                        }
                                                                        §§goto(addr281);
                                                                     }
                                                                     §§goto(addr149);
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr363);
                                                            }
                                                            §§goto(addr393);
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                   §§goto(addr333);
                                                }
                                                §§goto(addr377);
                                             }
                                             §§goto(addr379);
                                          }
                                          §§goto(addr389);
                                       }
                                       §§goto(addr383);
                                    }
                                    §§goto(addr349);
                                 }
                                 §§goto(addr387);
                              }
                              §§goto(addr318);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr246);
                     }
                  }
                  addr76:
               }
               §§goto(addr90);
            }
         }
         while(true)
         {
            §§goto(addr76);
         }
      }
      
      public function §;"4§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§ !X§ = null;
         if(!(_loc6_ && param2))
         {
            if(this.§9!L§.length > 0)
            {
               if(_loc7_ || this)
               {
                  _loc5_ = this.§9!L§[this.§<"§];
               }
               §§goto(addr75);
            }
            if(!_loc5_)
            {
               if(!(_loc6_ && param2))
               {
                  §§goto(addr75);
               }
            }
            _loc5_.setPosition(param1,param2);
            do
            {
               this.§6W§(param3,param4);
            }
            while(!(_loc7_ || this));
            
            return;
         }
         addr75:
      }
      
      protected function §6W§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§ !X§ = null;
         if(_loc4_ || param1)
         {
            this.§5![§ = §!"C§;
            if(_loc4_ || this)
            {
               this.§1!%§ = §'§;
               if(!_loc5_)
               {
                  if(this.§9!L§.length > 0)
                  {
                     if(!_loc5_)
                     {
                        _loc3_ = this.§9!L§[this.§<"§];
                     }
                     while(true)
                     {
                        this.§+J§ = new Date().time;
                        loop5:
                        while(true)
                        {
                           this.mLevelMain.§9"+§(_loc3_,param1,param2);
                           while(true)
                           {
                              if(!(_loc4_ || param2))
                              {
                                 continue loop5;
                              }
                              while(true)
                              {
                                 this.§"!>§(this.§<"§,_loc3_.§5J§ > 0);
                                 addr140:
                                 §§goto(addr147);
                              }
                           }
                        }
                     }
                     addr184:
                  }
                  if(!_loc3_)
                  {
                     if(!_loc5_)
                     {
                        return;
                     }
                     addr147:
                     while(!(_loc4_ || param2))
                     {
                        while(true)
                        {
                           this.§4c§ = false;
                           continue loop4;
                        }
                        continue loop7;
                     }
                     loop0:
                     while(true)
                     {
                        this.playBirdShotSound();
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              continue loop3;
                           }
                           if(this.§<"§ < this.§9!L§.length)
                           {
                              this.§^!]§(§4"%§);
                              if(!(_loc5_ && this))
                              {
                                 if(_loc4_ || param2)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc4_ || param2)
                                       {
                                          §§goto(addr63);
                                       }
                                       continue loop4;
                                    }
                                    continue;
                                 }
                                 addr114:
                                 this.§^!]§(§&!K§);
                              }
                              if(_loc4_ || _loc3_)
                              {
                                 break loop0;
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr114);
                        }
                        continue loop3;
                        §§goto(addr147);
                     }
                     addr63:
                     return;
                  }
                  this.mDragging = false;
                  §§goto(addr188);
                  §§goto(addr188);
               }
               §§goto(addr184);
            }
            §§goto(addr188);
         }
         §§goto(addr172);
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc3_)
         {
            §§push(§@"M§);
            §§push("BirdShot");
            if(_loc3_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§3"C§(§§pop());
         }
      }
      
      public function §`8§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§<"§);
         if(!(_loc5_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_ || param1)
            {
               if(§§pop() >= this.§9!L§.length)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(_loc6_)
                     {
                        if(!(_loc5_ && this))
                        {
                           break;
                        }
                        addr114:
                        this.§9!L§[_loc4_].update(param1,true,param2);
                     }
                     loop1:
                     while(true)
                     {
                        _loc4_++;
                        addr107:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     addr91:
                  }
                  while(_loc5_)
                  {
                     §§goto(addr107);
                     §§goto(addr91);
                  }
                  continue;
               }
               addr112:
               if(this.mSlingShotState == §+!`§)
               {
                  §§goto(addr114);
               }
               else
               {
                  this.§9!L§[_loc4_].update(param1,false,param2);
               }
               §§goto(addr107);
               §§goto(addr114);
            }
            §§goto(addr112);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§ !X§ = null;
         var _loc2_:* = 0;
         if(!_loc6_)
         {
            this.mDragging = false;
            while(true)
            {
               addr46:
               while(true)
               {
                  this.§?!r§();
               }
               addr35:
               if(_loc5_ || this)
               {
                  return false;
               }
            }
         }
         while(this.§?"B§ >= this.§9!L§.length)
         {
            if(_loc5_)
            {
               if(_loc6_)
               {
                  continue;
               }
               §§goto(addr35);
            }
            else if(true)
            {
               break;
            }
            §§goto(addr46);
         }
         _loc1_ = this.§9!L§[this.§?"B§];
         if(!_loc6_)
         {
            §§push(§8!<§.§3"[§(_loc1_.name).score);
            if(_loc5_ || _loc1_)
            {
               §§push(int(§§pop()));
            }
            _loc2_ = §§pop();
            loop3:
            while(true)
            {
               addr83:
               while(true)
               {
                  §§push(this.mLevelMain);
                  §§push(_loc2_);
                  §§push(§;P§.§0n§);
                  §§push(true);
                  §§push(_loc1_.x);
                  §§push(_loc1_.y);
                  if(!(_loc6_ && this))
                  {
                     §§push(3);
                     if(_loc5_)
                     {
                        addr105:
                        §§push(§§pop() - §§pop());
                        §§push(§0i§.§7R§(_loc1_.name));
                     }
                     §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     if(_loc6_)
                     {
                        break;
                     }
                     continue loop3;
                  }
                  §§goto(addr105);
               }
            }
         }
         return true;
      }
      
      public function §@Z§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§ !X§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§9!L§)
         {
            if(_loc5_)
            {
               §§push(_loc1_);
               if(_loc5_)
               {
                  §§push(int(§§pop() + §8!<§.§3"[§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §^w§() : int
      {
         return this.§`"&§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_ || param1)
         {
            §§push(this.§8!T§);
            loop0:
            while(true)
            {
               §§push(0);
               addr211:
               while(§§pop() >= §§pop())
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§8!T§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§8!T§ = §§pop();
                     continue loop0;
                  }
               }
               §§goto(addr26);
            }
            addr210:
         }
         loop3:
         while(true)
         {
            §§push(this.§8!T§);
            if(_loc3_ || _loc3_)
            {
               §§push(0);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() <= §§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§push(this.mLevelMain);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop().objects);
                           loop6:
                           while(true)
                           {
                              §§push(§§pop().§'n§(this.§?"M§,this.§""P§));
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
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          break;
                                       }
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue loop7;
                                       }
                                       if(§§pop() >= 0)
                                       {
                                          §§push(this.mLevelMain);
                                          loop10:
                                          while(_loc3_)
                                          {
                                             §§push(§§pop().objects);
                                             loop11:
                                             while(!_loc4_)
                                             {
                                                §§push(_loc2_);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop().§,!§(§§pop()));
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§[p§);
                                                      while(§§pop())
                                                      {
                                                         §§push(this.mLevelMain);
                                                         if(_loc4_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§push(§§pop().objects);
                                                         if(!_loc3_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§push(_loc2_);
                                                         if(!_loc3_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§push(§§pop().§,!§(§§pop()));
                                                         if(!_loc3_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         §§push(§§pop().§]!!§());
                                                         if(!_loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  this.§8!T§ = 2000;
                                                                  addr83:
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr26);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr157:
                                                                        this.applyGravity(0.1);
                                                                        addr160:
                                                                        if(!(_loc3_ || this))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        this.§8!T§ = 0;
                                                                     }
                                                                     §§goto(addr26);
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  §§goto(addr26);
                                                               }
                                                               addr26:
                                                               return;
                                                               addr131:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this.§8!T§ = 500;
                                                            if(_loc3_ || param1)
                                                            {
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  §§goto(addr26);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr212);
                                                               }
                                                            }
                                                            §§goto(addr26);
                                                         }
                                                         §§goto(addr83);
                                                      }
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         this.§8!T§ = -1;
                                                         §§goto(addr131);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr160);
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop6;
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr157);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr26);
               }
               else
               {
                  §§goto(addr211);
               }
            }
            else
            {
               §§goto(addr210);
            }
            §§goto(addr211);
         }
      }
      
      public function §5!$§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         loop0:
         while(true)
         {
            §§push(this.mLevelMain.objects.§'n§(this.§?"M§,this.§""P§));
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
                     while(true)
                     {
                        §§push(-1);
                        loop5:
                        while(§§pop() == §§pop())
                        {
                           this.applyGravity(0.1);
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc3_ || _loc1_)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(_loc3_ || this)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop5;
                                       }
                                       §§push(§§pop() - 1);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          _loc1_ = §§pop();
                                          addr55:
                                          if(_loc4_ && _loc1_)
                                          {
                                             continue loop2;
                                          }
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue loop1;
                                          }
                                          §§push(0);
                                       }
                                    }
                                    if(§§pop() <= §§pop())
                                    {
                                       if(_loc4_ && _loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr55);
                           }
                           while(true)
                           {
                              if(_loc4_ && _loc2_)
                              {
                                 addr116:
                                 break loop5;
                              }
                              if(_loc3_)
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                        }
                        while(true)
                        {
                           §§goto(addr95);
                           §§goto(addr99);
                        }
                        §§goto(addr116);
                     }
                  }
                  return;
               }
            }
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§?!T§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr84:
               while(true)
               {
                  §§push(-§§pop());
                  addr85:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr83:
         }
         while(true)
         {
            §§push(this.§?!T§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(param2);
               if(_loc4_)
               {
                  if(_loc4_ || param2)
                  {
                     addr70:
                     §§push(-§§pop());
                     if(!(_loc3_ && param2))
                     {
                        §§pop().y = §§pop();
                        if(_loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr84);
                  }
                  §§goto(addr85);
               }
               §§goto(addr70);
            }
            else
            {
               §§goto(addr83);
            }
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.mSlingShotState == §9!H§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_ || this)
                           {
                              §§push(true);
                              break;
                           }
                           addr114:
                           while(true)
                           {
                              §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                           }
                           addr114:
                        }
                        else
                        {
                           addr24:
                           §§push(false);
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(!(_loc3_ && param1))
                           {
                              return §§pop();
                           }
                        }
                        while(_loc3_ && param1)
                        {
                           while(true)
                           {
                              §§pop();
                              §§goto(addr114);
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr24);
                  }
                  addr105:
                  return §§pop();
                  addr88:
               }
               §§goto(addr113);
            }
         }
         §§goto(addr114);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mSlingShotState == §9!H§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr44:
                     §§push(this.§;!8§);
                     §§push(this.§]"4§);
                     if(_loc1_)
                     {
                        §§push(§§pop() * §=!$§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.mDragging = false;
            if(!_loc2_)
            {
               addr39:
               this.§^!]§(§9!H§);
            }
            var _loc1_:§ !X§ = this.§9!L§[this.§<"§];
            if(_loc3_)
            {
               _loc1_.§!H§(§[!J§.§8"V§);
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.mDragging = true;
         }
         var _loc1_:§ !X§ = this.§9!L§[this.§<"§];
         if(_loc2_ || _loc3_)
         {
            _loc1_.§!H§(§[!J§.§4p§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4c§ = true;
         }
      }
      
      protected function §"!>§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§ !X§ = null;
         if(_loc5_ || param2)
         {
            if(param1 < 0)
            {
               if(!_loc4_)
               {
                  §§goto(addr32);
               }
            }
            if(this.§9!L§[param1])
            {
               if(!_loc4_)
               {
                  _loc3_ = this.§9!L§[param1];
                  if(_loc5_ || this)
                  {
                     this.§7!g§.removeChild(_loc3_.sprite);
                     loop0:
                     while(true)
                     {
                        if(param2)
                        {
                           if(_loc5_ || this)
                           {
                              this.§1"%§(this.§9!L§[param1]);
                           }
                           while(true)
                           {
                              loop3:
                              while(_loc5_ || param1)
                              {
                                 while(true)
                                 {
                                    this.§9!L§[param1] = null;
                                    if(_loc4_ && _loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc3_.dispose();
                                       continue loop3;
                                    }
                                 }
                                 this.§9!L§.splice(param1,1);
                                 return;
                              }
                           }
                        }
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr132);
            }
            §§goto(addr127);
         }
         addr32:
      }
      
      public function §1"%§(param1:§ !X§) : void
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
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(this.mLevelMain);
                     if(_loc9_)
                     {
                        §§push(§§pop().particles);
                        if(!(_loc10_ && param1))
                        {
                           §§push(§0i§.§'!N§);
                           if(_loc9_)
                           {
                              §§push(§6!O§.PARTICLE_GROUP_GAME_EFFECTS);
                              if(!_loc10_)
                              {
                                 §§push(§0i§.PARTICLE_TYPE_KINETIC_PARTICLE);
                                 if(_loc9_)
                                 {
                                    §§push(param1.x);
                                    if(_loc9_)
                                    {
                                       §§push(param1.y);
                                       if(_loc9_)
                                       {
                                          if(_loc9_)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(1000);
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push("");
                                                   if(_loc9_ || param1)
                                                   {
                                                      §§push(0);
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         §§pop().§"!J§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                         addr119:
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         loop33:
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            while(_loc9_ || _loc3_)
                                                            {
                                                               _loc5_++;
                                                               continue loop33;
                                                            }
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(param1.sprite);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(-§§pop().width);
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     §§push(§'!S§.§2"<§);
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop11:
                                                                                 while(_loc9_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Math.random() * -_loc7_);
                                                                                       addr353:
                                                                                       addr411:
                                                                                       addr256:
                                                                                       loop13:
                                                                                       while(_loc9_ || _loc2_)
                                                                                       {
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             §§push(2);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr369:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr370:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr371:
                                                                                                      while(!_loc10_)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      addr412:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr413:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr368:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                             }
                                                                                             addr406:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(180 / Math.PI);
                                                                                             break loop13;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr412);
                                                                                       }
                                                                                       if(_loc10_ && this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(Math.random() * -_loc8_);
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          addr275:
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(2);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr281:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(_loc10_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§goto(addr370);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr353);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                          §§goto(addr369);
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                 }
                                                                                 addr401:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    break loop9;
                                                                                 }
                                                                              }
                                                                              addr344:
                                                                           }
                                                                           break;
                                                                           addr223:
                                                                           if(_loc10_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 addr245:
                                                                                 §§push(§§pop());
                                                                                 if(_loc9_ || _loc2_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§goto(addr256);
                                                                                    }
                                                                                    §§goto(addr301);
                                                                                 }
                                                                                 §§goto(addr281);
                                                                              }
                                                                              §§goto(addr301);
                                                                           }
                                                                           §§goto(addr407);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc10_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr406);
                                                                              }
                                                                              addr405:
                                                                           }
                                                                           §§goto(addr407);
                                                                        }
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                            }
                                                            addr182:
                                                         }
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                   §§goto(addr149);
                                                }
                                                §§goto(addr148);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr316);
               }
               §§goto(addr119);
            }
            else
            {
               §§push(_loc4_);
               if(_loc9_ || _loc2_)
               {
                  §§goto(addr401);
                  §§push(Math.random() * (720 / _loc3_));
               }
            }
            §§goto(addr405);
         }
      }
      
      public function §8`§(param1:§ !X§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§"!>§(this.§9!L§.indexOf(param1));
         }
      }
      
      public function §5!r§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:§ !X§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§ !X§ = null;
         var _loc2_:* = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() >= this.§9!L§.length - 1)
               {
                  if(_loc7_ || this)
                  {
                     addr300:
                     if(this.§7!g§.numChildren > 0)
                     {
                        §§push(this.§7!g§);
                        if(_loc7_ || _loc3_)
                        {
                           §§pop().removeChildAt(0);
                           if(!(_loc6_ && _loc1_))
                           {
                              §§goto(addr300);
                           }
                           addr328:
                           while(_loc2_ < this.§9!L§.length)
                           {
                              _loc1_ = this.§9!L§[_loc2_];
                              if(_loc7_)
                              {
                                 this.§7!g§.addChildAt(_loc1_.sprite,0);
                                 if(!(_loc7_ || _loc3_))
                                 {
                                    continue;
                                 }
                              }
                              _loc2_++;
                           }
                           §§goto(addr367);
                        }
                        §§goto(addr300);
                     }
                     if(_loc7_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc7_ || _loc1_)
                        {
                           break;
                        }
                        §§goto(addr363);
                     }
                  }
                  addr367:
                  return;
               }
               _loc1_ = this.§9!L§[_loc2_];
               if(!_loc6_)
               {
                  §§push(_loc1_.§'K§);
                  if(!(_loc6_ && _loc1_))
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc7_ || this)
                     {
                        addr56:
                        if(§§pop())
                        {
                           if(_loc7_ || _loc1_)
                           {
                              addr65:
                              §§pop();
                              if(!(_loc7_ || _loc3_))
                              {
                                 continue;
                              }
                              §§push(_loc2_ == 0);
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc6_ && _loc2_)
                           {
                              addr138:
                              §§push(Number(Math.sqrt((this.§4!K§ - this.§9!L§[_loc2_ + 1].x) * (this.§4!K§ - this.§9!L§[_loc2_ + 1].x) + (this.§7!#§ - this.§9!L§[_loc2_ + 1].y) * (this.§7!#§ - this.§9!L§[_loc2_ + 1].y))));
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr201:
                                 §§push(§§pop());
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    _loc4_ = §§pop();
                                    addr210:
                                    §§push(_loc3_);
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc5_ = this.§9!L§[_loc2_];
                                       if(!_loc6_)
                                       {
                                          this.§9!L§.splice(_loc2_,1);
                                          loop1:
                                          while(true)
                                          {
                                             addr241:
                                             while(true)
                                             {
                                                this.§9!L§.splice(_loc2_ + 1,0,_loc5_);
                                                continue loop1;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc2_ = int(Math.max(-1,_loc2_ - 2));
                                          if(!(_loc6_ && _loc1_))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr241);
                                          }
                                          §§goto(addr250);
                                       }
                                       addr264:
                                       _loc2_++;
                                    }
                                    continue;
                                 }
                                 §§goto(addr264);
                              }
                              §§goto(addr210);
                           }
                           §§goto(addr264);
                        }
                        else
                        {
                           §§push(Number(Math.sqrt((this.§4!K§ - this.§9!L§[_loc2_].x) * (this.§4!K§ - this.§9!L§[_loc2_].x) + (this.§7!#§ - this.§9!L§[_loc2_].y) * (this.§7!#§ - this.§9!L§[_loc2_].y))));
                           if(_loc7_ || _loc1_)
                           {
                              _loc3_ = §§pop();
                              if(!(_loc7_ || _loc3_))
                              {
                                 continue;
                              }
                              §§goto(addr138);
                           }
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr56);
               }
               §§goto(addr138);
            }
            break;
         }
         _loc2_ = §§pop();
         if(_loc7_ || _loc2_)
         {
         }
         §§goto(addr328);
      }
      
      public function §?!#§(param1:Number, param2:Number) : § !X§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§9!L§.length)
            {
               if(!(_loc4_ && param1))
               {
                  break;
               }
               loop3:
               while(true)
               {
                  if(!(_loc4_ && param1))
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§goto(addr76);
                  }
                  while(true)
                  {
                     continue loop3;
                  }
               }
               continue;
            }
            if(this.§9!L§[_loc3_])
            {
               addr76:
               while(true)
               {
                  if(this.§9!L§[_loc3_].isInCoordinates(param1,param2))
                  {
                     if(!(_loc4_ && param2))
                     {
                        break;
                     }
                  }
                  addr47:
                  while(true)
                  {
                     _loc3_++;
                     continue loop3;
                  }
               }
               return this.§9!L§[_loc3_];
            }
            §§goto(addr47);
         }
         return null;
      }
      
      public function §+!D§(param1:Number, param2:Number) : §&=§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§4!K§);
               loop1:
               while(true)
               {
                  §§push(this.§]"4§);
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
                                             while(_loc3_)
                                             {
                                                §§push(this.§4!K§);
                                                loop11:
                                                for(; !_loc4_; while(true)
                                                {
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§push(this.§]"4§);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(4);
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc4_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            addr133:
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc3_ || param1))
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§goto(addr143);
                                                               §§push(§§pop() - §§pop());
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr167);
                                                            }
                                                            §§goto(addr175);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr166);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr165);
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr133);
                                                },continue loop3)
                                                {
                                                   §§push(this.§]"4§);
                                                   while(true)
                                                   {
                                                      §§push(4);
                                                      addr166:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr167:
                                                         while(_loc3_ || param2)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop15:
                                                            for(; _loc3_ || _loc3_; if(_loc4_ && this)
                                                            {
                                                               continue;
                                                            },§§push(§§pop() <= §§pop()),if(_loc3_ || _loc3_)
                                                            {
                                                               §§goto(addr55);
                                                            },§§goto(addr151))
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop26;
                                                                           }
                                                                           addr146:
                                                                           if(§§pop())
                                                                           {
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr152:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    addr154:
                                                                                    §§push(this.§7!#§);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       while(!_loc4_)
                                                                                       {
                                                                                          §§push(this.§7!#§);
                                                                                          continue loop11;
                                                                                          §§goto(addr154);
                                                                                       }
                                                                                       continue loop10;
                                                                                       addr90:
                                                                                    }
                                                                                    §§push(this.§""P§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    addr143:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() >= §§pop());
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       §§goto(addr146);
                                                                                    }
                                                                                    continue loop24;
                                                                                 }
                                                                                 §§goto(addr215);
                                                                              }
                                                                              addr151:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc4_ && param2))
                                                                                 {
                                                                                    return this;
                                                                                 }
                                                                                 if(_loc3_ || param2)
                                                                                 {
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       addr87:
                                                                                       break;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§goto(addr152);
                                                                              }
                                                                              break;
                                                                              addr55:
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr207);
                                                                           }
                                                                           return null;
                                                                        }
                                                                        while(!(_loc4_ && this))
                                                                        {
                                                                           §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(param2);
                                                                           }
                                                                        }
                                                                        continue loop8;
                                                                        addr207:
                                                                        §§goto(addr90);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr207);
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             continue loop0;
                                          }
                                       }
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
         }
         §§goto(addr87);
      }
      
      public function §4!U§(param1:§0"T§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§ !X§ = null;
         var _loc4_:§^m§ = null;
         if(!(_loc5_ && param1))
         {
            param1.§7x§ = this.§4!K§;
            if(!(_loc5_ && param1))
            {
               param1.§;"H§ = this.§7!#§;
            }
         }
         var _loc2_:* = Number(0);
         loop0:
         while(_loc2_ < this.§9!L§.length)
         {
            _loc3_ = this.§9!L§[_loc2_];
            (_loc4_ = new §^m§()).x = _loc3_.x;
            if(!(_loc5_ && _loc2_))
            {
               _loc4_.y = _loc3_.y;
            }
            while(true)
            {
               _loc4_.id = _loc3_.name;
               loop2:
               while(!(_loc5_ && param1))
               {
                  do
                  {
                     param1.§78§(_loc4_);
                     while(true)
                     {
                        if(!(_loc6_ || this))
                        {
                           continue loop2;
                        }
                        §§push(_loc2_);
                        if(_loc6_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc6_ || param1)
                           {
                              addr94:
                              §§push(Number(§§pop()));
                           }
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr98);
                     continue loop2;
                  }
                  while(false);
                  
                  continue loop0;
               }
            }
         }
      }
      
      public function §#!^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§9!L§.length > 0)
         {
            this.§8`§(this.§9!L§[0]);
            if(!_loc1_)
            {
               break;
            }
         }
      }
      
      public function §7!r§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(_loc5_ || param1)
            {
               if(§§pop() >= this.§9!L§.length)
               {
                  loop2:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        addr206:
                        _loc3_.push(this.§9!L§[_loc4_]);
                        break;
                     }
                     §§push(this.§4!K§);
                     loop3:
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           §§push(§§pop() > param1.x);
                           if(_loc5_)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr165:
                                    while(true)
                                    {
                                       §§pop();
                                       addr166:
                                       while(true)
                                       {
                                          §§push(this.§4!K§);
                                          addr129:
                                          while(true)
                                          {
                                             §§push(§§pop() < param2.x);
                                          }
                                       }
                                    }
                                    addr165:
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
                                             loop8:
                                             while(true)
                                             {
                                                §§pop();
                                                loop9:
                                                while(!_loc6_)
                                                {
                                                   §§push(this.§7!#§);
                                                   loop10:
                                                   for(; !(_loc6_ && this); §§push(this.§7!#§),if(_loc6_)
                                                   {
                                                      continue;
                                                   },if(!_loc6_)
                                                   {
                                                      continue loop3;
                                                   },§§goto(addr129))
                                                   {
                                                      if(!(_loc5_ || param2))
                                                      {
                                                         addr169:
                                                         §§push(§§pop() + 1);
                                                         break loop1;
                                                      }
                                                      §§push(§§pop() > param1.y);
                                                      if(!_loc5_)
                                                      {
                                                         addr109:
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr129);
                                                               addr121:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr165);
                                                            }
                                                         }
                                                         §§goto(addr166);
                                                         addr109:
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr165);
                        }
                        break;
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        §§push(§§pop() < param2.y);
                        if(!_loc6_)
                        {
                           §§goto(addr48);
                        }
                        §§goto(addr109);
                     }
                     _loc4_ = §§pop();
                     §§goto(addr172);
                  }
               }
               else if(this.§9!L§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr206);
               }
               §§goto(addr169);
               §§push(_loc4_);
            }
            while(true)
            {
               §§goto(addr171);
               §§goto(addr169);
            }
         }
      }
      
      public function §38§() : Array
      {
         return [this.§"%§,this.§7]§];
      }
      
      public function §6p§(param1:String, param2:Number, param3:Number) : § !X§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§ !X§ = this.addSlingshotObject(param1,param2,param3);
         if(_loc5_ || param1)
         {
            this.§5!r§();
         }
         return _loc4_;
      }
      
      public function §0"I§() : Number
      {
         return this.§9!L§.length;
      }
      
      public function §]K§() : Boolean
      {
         return this.§0I§;
      }
   }
}
