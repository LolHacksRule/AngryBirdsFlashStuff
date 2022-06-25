package §,!5§
{
   import § use§.§'!]§;
   import §"R§.§ !Q§;
   import §'!9§.§%!g§;
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §-w§.§+W§;
   import §-w§.§1!;§;
   import §0!N§.§=+§;
   import §<!1§.§<!R§;
   import §<!1§.§<F§;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §^!+§.Texture;
   import §^_§.§!>§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>!A§
   {
      
      public static const §2!Q§:int = 0;
      
      public static const §&f§:int = 1;
      
      public static const §1!2§:int = 2;
      
      public static const §-8§:int = 3;
      
      public static const §,U§:int = 5;
      
      public static const §,!H§:int = 3151368;
      
      protected static const §?!,§:int = 8;
      
      protected static const §4!N§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §,5§:Number = -0.7;
      
      protected static const §&! §:Number = 0;
      
      protected static var §,!^§:Texture;
      
      public static const §%P§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §>!A§))
         {
            §2!Q§ = 0;
            while(true)
            {
               §&f§ = 1;
               while(true)
               {
                  §1!2§ = 2;
                  while(_loc1_)
                  {
                     §-8§ = 3;
                     loop3:
                     while(true)
                     {
                        §,U§ = 5;
                        addr139:
                        while(true)
                        {
                           §,!H§ = 3151368;
                           loop5:
                           while(true)
                           {
                              §?!,§ = 8;
                              addr129:
                              while(true)
                              {
                                 §4!N§ = 0;
                                 continue loop5;
                                 addr86:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §,5§ = -0.7;
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
         while(true)
         {
            BIRD_LAUNCH_FORCE = 46.25;
            §§goto(addr98);
         }
         §§goto(addr43);
      }
      
      public var §?l§:§^g§;
      
      public var §,G§:Number;
      
      public var §78§:Number;
      
      public var §=!X§:Number;
      
      protected var §"!d§:Number;
      
      protected var §5!L§:Number;
      
      protected var §5f§:Number;
      
      protected var §[W§:Number;
      
      public var §>!]§:Number;
      
      public var §4i§:Boolean = false;
      
      protected var §5!G§:Number;
      
      public var §?$§:Vector.<§7!,§>;
      
      public var §;&§:int;
      
      public var §,1§:int;
      
      public var §^x§:Number;
      
      public var §42§:Sprite;
      
      public var §2m§:int = 0;
      
      public var §-H§:Number = 0;
      
      public var §9m§:Array;
      
      public var §,!`§:Array;
      
      public var mSlingShotState:int;
      
      public var § !4§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §>!H§:Boolean = false;
      
      public var §'!l§:Number;
      
      protected var §8X§:Sprite;
      
      protected var §8!u§:§%!g§;
      
      protected var §,i§:§%!g§;
      
      protected var §0!d§:Sprite;
      
      protected var §&!5§:Sprite;
      
      protected var §'c§:Sprite;
      
      protected var § !,§:§?!U§;
      
      protected var §6!@§:§?!U§;
      
      private var §>J§:Number = 0;
      
      private var §[!n§:int = 0;
      
      protected var §'![§:Number = -0.7;
      
      protected var §`X§:Number = 0;
      
      public function §>!A§(param1:§^g§, param2:§=+§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§'!]§ = null;
         if(!(_loc7_ && param2))
         {
            this.§?$§ = new Vector.<§7!,§>();
         }
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.§?l§ = param1;
               while(true)
               {
                  this.§8X§ = param3;
                  loop3:
                  while(true)
                  {
                     if(!param2)
                     {
                        §!>§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                        break;
                     }
                     while(true)
                     {
                        this.setPosition(param2.§6y§,param2.§8!r§);
                        continue loop3;
                        addr53:
                        while(!(_loc7_ && param3))
                        {
                           _loc4_ = 0;
                           if(_loc6_)
                           {
                              if(!(_loc7_ && this))
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr239:
                  this.§4&§(§-8§);
                  addr226:
                  if(!(_loc7_ && param3))
                  {
                     addr217:
                     this.§'!l§ = 0;
                     this.§`!P§();
                     addr221:
                     if(!_loc7_)
                     {
                        this.update(0,true);
                        addr206:
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              this.§2! §();
                              addr184:
                              if(_loc6_ || param3)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!(_loc7_ && param3))
                                    {
                                       this.updateAnimations(0);
                                       if(!(_loc7_ && param2))
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                addr270:
                                                §§push(§!>§);
                                                §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                                if(!_loc7_)
                                                {
                                                   §§push(this.§,G§);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop() + " ");
                                                         if(_loc7_)
                                                         {
                                                         }
                                                         addr288:
                                                         §§pop().log(§§pop());
                                                         this.§4&§(§-8§);
                                                         §§goto(addr217);
                                                         addr289:
                                                         addr253:
                                                      }
                                                      §§push(this.§78§);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr288);
                                             }
                                             return;
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr289);
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr239);
                        }
                        §§goto(addr221);
                        addr216:
                     }
                     §§goto(addr253);
                  }
                  addr246:
                  addr293:
                  if(_loc6_)
                  {
                     §§goto(addr288);
                  }
                  if(this.§?$§.length <= 0)
                  {
                     §§goto(addr270);
                  }
                  this.§4&§(§2!Q§);
                  §§goto(addr246);
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8X§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§>J§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§;&§ < this.§?$§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§?$§.length > 0)
            {
               this.§]2§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§?$§ = null;
               loop2:
               while(true)
               {
                  §§push(this.§8X§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        while(_loc1_ || _loc1_)
                        {
                           §§push(this.§8X§);
                           while(true)
                           {
                              §§pop().dispose();
                              addr104:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 this.§8X§ = null;
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr58:
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           this.§,!`§ = null;
                           if(!_loc2_)
                           {
                              if(!(_loc1_ || this))
                              {
                                 §§goto(addr104);
                              }
                              return;
                           }
                           loop6:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc2_ && this)
                                 {
                                    break;
                                 }
                                 §§goto(addr58);
                              }
                              addr72:
                              while(true)
                              {
                                 this.§9m§ = null;
                                 continue loop6;
                              }
                           }
                           addr67:
                           §§goto(addr77);
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        this.§42§ = null;
                        §§goto(addr72);
                        §§goto(addr77);
                     }
                     continue;
                  }
                  §§goto(addr103);
               }
            }
         }
      }
      
      public function §9;§(param1:String, param2:Number, param3:Number, param4:int = -1) : §7!,§
      {
         var _loc5_:§7!,§;
         (_loc5_ = this.§ !§(param1,param2,param3,param4)).§`!a§();
         return _loc5_;
      }
      
      protected function § !§(param1:String, param2:Number, param3:Number, param4:int = -1) : §7!,§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§7!,§ = new §7!,§(this,new Sprite(),param1,param2,param3);
         if(_loc7_)
         {
            if(param4 < 0)
            {
               if(!(_loc6_ && param3))
               {
                  this.§?$§.push(_loc5_);
               }
               while(true)
               {
                  §§goto(addr45);
               }
               addr95:
            }
            else
            {
               this.§?$§.splice(param4,0,_loc5_);
            }
            while(true)
            {
               if(!_loc6_)
               {
                  §§goto(addr80);
               }
               else
               {
                  §§goto(addr95);
               }
               return _loc5_;
            }
         }
         §§goto(addr80);
      }
      
      public function §4&§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               while(true)
               {
                  §§push(§2!Q§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     while(true)
                     {
                        §§push(§&f§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              loop17:
                              while(true)
                              {
                                 this.§8!+§();
                                 addr290:
                                 addr270:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       break loop2;
                                    }
                                    continue loop0;
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    this.mDragging = false;
                                    if(!(_loc3_ || this))
                                    {
                                       loop19:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             addr225:
                                             addr189:
                                             while(_loc3_)
                                             {
                                                if(!this.mDragging)
                                                {
                                                   continue loop19;
                                                }
                                                §§goto(addr194);
                                             }
                                             this.§^x§ = 2000;
                                             §§goto(addr202);
                                          }
                                       }
                                       continue;
                                    }
                                    if(!_loc2_)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          break;
                                       }
                                       loop13:
                                       while(true)
                                       {
                                          this.§>!H§ = false;
                                          addr163:
                                          while(true)
                                          {
                                             if(_loc3_ || this)
                                             {
                                                this.§8!+§();
                                                loop15:
                                                while(!(_loc2_ && _loc3_))
                                                {
                                                   this.§?$§[this.§;&§].setPosition(this.§5f§ - this.§?$§[this.§;&§].radius * Math.cos(this.§-H§ / (180 / Math.PI)),this.§[W§ + this.§?$§[this.§;&§].radius * Math.sin(this.§-H§ / (180 / Math.PI)));
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(_loc2_ && this)
                                                      {
                                                         continue loop12;
                                                         addr202:
                                                      }
                                                      if(_loc2_ && this)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         continue loop17;
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                   while(_loc3_ || param1)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         addr314:
                                                         this.§^x§ = 1000;
                                                      }
                                                      §§goto(addr116);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§>!H§ = false;
                                                      break loop15;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§8!+§();
                                                   §§goto(addr229);
                                                   §§goto(addr151);
                                                }
                                                addr151:
                                             }
                                             else
                                             {
                                                addr260:
                                                if(_loc3_)
                                                {
                                                   this.§^x§ = 10000;
                                                   §§goto(addr265);
                                                }
                                             }
                                             §§goto(addr270);
                                          }
                                       }
                                    }
                                    §§goto(addr105);
                                    §§goto(addr163);
                                 }
                                 return;
                              }
                           }
                           else
                           {
                              §§push(this.mSlingShotState);
                              loop5:
                              while(true)
                              {
                                 §§push(§1!2§);
                                 addr250:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             break;
                                          }
                                          §§push(this.mSlingShotState);
                                          continue loop5;
                                       }
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           §§goto(addr260);
                        }
                     }
                  }
                  this.§8!+§();
                  §§goto(addr314);
               }
            }
         }
         §§goto(addr265);
      }
      
      public function get §3!w§() : §^g§
      {
         return this.§?l§;
      }
      
      public function §5k§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mSlingShotState == §-8§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr44:
                     return this.§^x§ <= 0;
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §+8§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§1!;§ = this.getSlingshotAnimation();
         var _loc2_:§+W§ = _loc1_.getFrame(0);
         var _loc3_:§+W§ = _loc1_.getFrame(1);
         if(_loc4_)
         {
            this.§ !,§ = new §?!U§(_loc2_.texture);
            while(true)
            {
               §§push(this.§ !,§);
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
               if(_loc5_ && this)
               {
                  continue;
               }
               this.§;>§();
               §§goto(addr201);
            }
         }
         while(true)
         {
            §§goto(addr230);
         }
      }
      
      protected function getSlingshotAnimation() : §1!;§
      {
         return this.§?l§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §;>§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc2_)
         {
            this.§"!d§ = this.§,G§;
            loop0:
            while(true)
            {
               addr56:
               while(true)
               {
                  this.§5!L§ = this.§78§;
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr56);
         }
         _loc1_ = null;
      }
      
      protected function §+! §() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(_loc3_ || _loc1_)
         {
            if(!§,!^§)
            {
               if(!(_loc4_ && _loc1_))
               {
                  addr35:
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc3_)
                  {
                     §,!^§ = this.§?l§.textureManager.getTextureFromBitmapData(_loc2_);
                     addr52:
                     this.§'c§ = new Sprite();
                  }
                  §§goto(addr52);
               }
               var _loc1_:§?!U§ = new §?!U§(§,!^§);
               if(_loc3_ || this)
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
                           this.§'c§.addChild(_loc1_);
                           loop3:
                           while(!(_loc4_ && _loc1_))
                           {
                              this.§0!d§ = new Sprite();
                              loop4:
                              while(true)
                              {
                                 this.§8!u§ = new §%!g§(2,2,§,!H§);
                                 while(true)
                                 {
                                    this.§0!d§.addChild(this.§8!u§);
                                    loop6:
                                    while(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          this.§&!5§ = new Sprite();
                                          loop8:
                                          while(true)
                                          {
                                             this.§,i§ = new §%!g§(2,2,§,!H§);
                                             while(_loc3_)
                                             {
                                                continue loop1;
                                                this.§&!5§.addChild(this.§,i§);
                                                if(!_loc4_)
                                                {
                                                   continue loop8;
                                                }
                                             }
                                             continue loop6;
                                          }
                                       }
                                       return;
                                    }
                                    continue loop0;
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr109);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr52);
         }
         §§goto(addr35);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§[W§);
         if(!_loc6_)
         {
            §§push(§§pop() / §^g§.§^!S§);
            if(_loc7_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§5f§);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() / §^g§.§^!S§);
            if(_loc7_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(3.5);
         if(_loc7_)
         {
            §§push(8);
            §§push(this.§5!G§);
            if(_loc7_)
            {
               §§push(this.§>!]§);
               if(_loc7_ || _loc3_)
               {
                  addr82:
                  §§push(§§pop() - §§pop());
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(this.§5!G§);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(_loc7_ || _loc2_)
                  {
                     addr91:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  if(_loc7_)
                  {
                     §§push(this.§'c§);
                     loop0:
                     while(true)
                     {
                        §§push(_loc3_);
                        addr565:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           addr566:
                           while(true)
                           {
                              §§push(this.§'c§);
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr370);
               }
               §§push(§§pop() / §§pop());
            }
            §§goto(addr82);
         }
         §§goto(addr91);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            if(this.§?$§.length <= 0)
            {
               loop1:
               while(true)
               {
                  this.§0!f§();
                  while(true)
                  {
                     this.§ !§("BIRD_SARDINE",this.§,G§,this.§78§);
                     while(!_loc1_)
                     {
                        this.§4&§(§1!2§);
                        if(_loc2_ || _loc1_)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               if(!_loc1_)
               {
                  break;
               }
            }
            else
            {
               this.§]2§(0,true);
            }
         }
      }
      
      protected function §0!f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            § !Q§.playSound("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§4&§(§,U§);
         }
      }
      
      public function §8!+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.§"!d§);
            §§push(this.§5!L§);
            if(_loc1_ || _loc1_)
            {
               §§push(this.§5!G§);
               if(!(_loc2_ && _loc2_))
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
            §§push(this.§5f§);
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
                                 §§push(this.§[W§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param2);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc10_ && param1))
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   this.§>!]§ = Math.sqrt((param2 - this.§5!L§) * (param2 - this.§5!L§) + (param1 - this.§"!d§) * (param1 - this.§"!d§));
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(this.§>!]§);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(this.§5!G§);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(param3);
                                                                  loop14:
                                                                  while(_loc9_ || param2)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§"!d§);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§5!G§);
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§"!d§);
                                                                                    loop19:
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
                                                                                             §§push(this.§>!]§);
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1 = §§pop();
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§5!L§);
                                                                                                            loop27:
                                                                                                            while(_loc9_ || param2)
                                                                                                            {
                                                                                                               §§push(this.§5!G§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param2);
                                                                                                                  loop29:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§5!L§);
                                                                                                                     loop30:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        loop31:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           loop32:
                                                                                                                           while(!_loc10_)
                                                                                                                           {
                                                                                                                              §§push(this.§>!]§);
                                                                                                                              loop33:
                                                                                                                              for(; !(_loc10_ && this); if(_loc10_ && this)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              },§§goto(addr761),§§push(§§pop() * §§pop()))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                 loop34:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    loop35:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       loop36:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          param2 = §§pop();
                                                                                                                                          loop37:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                this.§>!]§ = this.§5!G§;
                                                                                                                                                loop38:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr1211:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§5f§ = param1;
                                                                                                                                                      loop40:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         this.§[W§ = param2;
                                                                                                                                                         loop41:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§-H§ = Math.atan2(-(this.§[W§ - this.§5!L§),this.§5f§ - this.§"!d§);
                                                                                                                                                            loop42:
                                                                                                                                                            for(; _loc9_ || param3; while(!(_loc10_ && param3))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr929);
                                                                                                                                                               §§push(this.§5!L§);
                                                                                                                                                            })
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§-H§);
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * (180 / Math.PI));
                                                                                                                                                               }
                                                                                                                                                               §§pop().§-H§ = §§pop();
                                                                                                                                                               loop43:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.mDragging);
                                                                                                                                                                  loop44:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(false);
                                                                                                                                                                     loop45:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() == §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           loop46:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1379:
                                                                                                                                                                                 if(_loc9_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(true);
                                                                                                                                                                                    break loop7;
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(this);
                                                                                                                                                                              §§push(param1);
                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + this.§'![§);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§5f§ = §§pop();
                                                                                                                                                                              loop47:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                 if(!(_loc10_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + this.§`X§);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§[W§ = §§pop();
                                                                                                                                                                                 loop48:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§-H§ = -160;
                                                                                                                                                                                    while(!(_loc10_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       loop107:
                                                                                                                                                                                       for(; !(_loc10_ && param1); if(_loc10_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       },if(_loc9_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop38;
                                                                                                                                                                                       },§§goto(addr1053))
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§>!]§ = _loc7_;
                                                                                                                                                                                          loop108:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§5f§ = param1;
                                                                                                                                                                                             loop109:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§[W§ = param2;
                                                                                                                                                                                                      loop110:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop111:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§>!]§);
                                                                                                                                                                                                            addr323:
                                                                                                                                                                                                            loop112:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.§5!G§);
                                                                                                                                                                                                                  loop113:
                                                                                                                                                                                                                  for(; _loc9_ || this; if(_loc10_ && param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  },if(_loc9_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc9_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc10_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc9_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr225);
                                                                                                                                                                                                                              §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr974);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr829);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr689);
                                                                                                                                                                                                                  },§§goto(addr725))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0.45);
                                                                                                                                                                                                                     loop114:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc10_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc10_ && param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc9_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc9_ || param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop32;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§4i§);
                                                                                                                                                                                                                                             loop116:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                loop117:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop121:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop122:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc9_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc9_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              this.§&§();
                                                                                                                                                                                                                                                                              loop123:
                                                                                                                                                                                                                                                                              for(; _loc9_; if(!(_loc9_ || param3))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                              },if(_loc9_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                                                                                                                       if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop117;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop116;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop44;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr889);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr841);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                break loop123;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr283:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(_loc9_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop121;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr846:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr853);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr878);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1059);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr707);
                                                                                                                                                                                                                                                                                          addr225:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr878);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr70:
                                                                                                                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                                                                                                                    addr90:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break loop121;
                                                                                                                                                                                                                                                                              },§§goto(addr393))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§4i§ = false;
                                                                                                                                                                                                                                                                                    loop124:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop122;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr73:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.§ !4§ = true;
                                                                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop123;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop124;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr73:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.§>!]§ = _loc8_;
                                                                                                                                                                                                                                                                                                continue loop108;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr555:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.§4i§ = true;
                                                                                                                                                                                                                                                                                             addr381:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc9_ || param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break loop124;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr73);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr378:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr73);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    loop147:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(this.§-H§);
                                                                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr651:
                                                                                                                                                                                                                                                                                          §§push(-90);
                                                                                                                                                                                                                                                                                          if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                                                                   if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     loop149:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                        addr703:
                                                                                                                                                                                                                                                                                                                        loop150:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                           loop151:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop48;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop111;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr707:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 loop87:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                                                                                                                                                                    loop88:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(this.§"!d§);
                                                                                                                                                                                                                                                                                                                                       loop89:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                          loop90:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                             loop91:
                                                                                                                                                                                                                                                                                                                                             while(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(this.§>!]§);
                                                                                                                                                                                                                                                                                                                                                loop92:
                                                                                                                                                                                                                                                                                                                                                while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                      addr1020:
                                                                                                                                                                                                                                                                                                                                                      while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            param1 = §§pop();
                                                                                                                                                                                                                                                                                                                                                            continue loop42;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      loop59:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(2);
                                                                                                                                                                                                                                                                                                                                                         loop60:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                            addr1082:
                                                                                                                                                                                                                                                                                                                                                            loop61:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                               loop62:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  addr1084:
                                                                                                                                                                                                                                                                                                                                                                  while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§>!]§);
                                                                                                                                                                                                                                                                                                                                                                     loop64:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                        addr1058:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                           addr1059:
                                                                                                                                                                                                                                                                                                                                                                           loop66:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                              loop67:
                                                                                                                                                                                                                                                                                                                                                                              while(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    loop77:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                       loop78:
                                                                                                                                                                                                                                                                                                                                                                                       for(; !_loc10_; while(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             while(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr899);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr983);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1100);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             continue loop2;
                                                                                                                                                                                                                                                                                                                                                                                             addr889:
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr843);
                                                                                                                                                                                                                                                                                                                                                                                       })
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             loop79:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                addr1053:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this.§-H§);
                                                                                                                                                                                                                                                                                                                                                                                                   addr969:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(-90);
                                                                                                                                                                                                                                                                                                                                                                                                      addr970:
                                                                                                                                                                                                                                                                                                                                                                                                      while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            addr974:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                               addr975:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop79;
                                                                                                                                                                                                                                                                                                                                                                                                                     addr979:
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop87;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop60;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                while(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this.§"!d§);
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr994:
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc9_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop87;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr1035:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         break loop147;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      _loc6_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                      while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.§5!G§);
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop59;
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(this.§-H§);
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop6;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr969);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop6;
                                                                                                                                                                                                                                                                                                                                                                                                            addr795:
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop47;
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr994);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop27;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                                                                                                                                                                                                                                addr983:
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr876:
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§>!]§);
                                                                                                                                                                                                                                                                                                                                                                                             loop129:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                addr877:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   addr878:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop78;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr979);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr766:
                                                                                                                                                                                                                                                                                                                                                                                                loop153:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                                                                                                                         addr776:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                                                                                                                               addr791:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.§"!d§);
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop64;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr635:
                                                                                                                                                                                                                                                                                                                                                                                                               loop166:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                  addr636:
                                                                                                                                                                                                                                                                                                                                                                                                                  loop167:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     param1 = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                                                                                                                              addr430:
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§5!L§);
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop62;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr449:
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                continue loop150;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr458:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§5!L§);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc9_ || param3))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop89;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop30;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc10_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr495:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr503:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr503:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.§>!]§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               break loop114;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop17;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop88;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop90;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr605:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr940:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.§5!L§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr942:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr765:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                         break loop167;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr762:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr840:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr627:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                               continue loop166;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop151;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         loop141:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr841:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  break loop117;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               continue loop141;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1043:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               continue loop77;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop4;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr840:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr620:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr944:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(this.§>!]§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr952:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        param2 = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop107;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop61;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop36;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr729:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr746:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Math.abs(this.§-H§ - -90 - _loc5_) - _loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop33;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              while(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr840);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop29;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop23;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr829:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop18;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr746);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr746:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop31;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr819:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop92;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop91;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                   break loop91;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr495);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                               continue loop34;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr746);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr832);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr449);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr582:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr458);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr579:
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr942);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr582);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       break loop114;
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop149;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr503);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr795);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop25;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop48;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop40;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop153;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop64;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr955);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop35;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop129;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       continue loop67;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                                                                                                                                                                                                                    addr853:
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          continue loop147;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       continue loop66;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop45;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr1114:
                                                                                                                                                                                                                                                                                                                                                                  addr1121:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        break loop37;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop13;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§push(4);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1097);
                                                                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr1105:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                        break loop112;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1118);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                     addr1122:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        break loop109;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1105);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr932:
                                                                                                                                                                                                                                                                                                                                                      while(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr940);
                                                                                                                                                                                                                                                                                                                                                         §§push(param2);
                                                                                                                                                                                                                                                                                                                                                         if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr819);
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1043);
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
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr948);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1082);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr703);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr944);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr689:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                         addr1038:
                                                                                                                                                                                                                                                                                                         while(_loc9_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1041);
                                                                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop1;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1037:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr811);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr840);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr806:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr973);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr970);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr651);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr805:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr806);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr766);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1037);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.§[W§ = param2;
                                                                                                                                                                                                                                                                                             while(_loc9_ || param3)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop111;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop37;
                                                                                                                                                                                                                                                                                             addr393:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop43;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr405:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr897);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop107;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr791);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop108;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop110;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr639);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr381);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop109;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr73);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop46;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr283);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr881);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr846);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr709);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr378);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr729);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr877);
                                                                                                                                                                                                                                       addr727:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr761:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr762);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                 addr182:
                                                                                                                                                                                                                                 if(!(_loc10_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop113;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc9_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc9_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                             addr532:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc9_ || param3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop11;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr719:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§5!G§);
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                         addr726:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr727);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr725:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(!_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr932);
                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr992);
                                                                                                                                                                                                                                                      addr929:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr932);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr952);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1038);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr765);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr620);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1058);
                                                                                                                                                                                                                              addr513:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr579);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr577:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(0.8);
                                                                                                                                                                                                                        addr152:
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        if(_loc10_ && param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc9_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc9_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr182);
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr975);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr726);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr489);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr513);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(!(_loc10_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr577);
                                                                                                                                                                                                                     §§push(param1);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop7;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1023);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc5_ = §§pop();
                                                                                                                                                                                                               §§goto(addr1114);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1084);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(!_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1114);
                                                                                                                                                                                                §§push(5);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop41;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop10;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1121);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc9_ || param2))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr70);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop26;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop38;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else if(!(_loc10_ && this))
                                                                                                                                             {
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1329:
                                                                                                                                          §§goto(addr1043);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(!(_loc9_ || this))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  §§goto(addr605);
                                                                                                                  §§push(this.§>!]§);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop24;
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
                                                                     this.§>!]§ = Math.sqrt((this.§[W§ - this.§5!L§) * (this.§[W§ - this.§5!L§) + (this.§5f§ - this.§"!d§) * (this.§5f§ - this.§"!d§));
                                                                     §§goto(addr1329);
                                                                  }
                                                                  break loop7;
                                                               }
                                                            }
                                                            §§goto(addr1211);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr1379);
                                          }
                                          addr1377:
                                       }
                                       break;
                                    }
                                    return §§pop();
                                 }
                              }
                           }
                        }
                        §§goto(addr1377);
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      protected function §&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § !Q§.playSound("SlingshotStreched");
         }
      }
      
      public function §9S§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this);
            §§push(this.§,G§);
            §§push(this.§78§);
            if(!_loc2_)
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
         if(_loc6_)
         {
            §§push(§§pop() - this.§,G§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            this.§,G§ = param1;
         }
         §§push(param2);
         if(_loc6_)
         {
            §§push(§§pop() - this.§78§);
            if(!(_loc7_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || param1)
         {
            this.§78§ = param2;
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§=!X§);
               if(!(_loc7_ && this))
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§=!X§ = §§pop();
               addr180:
               while(true)
               {
                  §§push(this);
                  §§push(this.§5!L§);
                  if(_loc6_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§5!L§ = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr138);
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§7!,§ = null;
         _loc2_ = this.§?$§[this.§;&§];
         §§push(this.§>!]§);
         if(_loc5_ || this)
         {
            §§push(§§pop() / this.§5!G§);
            if(!(_loc4_ && this))
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc1_))
            {
               if(_loc2_ != null)
               {
                  if(_loc5_ || this)
                  {
                     if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                     {
                        if(_loc5_ || _loc1_)
                        {
                           §§goto(addr90);
                        }
                        §§goto(addr129);
                     }
                     else
                     {
                        §§push(§>!A§.BIRD_LAUNCH_FORCE);
                        if(_loc5_ || _loc2_)
                        {
                           §§goto(addr122);
                        }
                     }
                     §§goto(addr132);
                  }
                  addr90:
                  §§push(§>!A§.BIRD_LAUNCH_FORCE_GREEN);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_ || _loc1_)
                     {
                        addr125:
                        §§push(Number(§§pop()));
                        if(!_loc4_)
                        {
                           _loc1_ = §§pop();
                           addr129:
                           §§push(_loc1_);
                           if(!_loc4_)
                           {
                              addr132:
                              §§push(§§pop() * _loc3_);
                           }
                        }
                     }
                     §§goto(addr132);
                  }
                  else
                  {
                     addr122:
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        §§goto(addr125);
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr129);
         }
         §§goto(addr49);
      }
      
      public function §"!S§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§7!,§ = null;
         if(_loc3_)
         {
            if(this.§?$§.length > this.§;&§)
            {
               if(_loc3_ || _loc3_)
               {
                  addr55:
                  _loc1_ = this.§?$§[this.§;&§];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr55);
      }
      
      public function §<!r§() : Point
      {
         return new Point(this.§"!d§,this.§5!L§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7!,§ = null;
         if(_loc4_ || _loc3_)
         {
            this.§!o§(param1);
         }
         loop0:
         while(true)
         {
            if(this.§ !4§)
            {
               loop1:
               while(true)
               {
                  this.updateAnimations(param1);
                  addr104:
                  while(true)
                  {
                  }
                  loop7:
                  while(true)
                  {
                     if(_loc5_ && _loc3_)
                     {
                        continue loop1;
                     }
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        if(this.mSlingShotState != §-8§)
                        {
                           this.§=W§(param1,param2);
                           break;
                        }
                        if(!(_loc4_ || param2))
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           continue loop7;
                        }
                        if(_loc4_ || this)
                        {
                           §§goto(addr365);
                        }
                        addr74:
                        while(true)
                        {
                           this.§^x§ = 0;
                           continue loop7;
                        }
                     }
                     addr27:
                     if(_loc4_ || param2)
                     {
                        if(!(_loc5_ && param2))
                        {
                           if(false)
                           {
                              addr96:
                              while(true)
                              {
                                 if(this.§^x§ >= 0)
                                 {
                                    §§goto(addr27);
                                 }
                                 §§goto(addr74);
                              }
                              while(true)
                              {
                                 §§goto(addr69);
                                 §§goto(addr27);
                              }
                              addr69:
                              addr96:
                           }
                           _loc3_ = null;
                           if(!(_loc5_ && this))
                           {
                              if(this.§?$§.length > 0)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    _loc3_ = this.§?$§[this.§;&§];
                                    addr138:
                                    if(_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          _loc3_.§@s§(param1);
                                          if(_loc4_ || this)
                                          {
                                             addr359:
                                             if(_loc3_)
                                             {
                                                addr348:
                                                if(this.mSlingShotState != §2!Q§)
                                                {
                                                   addr311:
                                                   §§push(this.mSlingShotState);
                                                   if(!_loc5_)
                                                   {
                                                      addr314:
                                                      if(§§pop() != §&f§)
                                                      {
                                                         §§push(this.mSlingShotState);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§1!2§);
                                                            if(_loc4_)
                                                            {
                                                               if(!(_loc4_ || param2))
                                                               {
                                                                  §§goto(addr348);
                                                               }
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_ || param2)
                                                                        {
                                                                           addr234:
                                                                           §§push(_loc3_);
                                                                           §§push(this.§5f§);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              §§push(_loc3_.radius);
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() * Math.cos(this.§-H§ / (180 / Math.PI)));
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr266:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    §§push(this.§[W§);
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       addr275:
                                                                                       §§push(_loc3_.radius);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(§§pop() * Math.sin(this.§-H§ / (180 / Math.PI)));
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                 }
                                                                                 §§pop().setPosition(§§pop(),§§pop());
                                                                                 addr291:
                                                                                 if(!(_loc5_ && param2))
                                                                                 {
                                                                                    if(_loc4_ || param2)
                                                                                    {
                                                                                       §§push(this.§>!H§);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr291);
                                                                                                }
                                                                                                §§push(this);
                                                                                                §§push(this.§>!]§);
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   §§push(this.§5!G§);
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      addr193:
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      §§push(this.§-H§);
                                                                                                   }
                                                                                                   §§pop().§ !n§(§§pop(),§§pop());
                                                                                                   addr196:
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         addr200:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr320:
                                                                                                      this.§4&§(§1!2§);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§goto(addr200);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr364:
                                                                                                            addr365:
                                                                                                            return;
                                                                                                            addr364:
                                                                                                         }
                                                                                                         §§goto(addr365);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr355:
                                                                                                         this.§4&§(§&f§);
                                                                                                         _loc3_.§;j§();
                                                                                                         §§goto(addr365);
                                                                                                         addr341:
                                                                                                         addr358:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr365);
                                                                                                }
                                                                                                §§goto(addr193);
                                                                                             }
                                                                                             §§goto(addr196);
                                                                                          }
                                                                                          §§goto(addr365);
                                                                                       }
                                                                                       addr319:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr320);
                                                                                       }
                                                                                       §§goto(addr200);
                                                                                    }
                                                                                    §§goto(addr341);
                                                                                 }
                                                                                 addr315:
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr319);
                                                                                    §§push(_loc3_.§5!p§);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr361:
                                                                                    this.§4&§(§-8§);
                                                                                    §§goto(addr364);
                                                                                 }
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr275);
                                                                           }
                                                                           §§goto(addr266);
                                                                        }
                                                                        §§goto(addr358);
                                                                     }
                                                                     §§goto(addr320);
                                                                  }
                                                                  §§goto(addr291);
                                                               }
                                                               §§goto(addr365);
                                                            }
                                                            §§goto(addr314);
                                                         }
                                                         §§goto(addr311);
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                   §§goto(addr348);
                                                }
                                                if(!_loc5_)
                                                {
                                                   if(this.§^x§ <= 0)
                                                   {
                                                   }
                                                }
                                                §§goto(addr355);
                                             }
                                             §§goto(addr361);
                                          }
                                          §§goto(addr355);
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr359);
                                 }
                                 §§goto(addr364);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr361);
                        }
                        break;
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr104);
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§^x§);
               if(_loc4_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§^x§ = §§pop();
               §§goto(addr96);
               §§goto(addr104);
            }
         }
      }
      
      public function §!!p§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§7!,§ = null;
         if(_loc7_ || param1)
         {
            if(this.§?$§.length > 0)
            {
               if(_loc7_)
               {
                  _loc5_ = this.§?$§[this.§;&§];
                  addr61:
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
                     do
                     {
                        this.§ !n§(param3,param4);
                     }
                     while(!(_loc7_ || param3));
                     
                  }
               }
               return;
            }
            §§goto(addr61);
         }
         §§goto(addr86);
      }
      
      protected function § !n§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7!,§ = null;
         if(!(_loc4_ && param1))
         {
            this.§'![§ = §,5§;
            if(_loc5_)
            {
               this.§`X§ = §&! §;
               if(_loc5_ || param1)
               {
                  if(this.§?$§.length > 0)
                  {
                     if(_loc5_ || param1)
                     {
                        _loc3_ = this.§?$§[this.§;&§];
                        addr61:
                        if(!_loc3_)
                        {
                           if(!(_loc4_ && param2))
                           {
                              §§goto(addr70);
                           }
                           else
                           {
                              addr78:
                           }
                        }
                        this.mDragging = false;
                        while(true)
                        {
                           this.§>!H§ = false;
                           addr195:
                           while(true)
                           {
                              this.§>J§ = new Date().time;
                           }
                        }
                        addr199:
                     }
                     while(true)
                     {
                        this.§?l§.§%!1§(_loc3_,param1,param2);
                        loop1:
                        while(true)
                        {
                           this.§]2§(this.§;&§,_loc3_.§5!6§ > 0);
                           loop2:
                           while(_loc5_ || param2)
                           {
                              if(_loc5_ || param1)
                              {
                                 this.playBirdShotSound();
                                 while(true)
                                 {
                                    if(this.§;&§ >= this.§?$§.length)
                                    {
                                       continue;
                                    }
                                    this.§4&§(§2!Q§);
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       break;
                                    }
                                    if(!_loc4_)
                                    {
                                       break loop1;
                                    }
                                    continue loop2;
                                 }
                                 if(_loc5_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr195);
                        }
                        return;
                     }
                  }
                  §§goto(addr61);
               }
               addr70:
               return;
            }
         }
         §§goto(addr78);
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc3_)
         {
            §§push(§ !Q§);
            §§push("BirdShot");
            if(!_loc2_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().playSound(§§pop());
         }
      }
      
      public function §=W§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§;&§);
         if(_loc5_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_ || param2)
            {
               if(§§pop() >= this.§?$§.length)
               {
                  if(!(_loc6_ && this))
                  {
                     if(_loc5_ || this)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           addr118:
                           while(true)
                           {
                              this.§?$§[_loc4_].update(param1,true,param2);
                              continue loop1;
                           }
                        }
                     }
                     else
                     {
                        addr111:
                     }
                     while(true)
                     {
                        _loc4_++;
                     }
                  }
                  while(_loc6_ && param1)
                  {
                  }
                  continue;
               }
               addr116:
               if(this.mSlingShotState != §,U§)
               {
                  this.§?$§[_loc4_].update(param1,false,param2);
                  §§goto(addr111);
               }
               §§goto(addr118);
            }
            §§goto(addr116);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§7!,§ = null;
         var _loc2_:int = 0;
         if(_loc5_ || _loc1_)
         {
            this.mDragging = false;
         }
         loop0:
         while(true)
         {
            addr54:
            while(true)
            {
               this.§8!+§();
               continue loop0;
            }
         }
      }
      
      public function §^!v§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7!,§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§?$§)
         {
            if(_loc5_ || _loc2_)
            {
               §§push(_loc1_);
               if(!(_loc6_ && this))
               {
                  §§push(int(§§pop() + §<F§.§1]§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §%!6§() : int
      {
         return this.§[!n§;
      }
      
      public function §!o§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§'!l§);
            loop0:
            while(true)
            {
               §§push(0);
               addr209:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     return;
                  }
                  addr26:
                  if(_loc3_ || param1)
                  {
                     §§push(this);
                     §§push(this.§'!l§);
                     if(_loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§'!l§ = §§pop();
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr109);
      }
      
      public function §2! §() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         loop0:
         while(true)
         {
            §§push(this.§?l§.objects.§=V§(this.§"!d§,this.§=!X§));
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
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(_loc3_ || _loc1_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§'!l§ = -1;
                                    addr77:
                                    while(!(_loc3_ || _loc2_))
                                    {
                                    }
                                    addr66:
                                    return;
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr77);
                                 }
                              }
                           }
                           else
                           {
                              this.§9S§(0.1);
                           }
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc3_ || _loc2_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 if(!(_loc3_ || _loc1_))
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop5;
                                       }
                                       _loc1_ = §§pop();
                                       addr62:
                                       if(!_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(0);
                                    }
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    break;
                                 }
                                 §§goto(addr66);
                              }
                              §§goto(addr62);
                           }
                           continue loop0;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      public function §9!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§8X§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc4_)
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
            addr76:
         }
         while(true)
         {
            §§push(this.§8X§);
            if(_loc4_ || this)
            {
               §§push(param2);
               if(!(_loc3_ && param1))
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
               if(!(_loc3_ && param2))
               {
                  break;
               }
               continue;
            }
            §§goto(addr76);
            §§goto(addr80);
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.mSlingShotState == §1!2§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr110:
                     while(true)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc2_ && _loc3_)
                        {
                           break;
                        }
                        if(_loc2_ && _loc2_)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     while(true)
                     {
                        §§push(true);
                        continue loop0;
                     }
                     addr91:
                  }
                  else
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     §§goto(addr110);
                  }
               }
               §§push(false);
               if(!(_loc2_ && param1))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr91);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.mSlingShotState == §1!2§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr60:
                     §§push(this.§>!]§);
                     §§push(this.§5!G§);
                     if(!_loc1_)
                     {
                        §§push(§§pop() * §%P§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mDragging = false;
            if(!(_loc2_ && this))
            {
               this.§4&§(§1!2§);
            }
         }
         var _loc1_:§7!,§ = this.§?$§[this.§;&§];
         if(_loc3_ || this)
         {
            _loc1_.§8!n§(§<!R§.§>!h§);
         }
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mDragging = true;
         }
         var _loc1_:§7!,§ = this.§?$§[this.§;&§];
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.§8!n§(§<!R§.§``§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§>!H§ = true;
         }
      }
      
      protected function §]2§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7!,§ = null;
         if(_loc5_)
         {
            if(param1 < 0)
            {
               if(_loc5_)
               {
                  return;
               }
            }
            else
            {
               if(this.§?$§[param1])
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc3_ = this.§?$§[param1];
                     addr47:
                     if(!_loc4_)
                     {
                        this.§42§.removeChild(_loc3_.sprite);
                        while(true)
                        {
                           if(param2)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 this.§^4§(this.§?$§[param1]);
                              }
                              loop1:
                              while(!_loc4_)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    _loc3_.dispose();
                                    do
                                    {
                                       this.§?$§[param1] = null;
                                    }
                                    while(_loc4_ && _loc3_);
                                    
                                    if(!_loc4_)
                                    {
                                       while(false)
                                       {
                                          continue loop2;
                                       }
                                       addr122:
                                       this.§?$§.splice(param1,1);
                                       addr127:
                                       return;
                                       addr81:
                                    }
                                    continue loop1;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr83);
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr127);
               }
               §§goto(addr122);
            }
            §§goto(addr122);
         }
         §§goto(addr47);
      }
      
      public function §^4§(param1:§7!,§) : void
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
               if(_loc10_ || this)
               {
                  if(_loc10_)
                  {
                     §§push(this.§?l§);
                     if(_loc10_ || param1)
                     {
                        §§push(§§pop().particles);
                        if(!_loc9_)
                        {
                           §§push(§1!e§.§`!@§);
                           if(_loc10_ || _loc3_)
                           {
                              §§push(§+F§.§+!X§);
                              if(!_loc9_)
                              {
                                 §§push(§1!e§.§<V§);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(param1.x);
                                    if(_loc10_ || param1)
                                    {
                                       §§push(param1.y);
                                       if(_loc10_)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(1000);
                                                if(!_loc9_)
                                                {
                                                   §§push("");
                                                   if(_loc10_)
                                                   {
                                                      §§push(0);
                                                      if(_loc10_)
                                                      {
                                                         §§pop().§ K§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                         addr120:
                                                         if(_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         loop32:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ && this))
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr193:
                                                            addr136:
                                                            while(!_loc9_)
                                                            {
                                                               _loc5_++;
                                                               continue loop32;
                                                            }
                                                            while(!_loc10_)
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(param1.sprite);
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(-§§pop().width);
                                                                     addr310:
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§push(§^g§.§^!S§);
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop12:
                                                                                    while(_loc10_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             addr333:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Math.random() * -_loc7_);
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   addr340:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(2);
                                                                                                      addr341:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                      }
                                                                                                   }
                                                                                                   addr340:
                                                                                                }
                                                                                                addr342:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr343:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr344:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr332:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr383:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             break loop12;
                                                                                          }
                                                                                          addr383:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       continue loop9;
                                                                                    }
                                                                                    addr327:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       break loop11;
                                                                                    }
                                                                                    addr376:
                                                                                 }
                                                                              }
                                                                              §§goto(addr333);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr340);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr378:
                                                                        while(true)
                                                                        {
                                                                           §§push(180 / Math.PI);
                                                                           addr382:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr383);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               _loc8_ = §§pop();
                                                            }
                                                            §§push(this.§?l§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().particles);
                                                               addr137:
                                                               while(true)
                                                               {
                                                                  §§push(§1!e§.§?A§);
                                                                  addr139:
                                                                  while(true)
                                                                  {
                                                                     §§push(§+F§.§+!X§);
                                                                     addr141:
                                                                     while(true)
                                                                     {
                                                                        §§push(§1!e§.§<V§);
                                                                        addr143:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.x);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr149:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.y);
                                                                                    addr151:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + _loc8_);
                                                                                       addr153:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(1500);
                                                                                          addr154:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push("");
                                                                                             addr155:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§1!e§.§"!J§(param1.name));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr148:
                                                                           }
                                                                           §§goto(addr149);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() * Math.cos(_loc6_));
                                                         }
                                                         §§push(_loc2_);
                                                         if(_loc10_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(_loc10_)
                                                            {
                                                               addr172:
                                                               §§push(§§pop() * Math.sin(_loc6_));
                                                            }
                                                            §§push(5);
                                                            §§push(_loc2_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() * 20);
                                                            }
                                                            §§pop().§ K§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                            §§goto(addr193);
                                                         }
                                                         §§goto(addr172);
                                                         §§goto(addr155);
                                                      }
                                                   }
                                                   §§goto(addr155);
                                                }
                                                §§goto(addr154);
                                             }
                                             §§goto(addr148);
                                          }
                                          §§goto(addr151);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr149);
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
                  §§goto(addr345);
               }
               §§goto(addr120);
            }
            else
            {
               §§push(_loc4_);
               if(!(_loc9_ && this))
               {
                  §§push(Math.random() * (720 / _loc3_));
                  if(!_loc9_)
                  {
                     §§goto(addr375);
                     §§push(§§pop() + §§pop());
                  }
                  §§goto(addr382);
               }
            }
            §§goto(addr383);
         }
      }
      
      public function §!!D§(param1:§7!,§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]2§(this.§?$§.indexOf(param1));
         }
      }
      
      public function §`!P§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§7!,§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§7!,§ = null;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc6_)
            {
               if(§§pop() >= this.§?$§.length - 1)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     addr207:
                     if(this.§42§.numChildren > 0)
                     {
                        §§push(this.§42§);
                        if(_loc6_)
                        {
                           §§pop().removeChildAt(0);
                           if(!_loc7_)
                           {
                              §§goto(addr207);
                           }
                           addr235:
                           §§push(_loc1_);
                           break;
                           addr235:
                        }
                        §§goto(addr207);
                     }
                     addr197:
                     if(_loc6_ || _loc3_)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           _loc1_ = §§pop();
                           if(_loc7_)
                           {
                           }
                           §§goto(addr259);
                        }
                        break;
                     }
                     §§goto(addr235);
                     addr197:
                  }
                  §§goto(addr259);
               }
               else
               {
                  §§push(Number(Math.sqrt((this.§,G§ - this.§?$§[_loc1_].x) * (this.§,G§ - this.§?$§[_loc1_].x) + (this.§78§ - this.§?$§[_loc1_].y) * (this.§78§ - this.§?$§[_loc1_].y))));
                  if(!_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(_loc6_)
                     {
                        §§push(Number(Math.sqrt((this.§,G§ - this.§?$§[_loc1_ + 1].x) * (this.§,G§ - this.§?$§[_loc1_ + 1].x) + (this.§78§ - this.§?$§[_loc1_ + 1].y) * (this.§78§ - this.§?$§[_loc1_ + 1].y))));
                        if(!_loc7_)
                        {
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              _loc4_ = §§pop();
                              addr135:
                              §§push(_loc3_);
                           }
                           if(§§pop() < §§pop())
                           {
                              if(_loc6_)
                              {
                                 _loc5_ = this.§?$§[_loc1_];
                                 if(_loc6_)
                                 {
                                    this.§?$§.splice(_loc1_,1);
                                    while(true)
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          this.§?$§.splice(_loc1_ + 1,0,_loc5_);
                                          do
                                          {
                                             _loc1_ = int(Math.max(-1,_loc1_ - 2));
                                          }
                                          while(!_loc6_);
                                          
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          while(false)
                                          {
                                             continue loop2;
                                          }
                                          _loc1_++;
                                          if(!_loc7_)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr197);
                                       }
                                    }
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr235);
                  }
                  §§goto(addr135);
               }
            }
            break;
         }
         while(§§pop() < this.§?$§.length)
         {
            _loc2_ = this.§?$§[_loc1_];
            if(_loc6_)
            {
               this.§42§.addChildAt(_loc2_.sprite,0);
               if(_loc6_)
               {
                  _loc1_++;
               }
            }
            §§goto(addr235);
         }
         addr259:
      }
      
      public function §"+§(param1:Number, param2:Number) : §7!,§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§?$§.length)
            {
               if(!(_loc5_ || _loc3_))
               {
                  continue;
               }
               if(!(_loc4_ && param1))
               {
                  if(!_loc4_)
                  {
                     return null;
                  }
                  break;
               }
            }
            else if(this.§?$§[_loc3_])
            {
               if(_loc4_ && this)
               {
                  break;
               }
               if(this.§?$§[_loc3_].isInCoordinates(param1,param2))
               {
                  break;
               }
               addr56:
               _loc3_++;
               continue;
            }
            §§goto(addr56);
         }
         return this.§?$§[_loc3_];
      }
      
      public function §!k§(param1:Number, param2:Number) : §>!A§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§,G§);
               loop1:
               while(true)
               {
                  §§push(this.§5!G§);
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
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      loop13:
                                                      for(; _loc3_; while(true)
                                                      {
                                                         §§push(this.§78§);
                                                         if(!(_loc3_ || param1))
                                                         {
                                                            continue loop13;
                                                         }
                                                         §§goto(addr34);
                                                      },addr19:,return null)
                                                      {
                                                         §§push(this.§78§);
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               continue loop3;
                                                               addr158:
                                                            }
                                                            §§push(this.§5!G§);
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               §§push(4);
                                                               if(!_loc4_)
                                                               {
                                                                  addr92:
                                                                  §§push(§§pop() / §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        while(!(_loc4_ && param2))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop() >= §§pop());
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc4_ && this)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc4_ && param1))
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         break loop12;
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr213:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      break loop13;
                                                                                                   }
                                                                                                   addr213:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr19);
                                                                                          }
                                                                                          addr46:
                                                                                       }
                                                                                    }
                                                                                    continue loop7;
                                                                                    addr126:
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              while(!(_loc4_ && param2))
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop11;
                                                                              addr138:
                                                                           }
                                                                           §§push(this.§=!X§);
                                                                           continue loop1;
                                                                           if(!(_loc3_ || param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr46);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr138);
                                                                           }
                                                                        }
                                                                        addr107:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(4);
                                                                           addr161:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              §§push(§§pop() / §§pop());
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                           }
                                                                        }
                                                                        addr160:
                                                                     }
                                                                     while(_loc3_ || this)
                                                                     {
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        addr212:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr213);
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr164);
                                                               }
                                                               §§goto(addr161);
                                                            }
                                                            §§goto(addr92);
                                                            §§goto(addr160);
                                                         }
                                                         §§goto(addr107);
                                                      }
                                                      continue loop0;
                                                   }
                                                   return this;
                                                }
                                             }
                                             §§goto(addr126);
                                          }
                                       }
                                    }
                                    §§goto(addr212);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr213);
      }
      
      public function §`!9§(param1:§=+§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§7!,§ = null;
         var _loc4_:§'!]§ = null;
         if(!(_loc6_ && this))
         {
            param1.§6y§ = this.§,G§;
            if(!(_loc6_ && _loc2_))
            {
               param1.§8!r§ = this.§78§;
            }
         }
         var _loc2_:* = Number(0);
         loop0:
         while(_loc2_ < this.§?$§.length)
         {
            _loc3_ = this.§?$§[_loc2_];
            (_loc4_ = new §'!]§()).x = _loc3_.x;
            if(_loc5_ || this)
            {
               _loc4_.y = _loc3_.y;
               while(true)
               {
                  _loc4_.id = _loc3_.name;
                  loop2:
                  for(; !(_loc6_ && this); while(true)
                  {
                     if(!(_loc5_ || _loc2_))
                     {
                        continue loop2;
                     }
                     §§push(_loc2_);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + 1);
                        if(!(_loc6_ && param1))
                        {
                           addr93:
                           §§push(Number(§§pop()));
                        }
                        _loc2_ = §§pop();
                        if(!(_loc6_ && param1))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr93);
                  },§§goto(addr102))
                  {
                     while(true)
                     {
                        do
                        {
                           param1.§-T§(_loc4_);
                           continue loop2;
                        }
                        while(false);
                        
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr138);
         }
      }
      
      public function §&!T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§?$§.length > 0)
         {
            this.§!!D§(this.§?$§[0]);
            if(_loc1_ && _loc2_)
            {
               break;
            }
         }
      }
      
      public function §!Z§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_ || param2)
            {
               if(§§pop() >= this.§?$§.length)
               {
                  while(_loc5_ || param1)
                  {
                     §§push(this.§,G§);
                     loop2:
                     while(!(_loc6_ && this))
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() > param1.x);
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                                 loop3:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr175:
                                       while(true)
                                       {
                                          §§pop();
                                          addr176:
                                          while(true)
                                          {
                                             if(!(_loc5_ || param1))
                                             {
                                                addr196:
                                                §§push(Number(_loc4_ + 1));
                                                break loop2;
                                                addr222:
                                             }
                                             §§push(this.§,G§);
                                             while(true)
                                             {
                                                §§push(§§pop() < param2.x);
                                             }
                                          }
                                       }
                                       addr175:
                                    }
                                    while(true)
                                    {
                                       addr95:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr175);
                           }
                        }
                        §§goto(addr196);
                     }
                     _loc4_ = §§pop();
                     break;
                  }
                  continue;
               }
               if(this.§?$§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr216);
               }
               §§goto(addr196);
            }
            §§goto(addr147);
         }
      }
      
      public function §4=§() : Array
      {
         return [this.§6!@§,this.§ !,§];
      }
      
      public function §9!?§(param1:String, param2:Number, param3:Number) : §7!,§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§7!,§ = this.§ !§(param1,param2,param3);
         if(_loc6_ || param2)
         {
            this.§`!P§();
         }
         return _loc4_;
      }
      
      public function §@!c§() : Number
      {
         return this.§?$§.length;
      }
   }
}
