package §+&§
{
   import §!!§.§>4§;
   import §!!9§.Texture;
   import §,6§.§5z§;
   import §,6§.§^!>§;
   import §1!T§.§6!H§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §6z§.§[g§;
   import §9E§.§1!w§;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   import §=!7§.§`c§;
   import §>o§.§'y§;
   import §>o§.§+!4§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § R§
   {
      
      public static const §`!6§:int = 0;
      
      public static const §3!,§:int = 1;
      
      public static const §8^§:int = 2;
      
      public static const §6!D§:int = 3;
      
      public static const §3-§:int = 5;
      
      public static const §6!A§:int = 3151368;
      
      protected static const §`X§:int = 8;
      
      protected static const §2!B§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §0t§:Number = -0.7;
      
      protected static const §3!0§:Number = 0;
      
      protected static var §"!k§:Texture;
      
      public static const §=M§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`!6§ = 0;
            loop0:
            while(true)
            {
               §3!,§ = 1;
               loop1:
               while(true)
               {
                  §8^§ = 2;
                  while(true)
                  {
                     §6!D§ = 3;
                     loop3:
                     while(true)
                     {
                        §3-§ = 5;
                        addr134:
                        while(!_loc2_)
                        {
                           §6!A§ = 3151368;
                           continue loop3;
                        }
                        continue loop0;
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      public var §+!X§:§-!7§;
      
      public var §;!@§:Number;
      
      public var §3L§:Number;
      
      public var §=!>§:Number;
      
      protected var §<4§:Number;
      
      protected var § =§:Number;
      
      protected var §3M§:Number;
      
      protected var §'J§:Number;
      
      public var §,S§:Number;
      
      public var §!C§:Boolean = false;
      
      protected var §&;§:Number;
      
      public var §9q§:Vector.<§`o§>;
      
      public var §>$§:int;
      
      public var §";§:int;
      
      public var §1!<§:Number;
      
      public var §>e§:Sprite;
      
      public var §>!_§:int = 0;
      
      public var §2q§:Number = 0;
      
      public var §57§:Array;
      
      public var §'Q§:Array;
      
      public var mSlingShotState:int;
      
      public var §88§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §4!o§:Boolean = false;
      
      public var §6!`§:Number;
      
      protected var §8!9§:Sprite;
      
      protected var §,T§:§1!w§;
      
      protected var §9+§:§1!w§;
      
      protected var §2G§:Sprite;
      
      protected var § !t§:Sprite;
      
      protected var §-!Z§:Sprite;
      
      protected var §6§:§;!U§;
      
      protected var §14§:§;!U§;
      
      private var §?!t§:Number = 0;
      
      private var §3V§:int = 0;
      
      protected var §?m§:Number = -0.7;
      
      protected var §,r§:Number = 0;
      
      public function § R§(param1:§-!7§, param2:§>4§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§`c§ = null;
         if(_loc6_ || this)
         {
            this.§9q§ = new Vector.<§`o§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§+!X§ = param1;
                  addr49:
                  if(_loc6_ || this)
                  {
                     this.setPosition(param2.§`Z§,param2.§;!>§);
                     loop4:
                     while(_loc6_)
                     {
                        loop5:
                        while(true)
                        {
                           this.§'A§();
                           while(_loc6_)
                           {
                              _loc4_ = 0;
                              if(_loc6_)
                              {
                                 continue loop5;
                              }
                           }
                           continue loop4;
                        }
                        while(!(_loc7_ && param1))
                        {
                           if(param2)
                           {
                              if(_loc7_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr49);
                           }
                           else
                           {
                              §[g§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                              §§goto(addr227);
                           }
                        }
                        while(true)
                        {
                           this.§8!9§ = param3;
                           §§goto(addr69);
                        }
                        addr69:
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!9§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§?!t§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§>$§ < this.§9q§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§9q§.length > 0)
            {
               this.§;;§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§9q§ = null;
               loop2:
               while(true)
               {
                  §§push(this.§8!9§);
                  if(_loc1_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(_loc1_)
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           §§push(this.§8!9§);
                           while(true)
                           {
                              §§pop().dispose();
                              addr116:
                              loop8:
                              while(true)
                              {
                                 this.§8!9§ = null;
                                 addr85:
                                 addr87:
                                 while(_loc2_)
                                 {
                                    continue loop8;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(_loc1_ || this)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    this.§57§ = null;
                                    do
                                    {
                                       this.§'Q§ = null;
                                    }
                                    while(!(_loc1_ || _loc2_));
                                    
                                    if(!(_loc2_ && this))
                                    {
                                       if(_loc2_ && this)
                                       {
                                          §§goto(addr85);
                                       }
                                       return;
                                       addr46:
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           §§goto(addr116);
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        this.§>e§ = null;
                        §§goto(addr66);
                        §§goto(addr87);
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr115);
               }
            }
         }
      }
      
      public function §4D§(param1:String, param2:Number, param3:Number, param4:int = -1) : §`o§
      {
         var _loc5_:§`o§;
         (_loc5_ = this.§0!`§(param1,param2,param3,param4)).§0!M§();
         return _loc5_;
      }
      
      protected function §0!`§(param1:String, param2:Number, param3:Number, param4:int = -1) : §`o§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§`o§ = new §`o§(this,new Sprite(),param1,param2,param3);
         if(!_loc7_)
         {
            if(param4 >= 0)
            {
               this.§9q§.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  if(!_loc7_)
                  {
                     continue;
                  }
                  addr89:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               this.§9q§.push(_loc5_);
            }
         }
         §§goto(addr89);
      }
      
      public function §,!e§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§`!6§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     while(true)
                     {
                        §§push(§3!,§);
                        addr303:
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           loop5:
                           while(true)
                           {
                              §§push(§8^§);
                              addr261:
                              addr262:
                              while(§§pop() != §§pop())
                              {
                                 §§push(this.mSlingShotState);
                                 continue loop5;
                              }
                              loop14:
                              while(true)
                              {
                                 if(_loc2_ && _loc2_)
                                 {
                                    break loop4;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 this.§1!<§ = 10000;
                                 addr274:
                                 if(_loc3_ || _loc3_)
                                 {
                                    this.§4!o§ = false;
                                    addr252:
                                    if(_loc3_)
                                    {
                                       this.§=a§();
                                       break;
                                    }
                                    while(true)
                                    {
                                       this.§1!<§ = 1000;
                                    }
                                    addr319:
                                 }
                                 loop11:
                                 while(true)
                                 {
                                    addr29:
                                    loop12:
                                    while(true)
                                    {
                                       this.mDragging = false;
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                if(_loc3_)
                                                {
                                                   return;
                                                }
                                                addr306:
                                                this.§1!<§ = 0;
                                             }
                                             else
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      this.§9q§[this.§>$§].setPosition(this.§3M§ - this.§9q§[this.§>$§].radius * Math.cos(this.§2q§ / (180 / Math.PI)),this.§'J§ + this.§9q§[this.§>$§].radius * Math.sin(this.§2q§ / (180 / Math.PI)));
                                                      while(_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ || this))
                                                            {
                                                               break loop13;
                                                            }
                                                            this.§4!o§ = false;
                                                            loop17:
                                                            while(_loc3_ || this)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  addr212:
                                                                  continue loop12;
                                                               }
                                                               addr169:
                                                               addr169:
                                                               if(_loc2_ && this)
                                                               {
                                                                  break loop2;
                                                               }
                                                               if(this.mDragging)
                                                               {
                                                                  break;
                                                               }
                                                               this.§=a§();
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  addr243:
                                                                  this.§1!<§ = 2000;
                                                                  §§goto(addr212);
                                                               }
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               if(_loc3_ || this)
                                                               {
                                                                  if(!(_loc2_ && param1))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               break loop14;
                                                            }
                                                            addr241:
                                                            this.§=a§();
                                                            §§goto(addr243);
                                                         }
                                                      }
                                                      continue loop12;
                                                      addr112:
                                                   }
                                                   continue loop14;
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr112);
                                       }
                                       §§goto(addr52);
                                    }
                                 }
                              }
                              §§goto(addr29);
                           }
                        }
                        this.§=a§();
                        §§goto(addr306);
                        if(_loc2_ && param1)
                        {
                           continue;
                        }
                        §§push(§6!D§);
                        while(true)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§push(this.mSlingShotState);
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr218);
                              }
                              break;
                           }
                           §§goto(addr303);
                           §§goto(addr260);
                        }
                        §§goto(addr241);
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§=a§();
            §§goto(addr319);
            §§goto(addr169);
         }
      }
      
      public function get §,!i§() : §-!7§
      {
         return this.§+!X§;
      }
      
      public function §-o§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.mSlingShotState == §6!D§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§pop();
                     addr50:
                     return this.§1!<§ <= 0;
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §'A§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§^!>§ = this.getSlingshotAnimation();
         var _loc2_:§5z§ = _loc1_.getFrame(0);
         var _loc3_:§5z§ = _loc1_.getFrame(1);
         if(_loc5_ || _loc2_)
         {
            this.§6§ = new §;!U§(_loc2_.texture);
            while(true)
            {
               §§push(this.§6§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr276:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
            }
            addr284:
         }
         while(true)
         {
            this.§14§ = new §;!U§(_loc3_.texture);
            loop5:
            while(true)
            {
               §§push(this.§14§);
               loop6:
               while(true)
               {
                  §§push(_loc3_.scale);
                  addr240:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop6;
                  }
               }
               while(true)
               {
                  if(_loc5_ || _loc1_)
                  {
                     if(!(_loc4_ && _loc1_))
                     {
                        §§goto(addr97);
                        §§push(this.§8!9§);
                     }
                     break;
                  }
                  continue loop5;
               }
               §§goto(addr277);
            }
            while(!(_loc4_ && _loc2_))
            {
               §§goto(addr190);
               §§push(this.§8!9§);
            }
         }
      }
      
      protected function getSlingshotAnimation() : §^!>§
      {
         return this.§+!X§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §4+§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc2_)
         {
            this.§<4§ = this.§;!@§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§ =§ = this.§3L§;
                  do
                  {
                     this.§&;§ = §3D§.§@!?§;
                  }
                  while(_loc3_ && _loc2_);
                  
                  if(_loc2_ || _loc2_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     _loc1_ = null;
                     return;
                     addr66:
                  }
                  break;
               }
            }
         }
         §§goto(addr66);
      }
      
      protected function §=m§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(!_loc4_)
         {
            if(!§"!k§)
            {
               if(_loc3_ || _loc1_)
               {
                  addr30:
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc3_ || this)
                  {
                     §"!k§ = this.§+!X§.textureManager.getTextureFromBitmapData(_loc2_);
                     addr52:
                     this.§-!Z§ = new Sprite();
                  }
                  §§goto(addr52);
               }
               var _loc1_:§;!U§ = new §;!U§(§"!k§);
               if(_loc3_ || _loc2_)
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
                           this.§-!Z§.addChild(_loc1_);
                           while(true)
                           {
                              this.§2G§ = new Sprite();
                              while(true)
                              {
                                 this.§,T§ = new §1!w§(2,2,§6!A§);
                                 addr156:
                                 while(!_loc4_)
                                 {
                                 }
                              }
                              addr81:
                              if(_loc3_ || this)
                              {
                                 continue loop1;
                              }
                           }
                           addr131:
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           this.§9+§ = new §1!w§(2,2,§6!A§);
                           while(_loc3_)
                           {
                              this.§ !t§.addChild(this.§9+§);
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr81);
                           }
                           loop8:
                           while(true)
                           {
                              if(_loc3_ || _loc1_)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr131);
                                 }
                                 break;
                              }
                              addr145:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    this.§ !t§ = new Sprite();
                                    continue loop8;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           §§goto(addr156);
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§2G§.addChild(this.§,T§);
                  §§goto(addr145);
               }
               §§goto(addr105);
            }
            §§goto(addr52);
         }
         §§goto(addr30);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§'J§);
         if(!_loc6_)
         {
            §§push(§§pop() / §-!7§.§8!r§);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§3M§);
         if(!_loc6_)
         {
            §§push(§§pop() / §-!7§.§8!r§);
            if(!(_loc6_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(3.5);
         if(!(_loc6_ && _loc3_))
         {
            §§push(8);
            §§push(this.§&;§);
            if(!(_loc6_ && this))
            {
               §§push(this.§,S§);
               if(_loc7_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc7_ || _loc3_)
                  {
                     addr76:
                     §§push(§§pop() / this.§&;§);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr81:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  if(!(_loc6_ && param1))
                  {
                     §§push(this.§-!Z§);
                     loop0:
                     while(true)
                     {
                        §§push(_loc3_);
                        loop1:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(this.§-!Z§);
                           loop2:
                           while(!_loc6_)
                           {
                              §§push(_loc2_);
                              while(!_loc6_)
                              {
                                 §§pop().y = §§pop();
                                 continue loop2;
                                 if(_loc6_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(-§§pop());
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(§§pop() / (180 / Math.PI));
                                 }
                                 §§pop().rotation = §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(this.§6§);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§;!@§);
                                       addr498:
                                       while(true)
                                       {
                                          §§push(§-!7§.§8!r§);
                                          addr500:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             addr501:
                                             while(true)
                                             {
                                                §§push(3);
                                                addr502:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr503:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr646:
                                                   §§push(this.§,T§);
                                                   §§push(-this.§,T§.height);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() / 2);
                                                   }
                                                   addr634:
                                                   §§pop().y = §§pop();
                                                   this.§88§ = false;
                                                   if(_loc7_)
                                                   {
                                                      if(_loc6_ && this)
                                                      {
                                                         §§goto(addr646);
                                                      }
                                                      break loop1;
                                                   }
                                                   §§goto(addr634);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§-!Z§);
                                    if(_loc6_ && this)
                                    {
                                       continue loop2;
                                    }
                                    §§push(this.§2q§);
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§goto(addr526);
                                    }
                                    §§goto(addr546);
                                    §§goto(addr123);
                                 }
                                 §§goto(addr593);
                                 §§goto(addr593);
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        return;
                     }
                  }
                  §§goto(addr506);
               }
            }
            §§goto(addr76);
         }
         §§goto(addr81);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§9q§.length > 0)
            {
               this.§;;§(0,true);
               continue;
            }
            loop1:
            while(true)
            {
               this.§#!W§();
               while(true)
               {
                  this.§0!`§("BIRD_SARDINE",this.§;!@§,this.§3L§);
                  while(_loc2_ || this)
                  {
                     if(_loc2_)
                     {
                        this.§,!e§(§8^§);
                        if(!_loc1_)
                        {
                           if(!_loc1_)
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
      
      protected function §#!W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §6!H§.playSound("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§,!e§(§3-§);
         }
      }
      
      public function §=a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this);
            §§push(this.§<4§);
            §§push(this.§ =§);
            if(!_loc2_)
            {
               §§push(this.§&;§);
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
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc10_)
         {
            §§push(this.§3M§);
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
                           while(true)
                           {
                              §§pop();
                              addr1362:
                              while(true)
                              {
                                 §§push(this.§'J§);
                                 addr1348:
                                 while(true)
                                 {
                                    §§push(param2);
                                    addr1349:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr1361:
                        }
                        while(true)
                        {
                           while(!§§pop())
                           {
                              loop10:
                              while(true)
                              {
                                 this.§,S§ = Math.sqrt((param2 - this.§ =§) * (param2 - this.§ =§) + (param1 - this.§<4§) * (param1 - this.§<4§));
                                 while(true)
                                 {
                                    §§push(this.§,S§);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(this.§&;§);
                                       loop13:
                                       while(true)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(param3);
                                                loop14:
                                                while(!§§pop())
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(this.§<4§);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(this.§&;§);
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            §§push(param1);
                                                            while(true)
                                                            {
                                                               §§push(this.§<4§);
                                                               addr1253:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  addr1254:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                               }
                                                            }
                                                            addr1251:
                                                         }
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(this.§,S§);
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
                                                                     §§push(Number(§§pop()));
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        param1 = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§ =§);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(this.§&;§);
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§ =§);
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          loop30:
                                                                                          while(!(_loc9_ && param2))
                                                                                          {
                                                                                             §§push(this.§,S§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                addr1234:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                loop130:
                                                                                                while(!(_loc9_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   loop129:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      loop139:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc10_ || param2)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr637:
                                                                                                               §§push(§§pop() < §§pop());
                                                                                                               if(!(_loc9_ && param2))
                                                                                                               {
                                                                                                                  loop155:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && param3))
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 loop125:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr670:
                                                                                                                                    §§push(this.§&;§);
                                                                                                                                    if(!(_loc9_ && param3))
                                                                                                                                    {
                                                                                                                                       addr678:
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       if(_loc10_ || param1)
                                                                                                                                       {
                                                                                                                                          if(_loc10_ || param3)
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(_loc9_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue loop27;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                loop127:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc10_ || param3)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(Math.abs(this.§2q§ - -90 - _loc5_) - _loc4_);
                                                                                                                                                         loop131:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr727:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc10_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                               loop132:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                  addr736:
                                                                                                                                                                  loop133:
                                                                                                                                                                  while(_loc10_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     addr744:
                                                                                                                                                                     §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                     loop134:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr753:
                                                                                                                                                                                    if(!(_loc9_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                          loop135:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc9_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr770:
                                                                                                                                                                                                if(!(_loc9_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§<4§);
                                                                                                                                                                                                   continue loop134;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§'J§ = param2;
                                                                                                                                                                                                   addr878:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr250:
                                                                                                                                                                                                      loop106:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§,S§);
                                                                                                                                                                                                         loop107:
                                                                                                                                                                                                         while(!_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc10_ || param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop134;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc9_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§&;§);
                                                                                                                                                                                                               loop108:
                                                                                                                                                                                                               for(; !_loc9_; if(!(_loc10_ || param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               },if(_loc10_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc10_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr144);
                                                                                                                                                                                                                     §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr893);
                                                                                                                                                                                                               },§§goto(addr670))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc9_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0.45);
                                                                                                                                                                                                                           loop109:
                                                                                                                                                                                                                           for(; !_loc9_; §§push(0.8),if(!(_loc9_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc9_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop29;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr120);
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1251);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr678);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr451:
                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                              break loop108;
                                                                                                                                                                                                                           })
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc9_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       loop110:
                                                                                                                                                                                                                                       while(!_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§!C§);
                                                                                                                                                                                                                                             loop111:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                loop112:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc10_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop116:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc10_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr190:
                                                                                                                                                                                                                                                                                 if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr197:
                                                                                                                                                                                                                                                                                    if(_loc10_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§0P§();
                                                                                                                                                                                                                                                                                       loop117:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   this.§!C§ = false;
                                                                                                                                                                                                                                                                                                   loop118:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop117;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr46:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               this.§88§ = true;
                                                                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop118;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr66:
                                                                                                                                                                                                                                                                                                                     §§push(true);
                                                                                                                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop111;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr144:
                                                                                                                                                                                                                                                                                                                     loop115:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc10_ || param3))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop112;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc9_ && param3)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop116;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr637);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                              addr245:
                                                                                                                                                                                                                                                                                                                              loop114:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(this.§,S§);
                                                                                                                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(this.§&;§);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc10_ || param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr120:
                                                                                                                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop108;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop110;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop109;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr388:
                                                                                                                                                                                                                                                                                                                                                if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr398:
                                                                                                                                                                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop139;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§ =§);
                                                                                                                                                                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                            break loop109;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         while(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                               break loop125;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                            addr963:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                               addr964:
                                                                                                                                                                                                                                                                                                                                                               loop142:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§,S§);
                                                                                                                                                                                                                                                                                                                                                                  addr966:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr967:
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                     continue loop142;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr896:
                                                                                                                                                                                                                                                                                                                                                         addr962:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         loop138:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc10_ || param3)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                               loop137:
                                                                                                                                                                                                                                                                                                                                                               while(_loc10_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr525:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  loop128:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc10_ || param2))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop129;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr542:
                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§,S§);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc10_ || this)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr552:
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                              break loop114;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1254);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr963);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                                        loop82:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr942:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1097:
                                                                                                                                                                                                                                                                                                                                                                                 while(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§<4§);
                                                                                                                                                                                                                                                                                                                                                                                    break loop134;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(4);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc10_ || this)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          break loop118;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr1084:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 loop52:
                                                                                                                                                                                                                                                                                                                                                                                 for(; !(_loc9_ && param3); §§goto(addr1106))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       continue loop52;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1106:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1097);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1097:
                                                                                                                                                                                                                                                                                                                                                                                 addr1109:
                                                                                                                                                                                                                                                                                                                                                                                 addr943:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§,S§);
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                          loop85:
                                                                                                                                                                                                                                                                                                                                                                                          for(; !(_loc9_ && param2); while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc10_ || this))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                continue loop85;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc9_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                continue loop130;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1234);
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr594);
                                                                                                                                                                                                                                                                                                                                                                                          },while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§,S§);
                                                                                                                                                                                                                                                                                                                                                                                             addr904:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc9_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   break loop128;
                                                                                                                                                                                                                                                                                                                                                                                                   addr912:
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop26;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc10_ || param3))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr922);
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          })
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   while(!(_loc9_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            addr871:
                                                                                                                                                                                                                                                                                                                                                                                                            while(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.§2q§);
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc9_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(-90);
                                                                                                                                                                                                                                                                                                                                                                                                                     while(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                              break loop133;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                           addr584:
                                                                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc9_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr594:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop85;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                              break loop127;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           addr937:
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                           addr988:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                              addr989:
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr990);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr792);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        addr792:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     while(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr987);
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1071:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1072:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1073);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     addr984:
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1070:
                                                                                                                                                                                                                                                                                                                                                                                                                     addr789:
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr968:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                     while(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        param1 = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§ =§);
                                                                                                                                                                                                                                                                                                                                                                                                                           addr892:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                              addr893:
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                                                                                 break loop137;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop12;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr495:
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr503:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr513:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§<4§);
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop138;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop30;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop133;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr1178:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.mDragging);
                                                                                                                                                                                                                                                                                                                                                                                                               break loop139;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr870:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         break loop112;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   while(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop82;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1010);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1152);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1107);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   addr862:
                                                                                                                                                                                                                                                                                                                                                                                                   addr1151:
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1010);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1349);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1072);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1348);
                                                                                                                                                                                                                                                                                                                                                                                 addr841:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1110);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr525);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr966);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr896);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr523:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1253);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1254);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr515:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr968);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr988);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr967);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr983:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr984);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop107;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1123);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr556);
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr976);
                                                                                                                                                                                                                                                                                                                              continue loop115;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr244:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1052);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop2;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1307);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1237);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr46:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop106;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop135;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(_loc10_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this.§&;§);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1070);
                                                                                                                                                                                                                                                                                                                  §§push(2);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1105);
                                                                                                                                                                                                                                                                                                            §§goto(addr753);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1236);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1065:
                                                                                                                                                                                                                                                                                                         addr1235:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1362);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1111);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr482:
                                                                                                                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   this.§,S§ = _loc8_;
                                                                                                                                                                                                                                                                                                   loop123:
                                                                                                                                                                                                                                                                                                   while(!(_loc9_ && param2))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            this.§3M§ = param1;
                                                                                                                                                                                                                                                                                                            addr337:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop123;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     this.§'J§ = param2;
                                                                                                                                                                                                                                                                                                                     §§goto(addr330);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr979);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr931);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr362:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1211);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr573);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr888);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr304:
                                                                                                                                                                                                                                                                                                while(!(_loc9_ && param3))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   this.§!C§ = true;
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop15;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc9_ && param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop10;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr46);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1027);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                                                                                                                   §§push(this.§2q§);
                                                                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * (180 / Math.PI));
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§pop().§2q§ = §§pop();
                                                                                                                                                                                                                                                                                                   §§goto(addr304);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr304:
                                                                                                                                                                                                                                                                                                addr1195:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1178);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr314);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                                                                                                                       addr206:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1135);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr337);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr245);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr206);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr46);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.§2q§ = Math.atan2(-(this.§'J§ - this.§ =§),this.§3M§ - this.§<4§);
                                                                                                                                                                                                                                                                     §§goto(addr1195);
                                                                                                                                                                                                                                                                     §§goto(addr197);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr244);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1048);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr870);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr818:
                                                                                                                                                                                                                                                   while(_loc10_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr825);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr942);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(!_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§2q§);
                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop125;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(-90);
                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr584);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr789);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr871);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr936);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break loop139;
                                                                                                                                                                                                                                                      addr830:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop155;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr862);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr304);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop22;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       §§goto(addr804);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr803:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr513);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr515);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr398);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc10_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc10_ || this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop132;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop131;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop130;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr433:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc9_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc9_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr451);
                                                                                                                                                                                                                                          §§push(this.§,S§);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr962);
                                                                                                                                                                                                                                             §§push(this.§<4§);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr966);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                                                                       addr955:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop127;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr526);
                                                                                                                                                                                                                                 §§goto(addr968);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr523);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr542);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr727);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr503);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr513);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr433);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc9_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(_loc9_ && this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop125;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr595);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr552);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr744);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(!(_loc9_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop16;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            param2 = §§pop();
                                                                                                                                                                                                            §§goto(addr482);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr892);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr833);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue;
                                                                                                                                                                                          addr763:
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop24;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1065);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1071);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1038);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr841);
                                                                                                                                                                     }
                                                                                                                                                                     while(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr955);
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1084);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr803);
                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr964);
                                                                                                                                                                     §§goto(addr736);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr818);
                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr912);
                                                                                                                                                            §§goto(addr727);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr804:
                                                                                                                                                   while(_loc10_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            break loop131;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr904);
                                                                                                                                                         continue loop139;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr990:
                                                                                                                                                   §§goto(addr1353);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   addr939:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr940);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr989);
                                                                                                                                          }
                                                                                                                                          §§goto(addr939);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr1046);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr902);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr943);
                                                                                                                           }
                                                                                                                           §§goto(addr878);
                                                                                                                        }
                                                                                                                        §§goto(addr763);
                                                                                                                     }
                                                                                                                     §§goto(addr250);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr830);
                                                                                                            }
                                                                                                            §§goto(addr702);
                                                                                                         }
                                                                                                         §§goto(addr812);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         §§goto(addr1151);
                                                                                                         §§push(false);
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1235);
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
                                             this.§,S§ = Math.sqrt((this.§'J§ - this.§ =§) * (this.§'J§ - this.§ =§) + (this.§3M§ - this.§<4§) * (this.§3M§ - this.§<4§));
                                             §§goto(addr1307);
                                          }
                                          §§goto(addr1201);
                                       }
                                    }
                                 }
                              }
                           }
                           addr1353:
                           while(true)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc10_ || param2)
                              {
                                 if(_loc10_ || param1)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       break loop87;
                                    }
                                    addr1005:
                                 }
                                 break;
                              }
                              addr1010:
                              loop74:
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       if(_loc10_ || param1)
                                       {
                                          §§pop();
                                          while(_loc10_ || param1)
                                          {
                                             §§push(this.§2q§);
                                             while(true)
                                             {
                                                §§push(-90);
                                                addr936:
                                                while(true)
                                                {
                                                   §§goto(addr937);
                                                }
                                                addr565:
                                                if(_loc9_ && param3)
                                                {
                                                   continue;
                                                }
                                                addr572:
                                                param1 = §§pop();
                                                while(true)
                                                {
                                                   §§push(this.§ =§);
                                                   if(!(_loc10_ || this))
                                                   {
                                                      break loop107;
                                                   }
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr1236:
                                                   addr556:
                                                   if(_loc10_ || this)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         §§goto(addr565);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         addr922:
                                                      }
                                                   }
                                                   while(!(_loc9_ && param1))
                                                   {
                                                      param2 = §§pop();
                                                      while(true)
                                                      {
                                                         this.§,S§ = _loc7_;
                                                         addr888:
                                                         while(true)
                                                         {
                                                            this.§3M§ = param1;
                                                            continue loop104;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      param2 = §§pop();
                                                      addr1237:
                                                      while(true)
                                                      {
                                                         this.§,S§ = this.§&;§;
                                                         addr1211:
                                                         while(true)
                                                         {
                                                            addr1201:
                                                            while(true)
                                                            {
                                                               this.§3M§ = param1;
                                                               addr1205:
                                                               while(true)
                                                               {
                                                                  this.§'J§ = param2;
                                                                  break loop116;
                                                                  addr1137:
                                                                  if(_loc10_ || param3)
                                                                  {
                                                                     this.§2q§ = -160;
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           break loop14;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr1109);
                                                                        }
                                                                     }
                                                                     addr1307:
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(false);
                                                                        break loop74;
                                                                     }
                                                                     break loop9;
                                                                     addr1123:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr572);
                                                }
                                                §§goto(addr967);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(this.§,S§);
                                             addr1038:
                                             while(!(_loc9_ && param1))
                                             {
                                                §§push(_loc7_);
                                                while(true)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   addr1047:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr1048:
                                                      while(_loc10_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr1052:
                                                               while(true)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  loop45:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(param2);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop() + this.§,r§);
                                                                     }
                                                                     §§pop().§'J§ = §§pop();
                                                                     addr1135:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§goto(addr1137);
                                                                        }
                                                                        addr1152:
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(param1);
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              §§push(§§pop() + this.§?m§);
                                                                           }
                                                                           §§pop().§3M§ = §§pop();
                                                                           continue loop45;
                                                                        }
                                                                        §§goto(addr190);
                                                                     }
                                                                     §§goto(addr1205);
                                                                  }
                                                               }
                                                               continue loop11;
                                                            }
                                                            addr1051:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1005);
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                   §§goto(addr670);
                                                }
                                             }
                                             addr1110:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                addr1111:
                                                while(_loc10_ || param1)
                                                {
                                                   §§goto(addr1097);
                                                   §§push(5);
                                                }
                                                continue loop25;
                                             }
                                          }
                                          addr1073:
                                          addr1027:
                                       }
                                       break;
                                    }
                                    §§goto(addr1047);
                                 }
                                 §§goto(addr1051);
                              }
                              if(!_loc10_)
                              {
                                 continue loop9;
                              }
                              if(!_loc9_)
                              {
                                 return §§pop();
                              }
                              §§goto(addr1361);
                           }
                           return §§pop();
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr362);
      }
      
      protected function §0P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6!H§.playSound("SlingshotStreched");
         }
      }
      
      public function §#!l§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§;!@§);
            §§push(this.§3L§);
            if(!(_loc2_ && this))
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
            §§push(§§pop() - this.§;!@§);
            if(_loc6_)
            {
               addr24:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || param2)
            {
               this.§;!@§ = param1;
            }
            §§push(param2);
            if(_loc6_)
            {
               §§push(§§pop() - this.§3L§);
               if(_loc6_ || this)
               {
                  addr49:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!_loc7_)
               {
                  this.§3L§ = param2;
                  loop0:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§=!>§);
                     if(_loc6_)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§=!>§ = §§pop();
                     loop1:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§ =§);
                        if(!(_loc7_ && param2))
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§ =§ = §§pop();
                        loop2:
                        while(!_loc7_)
                        {
                           §§push(this);
                           §§push(this.§'J§);
                           if(_loc6_)
                           {
                              §§push(§§pop() + _loc5_);
                           }
                           §§pop().§'J§ = §§pop();
                           while(true)
                           {
                              if(_loc7_ && param2)
                              {
                                 continue loop2;
                              }
                              if(_loc7_)
                              {
                                 break;
                              }
                              §§push(this);
                              §§push(this.§<4§);
                              if(_loc6_ || param3)
                              {
                                 §§push(§§pop() + _loc4_);
                              }
                              §§pop().§<4§ = §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§3M§);
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(§§pop() + _loc4_);
                                 }
                                 §§pop().§3M§ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    if(!param3)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          this.§88§ = true;
                                          if(_loc6_)
                                          {
                                             addr64:
                                             if(_loc6_ || param1)
                                             {
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          addr102:
                                          while(_loc6_)
                                          {
                                             continue loop8;
                                          }
                                          continue loop5;
                                       }
                                       return;
                                    }
                                    addr71:
                                    continue loop4;
                                 }
                              }
                              if(_loc7_ && param3)
                              {
                                 continue;
                              }
                              this.updateAnimations(0);
                              §§goto(addr102);
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr49);
         }
         §§goto(addr24);
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§`o§ = null;
         _loc2_ = this.§9q§[this.§>$§];
         §§push(this.§,S§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() / this.§&;§);
            if(_loc4_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || _loc3_)
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(!_loc5_)
                     {
                        §§push(§ R§.BIRD_LAUNCH_FORCE_GREEN);
                        if(!_loc5_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc4_ || _loc2_)
                           {
                              §§goto(addr119);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr127);
                  }
                  else
                  {
                     §§push(§ R§.BIRD_LAUNCH_FORCE);
                     if(!(_loc5_ && _loc1_))
                     {
                        §§push(Number(§§pop()));
                        if(_loc4_)
                        {
                           §§goto(addr119);
                        }
                        §§goto(addr136);
                     }
                  }
                  addr119:
                  §§push(Number(§§pop()));
                  if(!(_loc5_ && this))
                  {
                     addr127:
                     _loc1_ = §§pop();
                     §§push(_loc1_);
                     if(_loc4_ || _loc3_)
                     {
                        addr136:
                        return §§pop() * _loc3_;
                     }
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      public function §%!a§() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§`o§ = null;
         if(_loc2_)
         {
            if(this.§9q§.length > this.§>$§)
            {
               if(!_loc3_)
               {
                  addr39:
                  _loc1_ = this.§9q§[this.§>$§];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr39);
      }
      
      public function §2!K§() : Point
      {
         return new Point(this.§<4§,this.§ =§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§`o§ = null;
         if(!_loc4_)
         {
            this.§<!w§(param1);
            loop0:
            while(true)
            {
               if(this.§88§)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     this.updateAnimations(param1);
                  }
                  while(true)
                  {
                     loop5:
                     while(!(_loc4_ && param2))
                     {
                        this.§1!<§ = 0;
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              if(this.mSlingShotState == §6!D§)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop6;
                                    }
                                    addr32:
                                    if(!(_loc4_ && this))
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          addr50:
                                          addr100:
                                          while(true)
                                          {
                                             if(this.§1!<§ < 0)
                                             {
                                                continue loop5;
                                             }
                                             continue loop7;
                                          }
                                          _loc3_ = null;
                                          if(_loc5_)
                                          {
                                             if(this.§9q§.length > 0)
                                             {
                                                if(_loc5_)
                                                {
                                                   _loc3_ = this.§9q§[this.§>$§];
                                                   addr119:
                                                   if(_loc3_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         _loc3_.§`f§(param1);
                                                         if(_loc5_ || param2)
                                                         {
                                                            addr340:
                                                            if(_loc3_)
                                                            {
                                                               addr330:
                                                               if(this.mSlingShotState != §`!6§)
                                                               {
                                                                  addr276:
                                                                  §§push(this.mSlingShotState);
                                                                  §§push(§3!,§);
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        §§push(this.mSlingShotState);
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              §§push(§8^§);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr276);
                                                                              }
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       §§push(this.§3M§);
                                                                                       if(_loc5_ || param2)
                                                                                       {
                                                                                          §§push(_loc3_.radius);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() * Math.cos(this.§2q§ / (180 / Math.PI)));
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                addr246:
                                                                                                addr247:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                §§push(this.§'J§);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr251:
                                                                                                   §§push(_loc3_.radius);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop() * Math.sin(this.§2q§ / (180 / Math.PI)));
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().setPosition(§§pop(),§§pop());
                                                                                                addr267:
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this.§4!o§);
                                                                                                   if(_loc5_ || param2)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            if(!(_loc4_ && param2))
                                                                                                            {
                                                                                                               addr169:
                                                                                                               §§push(this);
                                                                                                               §§push(this.§,S§);
                                                                                                               if(_loc5_ || param2)
                                                                                                               {
                                                                                                                  §§push(this.§&;§);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr184:
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     §§push(this.§2q§);
                                                                                                                  }
                                                                                                                  §§pop().§5!J§(§§pop(),§§pop());
                                                                                                                  addr187:
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr267);
                                                                                                                  }
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        addr346:
                                                                                                                        return;
                                                                                                                        addr193:
                                                                                                                     }
                                                                                                                     §§goto(addr346);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr289:
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        this.§,!e§(§8^§);
                                                                                                                        addr299:
                                                                                                                        if(!(_loc4_ && param1))
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§goto(addr193);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr342:
                                                                                                                                 this.§,!e§(§6!D§);
                                                                                                                                 §§goto(addr346);
                                                                                                                                 addr345:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr332:
                                                                                                                              if(this.§1!<§ <= 0)
                                                                                                                              {
                                                                                                                                 addr336:
                                                                                                                                 this.§,!e§(§3!,§);
                                                                                                                                 _loc3_.§'?§();
                                                                                                                                 addr339:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr346);
                                                                                                                        }
                                                                                                                        §§goto(addr336);
                                                                                                                     }
                                                                                                                     §§goto(addr345);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr184);
                                                                                                            }
                                                                                                            §§goto(addr339);
                                                                                                         }
                                                                                                         §§goto(addr187);
                                                                                                      }
                                                                                                      §§goto(addr346);
                                                                                                   }
                                                                                                   addr288:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr289);
                                                                                                   }
                                                                                                   §§goto(addr346);
                                                                                                }
                                                                                                §§goto(addr299);
                                                                                             }
                                                                                             §§goto(addr251);
                                                                                          }
                                                                                          §§goto(addr246);
                                                                                       }
                                                                                       §§goto(addr247);
                                                                                    }
                                                                                    §§goto(addr336);
                                                                                 }
                                                                                 §§goto(addr246);
                                                                              }
                                                                              §§goto(addr346);
                                                                           }
                                                                           §§goto(addr330);
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr286:
                                                                        §§goto(addr288);
                                                                        §§push(_loc3_.§+!p§);
                                                                     }
                                                                     §§goto(addr299);
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                               §§goto(addr332);
                                                            }
                                                            §§goto(addr342);
                                                            addr133:
                                                         }
                                                         §§goto(addr332);
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr340);
                                                }
                                                §§goto(addr286);
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr133);
                                          §§goto(addr32);
                                       }
                                       addr80:
                                    }
                                    §§goto(addr346);
                                 }
                              }
                              else
                              {
                                 this.§6!T§(param1,param2);
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           if(false)
                           {
                              §§goto(addr50);
                           }
                           §§goto(addr100);
                        }
                     }
                  }
                  addr95:
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§1!<§);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§1!<§ = §§pop();
                  §§goto(addr95);
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §;!P§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§`o§ = null;
         if(!_loc6_)
         {
            if(this.§9q§.length > 0)
            {
               if(!_loc6_)
               {
                  _loc5_ = this.§9q§[this.§>$§];
                  addr56:
                  if(!_loc5_)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr60);
                     }
                  }
                  _loc5_.setPosition(param1,param2);
                  do
                  {
                     this.§5!J§(param3,param4);
                  }
                  while(!(_loc7_ || this));
                  
                  return;
                  addr39:
               }
               addr60:
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr39);
      }
      
      protected function §5!J§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§`o§ = null;
         if(_loc5_)
         {
            this.§?m§ = §0t§;
            if(!_loc4_)
            {
               this.§,r§ = §3!0§;
               if(_loc5_ || this)
               {
                  if(this.§9q§.length > 0)
                  {
                     if(!(_loc4_ && param2))
                     {
                        _loc3_ = this.§9q§[this.§>$§];
                        addr56:
                        if(!_loc3_)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              return;
                           }
                        }
                        else
                        {
                           this.mDragging = false;
                        }
                     }
                     loop0:
                     while(true)
                     {
                        this.§4!o§ = false;
                        loop1:
                        while(true)
                        {
                           this.§?!t§ = new Date().time;
                           while(true)
                           {
                              this.§+!X§.§9!,§(_loc3_,param1,param2);
                              loop3:
                              for(; _loc5_ || this; if(_loc4_ && param1)
                              {
                                 continue;
                              },while(true)
                              {
                                 this.§,!e§(§6!D§);
                                 §§goto(addr118);
                              })
                              {
                                 while(true)
                                 {
                                    this.§;;§(this.§>$§,_loc3_.§-[§ > 0);
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       this.playBirdShotSound();
                                       loop6:
                                       while(true)
                                       {
                                          if(this.§>$§ < this.§9q§.length)
                                          {
                                             this.§,!e§(§`!6§);
                                             if(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop6;
                                                }
                                                return;
                                             }
                                             addr118:
                                             addr69:
                                             addr69:
                                             if(!_loc4_)
                                             {
                                                continue loop5;
                                             }
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr69);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr56);
               }
               §§goto(addr168);
            }
            §§goto(addr131);
         }
         §§goto(addr115);
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§6!H§);
            §§push("BirdShot");
            if(_loc2_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().playSound(§§pop());
         }
      }
      
      public function §6!T§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§>$§);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc5_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               if(§§pop() >= this.§9q§.length)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(!(_loc6_ && _loc3_))
                  {
                     break;
                  }
               }
               else
               {
                  addr94:
                  if(this.mSlingShotState != §3-§)
                  {
                     this.§9q§[_loc4_].update(param1,false,param2);
                     addr87:
                     if(_loc6_)
                     {
                        addr111:
                     }
                     _loc4_++;
                     continue;
                  }
                  if(!(_loc6_ && param2))
                  {
                     this.§9q§[_loc4_].update(param1,true,param2);
                  }
                  §§goto(addr111);
               }
               §§goto(addr87);
            }
            §§goto(addr94);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§`o§ = null;
         var _loc2_:* = 0;
         if(_loc6_)
         {
            this.mDragging = false;
         }
         loop0:
         do
         {
            loop1:
            while(true)
            {
               this.§=a§();
               while(this.§";§ >= this.§9q§.length)
               {
                  if(_loc6_)
                  {
                     continue loop0;
                  }
                  if(!(_loc5_ && _loc3_))
                  {
                     if(true)
                     {
                        break;
                     }
                     continue loop1;
                  }
               }
               _loc1_ = this.§9q§[this.§";§];
               if(!_loc5_)
               {
                  §§push(§+!4§.§ !`§(_loc1_.name).score);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
                  if(_loc6_ || _loc3_)
                  {
                     addr94:
                     §§push(this.§+!X§);
                     §§push(_loc2_);
                     §§push(§;!8§.§,!E§);
                     §§push(true);
                     §§push(_loc1_.x);
                     §§push(_loc1_.y);
                     if(_loc6_ || this)
                     {
                        §§push(3);
                        if(!(_loc5_ && this))
                        {
                           addr121:
                           §§push(§§pop() - §§pop());
                           §§push(§6Q§.§>k§(_loc1_.name));
                        }
                        §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                        if(_loc6_)
                        {
                           _loc1_.§=!2§(-1,true);
                           if(!(_loc5_ && this))
                           {
                              if(false)
                              {
                                 §§goto(addr94);
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§";§);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(!_loc5_)
                              {
                                 _loc3_.§";§ = _loc4_;
                              }
                              §§goto(addr176);
                           }
                           addr176:
                           return true;
                           addr128:
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr176);
               }
               §§goto(addr128);
            }
         }
         while(_loc5_ && _loc3_);
         
         return false;
      }
      
      public function §6!§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`o§ = null;
         var _loc1_:* = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§9q§)
         {
            if(_loc5_)
            {
               §§push(_loc1_);
               if(_loc5_ || _loc3_)
               {
                  §§push(int(§§pop() + §+!4§.§ !`§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §"!a§() : int
      {
         return this.§3V§;
      }
      
      public function §<!w§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_)
         {
            §§push(this.§6!`§);
            loop0:
            while(true)
            {
               §§push(0);
               addr202:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     addr22:
                     return;
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§6!`§);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§6!`§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr159);
      }
      
      public function §6!E§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         loop0:
         while(true)
         {
            §§push(this.§+!X§.objects.§&8§(this.§<4§,this.§=!>§));
            if(!(_loc4_ && this))
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
                        this.§#!l§(0.1);
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(§§pop());
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop() - 1);
                                 if(!(_loc3_ || _loc1_))
                                 {
                                    addr78:
                                    if(§§pop() <= §§pop())
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                              }
                              if(!_loc4_)
                              {
                                 _loc1_ = §§pop();
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        return;
                     }
                     §§goto(addr90);
                  }
               }
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr78);
               §§push(0);
            }
         }
      }
      
      public function §@o§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§8!9§);
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
            §§push(this.§8!9§);
            if(_loc4_)
            {
               §§push(param2);
               if(!(_loc3_ && this))
               {
                  if(!_loc3_)
                  {
                     addr65:
                     §§push(-§§pop());
                     if(!(_loc3_ && param1))
                     {
                        §§pop().y = §§pop();
                        if(!(_loc3_ && _loc3_))
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
               §§goto(addr65);
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
         if(!_loc3_)
         {
            §§push(this.mSlingShotState == §8^§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr94:
                     do
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§push(Boolean(§§pop()));
                     }
                     while(!_loc3_);
                     
                     continue loop0;
                  }
                  addr93:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || param1)
                     {
                        if(_loc2_ || param1)
                        {
                           while(true)
                           {
                              §§push(true);
                              continue loop0;
                           }
                           addr77:
                        }
                     }
                     else
                     {
                        addr19:
                        §§push(false);
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr19);
               }
               return §§pop();
            }
            return §§pop();
         }
         §§goto(addr77);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.mSlingShotState == §8^§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr64:
                     §§pop();
                     §§push(this.§,S§);
                     §§push(this.§&;§);
                     if(_loc2_ || this)
                     {
                        §§push(§§pop() * §=M§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.mDragging = false;
            if(!(_loc2_ && _loc3_))
            {
               this.§,!e§(§8^§);
            }
         }
         var _loc1_:§`o§ = this.§9q§[this.§>$§];
         if(_loc3_ || _loc3_)
         {
            _loc1_.§=!2§(§'y§.§%#§);
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
         var _loc1_:§`o§ = this.§9q§[this.§>$§];
         if(_loc3_)
         {
            _loc1_.§=!2§(§'y§.§#!^§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4!o§ = true;
         }
      }
      
      protected function §;;§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§`o§ = null;
         if(_loc4_)
         {
            if(param1 < 0)
            {
               if(_loc4_)
               {
                  §§goto(addr26);
               }
               else
               {
                  addr36:
                  _loc3_ = this.§9q§[param1];
                  if(!(_loc5_ && this))
                  {
                     this.§>e§.removeChild(_loc3_.sprite);
                     loop0:
                     while(true)
                     {
                        if(param2)
                        {
                           addr98:
                           while(true)
                           {
                              this.§;!+§(this.§9q§[param1]);
                              addr104:
                              while(true)
                              {
                              }
                           }
                           addr98:
                        }
                        while(true)
                        {
                           _loc3_.dispose();
                           do
                           {
                              this.§9q§[param1] = null;
                           }
                           while(_loc5_ && _loc3_);
                           
                           if(_loc4_)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr104);
                        }
                        addr111:
                        this.§9q§.splice(param1,1);
                        §§goto(addr116);
                     }
                  }
                  §§goto(addr98);
               }
            }
            else if(this.§9q§[param1])
            {
               if(!_loc5_)
               {
                  §§goto(addr36);
               }
               addr116:
               return;
            }
            §§goto(addr111);
         }
         addr26:
      }
      
      public function §;!+§(param1:§`o§) : void
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
               if(!_loc10_)
               {
                  if(!_loc10_)
                  {
                     §§push(this.§+!X§);
                     if(!_loc10_)
                     {
                        §§push(§§pop().particles);
                        if(_loc9_)
                        {
                           §§push(§6Q§.§['§);
                           if(!_loc10_)
                           {
                              §§push(§,n§.§9!&§);
                              if(!_loc10_)
                              {
                                 §§push(§6Q§.§?G§);
                                 if(_loc9_)
                                 {
                                    §§push(param1.x);
                                    if(_loc9_)
                                    {
                                       §§push(param1.y);
                                       if(_loc9_ || param1)
                                       {
                                          if(!_loc10_)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(1000);
                                                if(_loc9_ || param1)
                                                {
                                                   §§push("");
                                                   if(!_loc10_)
                                                   {
                                                      §§push(0);
                                                      if(_loc9_)
                                                      {
                                                         §§pop().§=!K§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                         addr104:
                                                         if(!_loc10_)
                                                         {
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  break;
                                                               }
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(param1.sprite);
                                                                  addr285:
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(-§§pop().width);
                                                                     addr287:
                                                                     loop22:
                                                                     while(!_loc10_)
                                                                     {
                                                                        §§push(§-!7§.§8!r§);
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr308:
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Math.random() * -_loc7_);
                                                                                                addr324:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(2);
                                                                                                   addr325:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr319:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                addr357:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_ = §§pop();
                                                                                                         addr362:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(180 / Math.PI);
                                                                                                            addr366:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               break loop22;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr361:
                                                                                                   }
                                                                                                   break loop22;
                                                                                                }
                                                                                             }
                                                                                             addr356:
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr327:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       addr326:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       continue loop21;
                                                                                    }
                                                                                    addr328:
                                                                                 }
                                                                                 §§goto(addr362);
                                                                              }
                                                                              §§goto(addr308);
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                        §§goto(addr324);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        continue loop20;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.sprite);
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  §§push(-§§pop().height);
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(§-!7§.§8!r§);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                       }
                                                                                       addr252:
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§push(Math.random() * -_loc8_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(_loc9_ || param1)
                                                                                             {
                                                                                                §§push(2);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr272:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr277:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr361);
                                                                                                }
                                                                                                §§goto(addr325);
                                                                                             }
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                          §§goto(addr272);
                                                                                       }
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc10_ && _loc2_))
                                                                                    {
                                                                                       addr237:
                                                                                       if(!(_loc10_ && _loc2_))
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          if(_loc9_ || _loc2_)
                                                                                          {
                                                                                             §§goto(addr252);
                                                                                          }
                                                                                          §§goto(addr277);
                                                                                       }
                                                                                       §§goto(addr326);
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                                 §§goto(addr237);
                                                                              }
                                                                              §§goto(addr357);
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               §§goto(addr285);
                                                            }
                                                            _loc8_ = §§pop();
                                                            loop30:
                                                            while(true)
                                                            {
                                                               §§push(this.§+!X§);
                                                               addr129:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().particles);
                                                                  addr130:
                                                                  while(true)
                                                                  {
                                                                     §§push(§6Q§.§&4§);
                                                                     addr132:
                                                                     while(true)
                                                                     {
                                                                        §§push(§,n§.§9!&§);
                                                                        addr134:
                                                                        while(true)
                                                                        {
                                                                           §§push(§6Q§.§?G§);
                                                                           addr136:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.x);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    addr142:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.y);
                                                                                       addr144:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + _loc8_);
                                                                                          addr146:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(1500);
                                                                                             addr147:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push("");
                                                                                                addr148:
                                                                                                loop8:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§6Q§.§5r§(param1.name));
                                                                                                   addr152:
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
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr165:
                                                                                                            §§push(§§pop() * Math.sin(_loc6_));
                                                                                                         }
                                                                                                         §§push(5);
                                                                                                         §§push(_loc2_);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(§§pop() * 20);
                                                                                                         }
                                                                                                         §§pop().§=!K§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_++;
                                                                                                            addr118:
                                                                                                            while(!(_loc9_ || _loc2_))
                                                                                                            {
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         addr186:
                                                                                                      }
                                                                                                      §§goto(addr165);
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr141:
                                                                              }
                                                                              §§goto(addr142);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                   §§goto(addr148);
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr144);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr118);
               }
               §§goto(addr104);
            }
            else
            {
               §§push(_loc4_);
               if(!(_loc10_ && this))
               {
                  §§goto(addr356);
                  §§push(Math.random() * (720 / _loc3_));
               }
            }
            §§goto(addr368);
         }
      }
      
      public function §[Z§(param1:§`o§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§;;§(this.§9q§.indexOf(param1));
         }
      }
      
      public function §#!3§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§`o§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§`o§ = null;
         var _loc1_:* = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc6_)
            {
               if(§§pop() >= this.§9q§.length - 1)
               {
                  if(_loc6_ || _loc3_)
                  {
                     addr222:
                  }
                  addr232:
                  if(this.§>e§.numChildren > 0)
                  {
                     §§push(this.§>e§);
                     if(!_loc7_)
                     {
                        §§pop().removeChildAt(0);
                        if(!_loc7_)
                        {
                           §§goto(addr232);
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr232);
                  }
                  if(_loc6_)
                  {
                     §§goto(addr239);
                  }
                  addr255:
                  §§goto(addr294);
               }
               else
               {
                  §§push(Number(Math.sqrt((this.§;!@§ - this.§9q§[_loc1_].x) * (this.§;!@§ - this.§9q§[_loc1_].x) + (this.§3L§ - this.§9q§[_loc1_].y) * (this.§3L§ - this.§9q§[_loc1_].y))));
                  if(_loc6_)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(Number(Math.sqrt((this.§;!@§ - this.§9q§[_loc1_ + 1].x) * (this.§;!@§ - this.§9q§[_loc1_ + 1].x) + (this.§3L§ - this.§9q§[_loc1_ + 1].y) * (this.§3L§ - this.§9q§[_loc1_ + 1].y))));
                        if(!_loc7_)
                        {
                           §§push(§§pop());
                           if(!(_loc7_ && _loc3_))
                           {
                              _loc4_ = §§pop();
                              addr145:
                              §§push(_loc3_);
                           }
                           if(§§pop() >= §§pop())
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              §§goto(addr222);
                           }
                        }
                        §§goto(addr145);
                     }
                     _loc5_ = this.§9q§[_loc1_];
                     if(_loc6_)
                     {
                        this.§9q§.splice(_loc1_,1);
                        loop1:
                        while(true)
                        {
                           addr176:
                           while(true)
                           {
                              this.§9q§.splice(_loc1_ + 1,0,_loc5_);
                              continue loop1;
                           }
                        }
                     }
                     while(false)
                     {
                        §§goto(addr176);
                     }
                     continue;
                  }
                  §§goto(addr145);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(!(_loc7_ && this))
         {
            §§goto(addr255);
         }
         addr239:
         §§push(0);
         if(_loc6_ || _loc1_)
         {
            break loop0;
         }
         addr295:
         if(§§pop() < this.§9q§.length)
         {
            _loc2_ = this.§9q§[_loc1_];
            if(!(_loc7_ && _loc2_))
            {
               this.§>e§.addChildAt(_loc2_.sprite,0);
               if(_loc6_ || _loc2_)
               {
                  _loc1_++;
               }
            }
            while(true)
            {
               §§goto(addr295);
            }
            addr294:
         }
      }
      
      public function §!!,§(param1:Number, param2:Number) : §`o§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§9q§.length)
            {
               if(!_loc5_)
               {
                  break;
               }
               loop1:
               while(_loc5_)
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(this.§9q§[_loc3_])
            {
               if(!_loc5_)
               {
                  if(!this.§9q§[_loc3_].isInCoordinates(param1,param2))
                  {
                     §§goto(addr58);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr58);
         }
         if(_loc4_ || param1)
         {
            return null;
         }
         addr80:
         return this.§9q§[_loc3_];
      }
      
      public function §+![§(param1:Number, param2:Number) : § R§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§;!@§);
               loop1:
               while(true)
               {
                  §§push(this.§&;§);
                  if(_loc4_ || this)
                  {
                     §§push(4);
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                     }
                     addr218:
                  }
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
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
                                          §§push(this.§;!@§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§&;§);
                                             if(_loc4_)
                                             {
                                                §§push(4);
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   addr112:
                                                   §§push(4);
                                                   if(_loc3_ && param2)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      addr123:
                                                      §§push(§§pop() / §§pop());
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         loop20:
                                                         for(; _loc4_; §§push(this.§=!>§),if(!(_loc4_ || param1))
                                                         {
                                                            continue;
                                                         },if(_loc3_)
                                                         {
                                                            continue loop1;
                                                         },§§goto(addr43))
                                                         {
                                                            §§push(§§pop() >= §§pop());
                                                            loop21:
                                                            while(!(_loc3_ && param2))
                                                            {
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     if(!(_loc4_ || param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§pop();
                                                                           addr43:
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              if(!(_loc4_ || param2))
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§goto(addr60);
                                                                              }
                                                                              §§goto(addr201);
                                                                              continue loop21;
                                                                           }
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     addr60:
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc4_ || param2)
                                                                           {
                                                                              addr69:
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 return this;
                                                                              }
                                                                              addr204:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 break loop24;
                                                                                 §§goto(addr69);
                                                                              }
                                                                           }
                                                                           else if(_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr161:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§3L§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break loop24;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr161:
                                                                           }
                                                                        }
                                                                        return null;
                                                                     }
                                                                     while(_loc4_)
                                                                     {
                                                                        §§push(this.§3L§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        if(!(_loc4_ || _loc3_))
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§push(this.§&;§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§goto(addr112);
                                                                        }
                                                                        §§goto(addr123);
                                                                        §§goto(addr161);
                                                                     }
                                                                     continue loop9;
                                                                     §§goto(addr161);
                                                                  }
                                                                  addr200:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(!_loc3_)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr204);
                                                                        }
                                                                        continue loop5;
                                                                        addr201:
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                               }
                                                               continue loop6;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr200);
                                                               §§goto(addr134);
                                                            }
                                                            addr134:
                                                         }
                                                         while(!(_loc3_ && this))
                                                         {
                                                            §§push(§§pop() <= §§pop());
                                                            while(true)
                                                            {
                                                               §§goto(addr199);
                                                            }
                                                         }
                                                         continue loop4;
                                                         addr180:
                                                      }
                                                      while(_loc4_ || param2)
                                                      {
                                                         §§goto(addr180);
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      continue loop3;
                                                      addr172:
                                                   }
                                                   §§goto(addr218);
                                                }
                                             }
                                             §§goto(addr172);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr198);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr161);
      }
      
      public function §9k§(param1:§>4§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§`o§ = null;
         var _loc4_:§`c§ = null;
         if(!_loc6_)
         {
            param1.§`Z§ = this.§;!@§;
            if(!(_loc6_ && param1))
            {
               addr35:
               param1.§;!>§ = this.§3L§;
            }
            var _loc2_:* = Number(0);
            loop0:
            while(_loc2_ < this.§9q§.length)
            {
               _loc3_ = this.§9q§[_loc2_];
               (_loc4_ = new §`c§()).x = _loc3_.x;
               if(!_loc6_)
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
                     loop3:
                     while(true)
                     {
                        param1.§]!!§(_loc4_);
                        while(!_loc6_)
                        {
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           _loc2_ = §§pop();
                           if(!(_loc6_ && this))
                           {
                              if(_loc5_)
                              {
                                 if(true)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §6W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§9q§.length > 0)
         {
            this.§[Z§(this.§9q§[0]);
            if(_loc2_ && this)
            {
               break;
            }
         }
      }
      
      public function §-!X§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(!(_loc6_ && this))
            {
               if(§§pop() >= this.§9q§.length)
               {
                  loop2:
                  while(!(_loc6_ && param2))
                  {
                     §§push(this.§;!@§);
                     while(_loc5_ || this)
                     {
                        §§push(§§pop() > param1.x);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(_loc5_ || param1)
                                    {
                                       §§push(this.§;!@§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop() < param2.x);
                                          addr140:
                                          while(true)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                while(!_loc6_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc5_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            continue loop4;
                                                         }
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  _loc3_.push(this);
                                                               }
                                                               addr55:
                                                               if(_loc5_ || this)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     while(!_loc6_)
                                                                     {
                                                                        if(_loc6_ && param1)
                                                                        {
                                                                           _loc3_.push(this.§9q§[_loc4_]);
                                                                           break loop7;
                                                                        }
                                                                        addr231:
                                                                        §§push(this.§3L§);
                                                                        continue loop8;
                                                                     }
                                                                     continue loop7;
                                                                     addr146:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr133:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§3L§);
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           addr36:
                                                                           §§push(§§pop() + 1);
                                                                           break loop1;
                                                                        }
                                                                        addr211:
                                                                        §§push(§§pop() < param2.y);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop8;
                                                                     §§goto(addr55);
                                                                  }
                                                                  addr133:
                                                               }
                                                            }
                                                            return _loc3_;
                                                         }
                                                      }
                                                      continue;
                                                      addr115:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr89:
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   §§goto(addr146);
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    addr209:
                                    §§goto(addr211);
                                 }
                              }
                              §§goto(addr140);
                           }
                        }
                     }
                     _loc4_ = §§pop();
                     break;
                  }
                  continue loop0;
               }
               if(this.§9q§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr231);
               }
               §§goto(addr209);
            }
            §§goto(addr213);
         }
      }
      
      public function §"!]§() : Array
      {
         return [this.§14§,this.§6§];
      }
      
      public function §>!>§(param1:String, param2:Number, param3:Number) : §`o§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§`o§ = this.§0!`§(param1,param2,param3);
         if(_loc5_ || param1)
         {
            this.§#!3§();
         }
         return _loc4_;
      }
      
      public function §4!=§() : Number
      {
         return this.§9q§.length;
      }
   }
}
