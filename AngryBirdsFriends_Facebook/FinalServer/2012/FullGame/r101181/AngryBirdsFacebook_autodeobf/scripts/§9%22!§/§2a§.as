package §9"!§
{
   import §#!e§.§1"B§;
   import §%Q§.§6G§;
   import §%Q§.§;!y§;
   import §0!R§.Texture;
   import §1!$§.§!"?§;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §6!D§.§"A§;
   import §6!D§.§3!K§;
   import §6o§.§+!k§;
   import §8g§.§"!e§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2a§
   {
      
      public static const §4D§:int = 0;
      
      public static const §`!S§:int = 1;
      
      public static const §["7§:int = 2;
      
      public static const §=U§:int = 3;
      
      public static const §0T§:int = 5;
      
      public static const §^!q§:int = 3151368;
      
      protected static const §,!4§:int = 8;
      
      protected static const §!x§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §?N§:Number = -0.7;
      
      protected static const §=4§:Number = 0;
      
      protected static var §-3§:Texture;
      
      public static const §5!j§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4D§ = 0;
            while(true)
            {
               §`!S§ = 1;
            }
            addr150:
         }
         loop1:
         while(true)
         {
            §["7§ = 2;
            loop2:
            while(true)
            {
               §=U§ = 3;
               loop3:
               while(_loc1_)
               {
                  §0T§ = 5;
                  while(true)
                  {
                     §^!q§ = 3151368;
                     continue loop1;
                  }
                  addr80:
                  if(_loc1_ || _loc2_)
                  {
                     §?N§ = -0.7;
                     loop10:
                     while(true)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           addr57:
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           if(_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §=4§ = 0;
                              loop11:
                              while(!(_loc2_ && _loc1_))
                              {
                                 §5!j§ = 0.4;
                                 if(_loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       addr31:
                                       if(!_loc1_)
                                       {
                                          while(true)
                                          {
                                             BIRD_LAUNCH_FORCE_GREEN = 52.5;
                                             break loop11;
                                             §§goto(addr31);
                                          }
                                          addr92:
                                       }
                                       return;
                                    }
                                    continue loop10;
                                 }
                              }
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    §§goto(addr80);
                                 }
                                 §§goto(addr38);
                              }
                              addr38:
                              continue loop3;
                           }
                           §§goto(addr129);
                        }
                        else
                        {
                           while(true)
                           {
                              §!x§ = 0;
                              continue loop10;
                           }
                           addr102:
                        }
                        while(true)
                        {
                           BIRD_LAUNCH_FORCE = 46.25;
                           §§goto(addr92);
                        }
                     }
                     continue loop2;
                  }
               }
               §§goto(addr150);
            }
         }
      }
      
      public var §@O§:§9"3§;
      
      public var §,!k§:Number;
      
      public var §!Q§:Number;
      
      public var §`!j§:Number;
      
      protected var §7!0§:Number;
      
      protected var §^!U§:Number;
      
      protected var §>!q§:Number;
      
      protected var §-D§:Number;
      
      public var §"!+§:Number;
      
      public var §-!A§:Boolean = false;
      
      protected var §^!d§:Number;
      
      public var § L§:Vector.<§;!M§>;
      
      public var §6!m§:int;
      
      public var §?F§:int;
      
      public var §]"1§:Number;
      
      public var §,!&§:Sprite;
      
      public var §!!g§:int = 0;
      
      public var §2!C§:Number = 0;
      
      public var §7!!§:Array;
      
      public var §%&§:Array;
      
      public var mSlingShotState:int;
      
      public var §6$§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §4"=§:Boolean = false;
      
      public var §'V§:Number;
      
      protected var §+!$§:Boolean = false;
      
      protected var §3^§:Sprite;
      
      protected var §]j§:§!"?§;
      
      protected var §5>§:§!"?§;
      
      protected var §&P§:Sprite;
      
      protected var §"!p§:Sprite;
      
      protected var §<!M§:Sprite;
      
      protected var §4!l§:§0!N§;
      
      protected var §&!1§:§0!N§;
      
      private var §?!S§:Number = 0;
      
      private var §?!N§:int = 0;
      
      protected var §-=§:Number = -0.7;
      
      protected var §@!?§:Number = 0;
      
      public function §2a§(param1:§9"3§, param2:§1"B§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§"!e§ = null;
         if(!_loc7_)
         {
            this.§ L§ = new Vector.<§;!M§>();
            while(true)
            {
               super();
               while(_loc6_ || param3)
               {
                  this.§@O§ = param1;
                  loop2:
                  for(; !_loc7_; if(_loc7_ && param2)
                  {
                     continue;
                  },this.setPosition(param2.§'!e§,param2.§!f§),§§goto(addr77))
                  {
                     this.§3^§ = param3;
                     loop3:
                     while(true)
                     {
                        if(!param2)
                        {
                           §+!k§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                           break;
                        }
                        loop4:
                        while(_loc6_ || param1)
                        {
                           continue loop2;
                           addr46:
                           if(!(_loc6_ || param2))
                           {
                              continue;
                           }
                           _loc4_ = 0;
                           if(_loc6_ || param1)
                           {
                              if(false)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§>$§();
                                    addr39:
                                    while(true)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          §§goto(addr46);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             continue loop6;
                                          }
                                          addr77:
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              addr133:
                              if(_loc4_ < param2.§#"=§)
                              {
                                 _loc5_ = param2.§ !V§(_loc4_);
                                 if(_loc6_ || param2)
                                 {
                                    this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
                                    if(_loc6_)
                                    {
                                       addr132:
                                       _loc4_++;
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr132);
                              }
                              if(_loc6_ || this)
                              {
                                 this.§?!N§ = this.§@!F§();
                                 if(!_loc7_)
                                 {
                                    this.§6!m§ = 0;
                                    addr318:
                                    if(this.§ L§.length <= 0)
                                    {
                                       addr265:
                                       §§push(§+!k§);
                                       §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(this.§,!k§);
                                          if(!(_loc7_ && param3))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_ || this)
                                             {
                                                §§push(§§pop() + " ");
                                                if(_loc6_ || param3)
                                                {
                                                   addr310:
                                                   §§push(§§pop() + this.§!Q§);
                                                }
                                                §§pop().log(§§pop());
                                                loop15:
                                                while(true)
                                                {
                                                   this.§0"$§(§=U§);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         addr227:
                                                         addr238:
                                                         loop10:
                                                         while(true)
                                                         {
                                                            this.§'V§ = 0;
                                                            loop11:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  this.§?!O§();
                                                                  while(!_loc7_)
                                                                  {
                                                                     this.update(0,true);
                                                                     loop13:
                                                                     do
                                                                     {
                                                                        this.§1!7§();
                                                                        while(!(_loc7_ && this))
                                                                        {
                                                                           if(_loc7_ && param3)
                                                                           {
                                                                              break loop3;
                                                                           }
                                                                           this.updateAnimations(0);
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     while(_loc7_);
                                                                     
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc7_ && this)
                                                                     {
                                                                        break loop10;
                                                                     }
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        §§goto(addr318);
                                                                     }
                                                                     §§goto(addr265);
                                                                  }
                                                                  addr253:
                                                                  continue loop17;
                                                                  addr233:
                                                               }
                                                               continue loop16;
                                                            }
                                                            continue loop16;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            §§goto(addr227);
                                                            §§goto(addr180);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr310);
                                    }
                                    this.§0"$§(§4D§);
                                    §§goto(addr253);
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr39);
                        }
                     }
                     while(true)
                     {
                        this.§0"$§(§=U§);
                        §§goto(addr238);
                        §§goto(addr207);
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function get sprite() : Sprite
      {
         return this.§3^§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§?!S§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§6!m§ < this.§ L§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§ L§.length > 0)
            {
               this.§;!V§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§ L§ = null;
               while(true)
               {
                  §§push(this.§3^§);
                  if(_loc1_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        while(!(_loc2_ && _loc1_))
                        {
                           if(_loc2_ && _loc1_)
                           {
                              continue loop1;
                           }
                           §§push(this.§3^§);
                           while(true)
                           {
                              §§pop().dispose();
                              addr121:
                              while(true)
                              {
                                 this.§3^§ = null;
                                 addr80:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           addr68:
                           if(!(_loc1_ || _loc2_))
                           {
                              continue;
                           }
                           this.§7!!§ = null;
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              addr51:
                              while(_loc1_ || _loc2_)
                              {
                                 §§goto(addr68);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr80);
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§,!&§ = null;
                        §§goto(addr51);
                        §§goto(addr80);
                     }
                     continue loop0;
                  }
                  §§goto(addr120);
               }
            }
         }
      }
      
      public function §=M§(param1:String, param2:Number, param3:Number, param4:int = -1) : §;!M§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§;!M§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§#!S§();
         if(!_loc6_)
         {
            this.§0"$§(§["7§);
         }
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §;!M§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§;!M§ = new §;!M§(this,new Sprite(),param1,param2,param3);
         if(_loc7_)
         {
            if(param4 >= 0)
            {
               this.§ L§.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  if(_loc7_ || param2)
                  {
                     if(_loc7_)
                     {
                        continue;
                     }
                  }
                  addr90:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return _loc5_;
            }
            while(true)
            {
               this.§ L§.push(_loc5_);
            }
         }
         §§goto(addr90);
      }
      
      public function §0"$§(param1:int) : void
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
               while(true)
               {
                  §§push(§4D§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     while(true)
                     {
                        §§push(§`!S§);
                        addr298:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           continue loop3;
                        }
                        addr299:
                        addr301:
                        this.§7"9§();
                        addr274:
                        this.§]"1§ = 0;
                        if(_loc3_ || param1)
                        {
                           loop11:
                           while(true)
                           {
                              this.mDragging = false;
                              if(!_loc2_)
                              {
                                 if(!(_loc3_ || param1))
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             break;
                                          }
                                          addr219:
                                          loop17:
                                          while(!(_loc2_ && _loc3_))
                                          {
                                             this.§7"9§();
                                             while(true)
                                             {
                                                this.§]"1§ = 2000;
                                                addr184:
                                                while(!(_loc3_ || param1))
                                                {
                                                   continue loop0;
                                                }
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   continue loop11;
                                                }
                                                addr314:
                                                while(true)
                                                {
                                                   this.§]"1§ = 1000;
                                                   break loop17;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop11;
                                             §§goto(addr219);
                                          }
                                          addr219:
                                       }
                                       else
                                       {
                                          loop20:
                                          while(true)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                this.§7"9§();
                                                loop21:
                                                while(_loc2_)
                                                {
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(this.mDragging)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               this.mDragging = false;
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr269);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.§7"9§();
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               continue loop21;
                                                            }
                                                            if(!(_loc2_ && this))
                                                            {
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr244);
                                                               }
                                                            }
                                                         }
                                                         addr45:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               break loop22;
                                                            }
                                                            this.§4"=§ = false;
                                                            continue loop20;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr301);
                                                }
                                                continue loop16;
                                             }
                                             §§goto(addr228);
                                             §§goto(addr184);
                                          }
                                       }
                                       §§goto(addr228);
                                    }
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 addr259:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       this.§]"1§ = 10000;
                                       while(true)
                                       {
                                          this.§4"=§ = false;
                                          addr244:
                                          while(true)
                                          {
                                             this.§7"9§();
                                             continue loop0;
                                          }
                                       }
                                       addr269:
                                    }
                                    else
                                    {
                                       §§goto(addr299);
                                    }
                                 }
                                 §§goto(addr301);
                              }
                              §§goto(addr45);
                           }
                           return;
                           addr24:
                        }
                        break loop2;
                     }
                  }
                  this.§7"9§();
               }
            }
         }
         §§goto(addr314);
      }
      
      public function get §8i§() : §9"3§
      {
         return this.§@O§;
      }
      
      public function §+!=§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.mSlingShotState == §=U§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop();
                     addr54:
                     return this.§]"1§ <= 0;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §>$§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§"A§ = this.getSlingshotAnimation();
         var _loc2_:§3!K§ = _loc1_.getFrame(0);
         var _loc3_:§3!K§ = _loc1_.getFrame(1);
         if(!(_loc5_ && _loc3_))
         {
            this.§4!l§ = new §0!N§(_loc2_.texture);
            while(true)
            {
               §§push(this.§4!l§);
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
         §§goto(addr80);
      }
      
      protected function getSlingshotAnimation() : §"A§
      {
         return this.§@O§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §]U§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(!_loc2_)
         {
            this.§7!0§ = this.§,!k§;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§^!U§ = this.§!Q§;
               while(!_loc2_)
               {
                  this.§^!d§ = §4"F§.§`!9§;
                  if(!_loc2_)
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
      
      protected function §0!P§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(!(_loc3_ && this))
         {
            if(!§-3§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc4_)
                  {
                     §-3§ = this.§@O§.textureManager.getTextureFromBitmapData(_loc2_);
                  }
               }
               addr57:
               var _loc1_:§0!N§ = new §0!N§(§-3§);
               if(!_loc3_)
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
                           this.§<!M§.addChild(_loc1_);
                           addr172:
                           while(_loc4_)
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                           }
                           addr143:
                           continue loop1;
                           if(_loc4_ || this)
                           {
                              this.§&P§.addChild(this.§]j§);
                              loop7:
                              do
                              {
                                 this.§"!p§ = new Sprite();
                                 for(; _loc4_; while(_loc4_ || _loc3_)
                                 {
                                    this.§"!p§.addChild(this.§5>§);
                                    if(!_loc3_)
                                    {
                                       continue loop7;
                                    }
                                 })
                                 {
                                    if(_loc4_)
                                    {
                                       this.§5>§ = new §!"?§(2,2,§^!q§);
                                       continue;
                                    }
                                    §§goto(addr172);
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       §§goto(addr143);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§]j§ = new §!"?§(2,2,§^!q§);
                                          continue loop6;
                                       }
                                       addr166:
                                    }
                                 }
                                 continue loop2;
                              }
                              while(!(_loc4_ || _loc1_));
                              
                              return;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§&P§ = new Sprite();
                  §§goto(addr166);
               }
            }
            this.§<!M§ = new Sprite();
         }
         §§goto(addr57);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§-D§);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop() / §9"3§.§'"F§);
            if(!(_loc6_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§>!q§);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() / §9"3§.§'"F§);
            if(!_loc6_)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(3.5);
            if(!_loc6_)
            {
               §§push(8);
               §§push(this.§^!d§);
               if(_loc7_ || param1)
               {
                  §§push(this.§"!+§);
                  if(!_loc6_)
                  {
                     addr82:
                     §§push(§§pop() - §§pop());
                     if(!(_loc6_ && this))
                     {
                        §§push(this.§^!d§);
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(!_loc6_)
                     {
                        addr87:
                        var _loc4_:Number = §§pop();
                        if(_loc7_)
                        {
                           §§push(this.§<!M§);
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
                                    §§push(this.§<!M§);
                                    loop3:
                                    for(; !_loc6_; while(true)
                                    {
                                       §§push(this.§<!M§);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(this.§2!C§);
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(-§§pop());
                                          if(_loc7_)
                                          {
                                             if(!(_loc7_ || this))
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() / (180 / Math.PI));
                                          }
                                       }
                                       §§goto(addr520);
                                    })
                                    {
                                       §§push(_loc2_);
                                       while(true)
                                       {
                                          §§pop().y = §§pop();
                                          continue loop3;
                                          addr520:
                                          if(!(_loc7_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          §§pop().rotation = §§pop();
                                          while(true)
                                          {
                                             §§push(this.§4!l§);
                                             loop7:
                                             while(true)
                                             {
                                                §§push(this.§,!k§);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(§9"3§.§'"F§);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      addr487:
                                                      addr435:
                                                      while(true)
                                                      {
                                                         §§push(3);
                                                         addr488:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                      }
                                                      §§push(§9"3§.§'"F§);
                                                      if(!(_loc7_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         addr452:
                                                         §§push(30);
                                                         if(_loc7_ || this)
                                                         {
                                                            addr461:
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§pop().y = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§&!1§);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§,!k§);
                                                                        addr419:
                                                                        while(true)
                                                                        {
                                                                           §§push(§9"3§.§'"F§);
                                                                           addr421:
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
                                                                                       continue loop14;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(!(_loc6_ && this))
                                                                     {
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(this.§&P§);
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§,!k§);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§9"3§.§'"F§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 addr218:
                                                                                 §§push(§9"3§.§'"F§);
                                                                                 if(_loc7_ || _loc2_)
                                                                                 {
                                                                                    addr228:
                                                                                    §§pop().y = §§pop() / §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!(_loc7_ || param1))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr238:
                                                                                          §§push(this.§&P§);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop30;
                                                                                          }
                                                                                          addr249:
                                                                                          loop35:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§!Q§);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr218);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   addr252:
                                                                                                   while(!_loc6_)
                                                                                                   {
                                                                                                      §§push(this.§&P§);
                                                                                                      continue loop35;
                                                                                                   }
                                                                                                   §§goto(addr425);
                                                                                                }
                                                                                                addr251:
                                                                                             }
                                                                                             §§goto(addr228);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr251);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr252);
                                                                                    }
                                                                                    continue loop2;
                                                                                    addr229:
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr249);
                                                                        }
                                                                        if(!(_loc7_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr132);
                                                                        }
                                                                        §§push(this.§5>§);
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           §§goto(addr551);
                                                                        }
                                                                        §§goto(addr627);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr487);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop7;
                                                            }
                                                            addr489:
                                                         }
                                                         §§goto(addr488);
                                                      }
                                                      §§goto(addr461);
                                                   }
                                                }
                                                §§goto(addr489);
                                             }
                                             if(!(_loc7_ || param1))
                                             {
                                                continue;
                                             }
                                             §§goto(addr344);
                                             §§push(this.§"!p§);
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        §§goto(addr340);
                     }
                     §§goto(addr87);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr82);
            }
            §§goto(addr87);
         }
         §§goto(addr52);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            if(this.§ L§.length <= 0)
            {
               loop1:
               while(_loc1_)
               {
                  this.§93§();
                  loop2:
                  while(true)
                  {
                     this.addSlingshotObject("BIRD_SARDINE",this.§,!k§,this.§!Q§);
                     while(true)
                     {
                        if(_loc1_ || this)
                        {
                           if(_loc2_ && _loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
            else
            {
               this.§;!V§(0,true);
            }
         }
      }
      
      protected function §93§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §>!E§.§7N§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§0"$§(§0T§);
         }
      }
      
      public function §7"9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.§7!0§);
            §§push(this.§^!U§);
            if(!_loc2_)
            {
               §§push(this.§^!d§);
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
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         if(!_loc10_)
         {
            §§push(this.§>!q§);
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
                              addr1341:
                              while(true)
                              {
                                 §§push(this.§-D§);
                                 addr1327:
                                 while(true)
                                 {
                                    §§push(param2);
                                    addr1328:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr1340:
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    this.§"!+§ = Math.sqrt((param2 - this.§^!U§) * (param2 - this.§^!U§) + (param1 - this.§7!0§) * (param1 - this.§7!0§));
                                    loop11:
                                    while(true)
                                    {
                                       §§push(this.§"!+§);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§^!d§);
                                          loop13:
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(param3);
                                                   loop15:
                                                   while(!§§pop())
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(this.§7!0§);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(this.§^!d§);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§push(this.§7!0§);
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§"!+§);
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       param1 = §§pop();
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§^!U§);
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§^!d§);
                                                                                             loop29:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param2);
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§^!U§);
                                                                                                   loop31:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      loop32:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop33:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§"!+§);
                                                                                                            loop34:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               loop35:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  loop36:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop37:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        param2 = §§pop();
                                                                                                                        loop38:
                                                                                                                        while(!(_loc10_ && param3))
                                                                                                                        {
                                                                                                                           this.§"!+§ = this.§^!d§;
                                                                                                                           loop39:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr1183:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§>!q§ = param1;
                                                                                                                                 loop41:
                                                                                                                                 while(!(_loc10_ && param2))
                                                                                                                                 {
                                                                                                                                    this.§-D§ = param2;
                                                                                                                                    loop42:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§2!C§ = Math.atan2(-(this.§-D§ - this.§^!U§),this.§>!q§ - this.§7!0§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this);
                                                                                                                                          §§push(this.§2!C§);
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * (180 / Math.PI));
                                                                                                                                          }
                                                                                                                                          §§pop().§2!C§ = §§pop();
                                                                                                                                          loop44:
                                                                                                                                          while(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(this.mDragging);
                                                                                                                                             loop45:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(false);
                                                                                                                                                loop46:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(param1);
                                                                                                                                                         if(_loc9_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + this.§-=§);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§>!q§ = §§pop();
                                                                                                                                                         addr1145:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this);
                                                                                                                                                            §§push(param2);
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + this.§@!?§);
                                                                                                                                                            }
                                                                                                                                                            §§pop().§-D§ = §§pop();
                                                                                                                                                            addr1124:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop41;
                                                                                                                                                               }
                                                                                                                                                               this.§2!C§ = -160;
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr1132:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(12);
                                                                                                                                                      loop49:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         loop50:
                                                                                                                                                         while(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                            loop51:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(5);
                                                                                                                                                               loop52:
                                                                                                                                                               for(; _loc9_ || this; §§push(4),if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               },§§push(Number(§§pop())),loop55:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc6_ = §§pop();
                                                                                                                                                                  loop56:
                                                                                                                                                                  while(!(_loc10_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§^!d§);
                                                                                                                                                                     loop57:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(2);
                                                                                                                                                                        loop58:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                           loop59:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              loop60:
                                                                                                                                                                              while(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                                                                 loop61:
                                                                                                                                                                                 for(; !(_loc10_ && param3); if(_loc10_ && param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 },if(_loc9_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr663);
                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                 },§§goto(addr1332),§§push(true))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop42;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(this.§"!+§);
                                                                                                                                                                                    loop62:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                       loop63:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                                                                          loop64:
                                                                                                                                                                                          while(_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                loop65:
                                                                                                                                                                                                for(; !(_loc10_ && param2); if(!(_loc9_ || param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                },if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr798);
                                                                                                                                                                                                },§§goto(addr629))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop66:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         loop67:
                                                                                                                                                                                                         while(_loc9_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§2!C§);
                                                                                                                                                                                                            loop68:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-90);
                                                                                                                                                                                                               loop69:
                                                                                                                                                                                                               while(_loc9_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  loop70:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     loop71:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                        loop72:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                                                                              addr1015:
                                                                                                                                                                                                                              loop74:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop75:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                    loop76:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop77:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             loop78:
                                                                                                                                                                                                                                             while(_loc9_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§2!C§);
                                                                                                                                                                                                                                                loop79:
                                                                                                                                                                                                                                                while(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(-90);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                                                                      addr909:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         addr910:
                                                                                                                                                                                                                                                         while(_loc9_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               addr919:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                  addr920:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop66;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop75;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop67;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr564:
                                                                                                                                                                                                                                                      if(!(_loc9_ || this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop69;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc9_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr591:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     loop143:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                           if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc10_ && this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop30;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop143;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop71;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop63;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!(_loc9_ || param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop1;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(param1);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                                                                                                                    addr950:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr620:
                                                                                                                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop9;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          loop154:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop61;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             loop117:
                                                                                                                                                                                                                                                                                             while(_loc9_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.§>!q§ = param1;
                                                                                                                                                                                                                                                                                                loop118:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc9_ || param3))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break loop15;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      this.§-D§ = param2;
                                                                                                                                                                                                                                                                                                      loop119:
                                                                                                                                                                                                                                                                                                      for(; _loc9_; while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop119;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop78;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(this.§"!+§);
                                                                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this.§^!d§);
                                                                                                                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr108);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr137);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr663);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr722);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr266);
                                                                                                                                                                                                                                                                                                         §§goto(addr169);
                                                                                                                                                                                                                                                                                                      },continue loop79)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         loop120:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.§"!+§);
                                                                                                                                                                                                                                                                                                            addr266:
                                                                                                                                                                                                                                                                                                            loop121:
                                                                                                                                                                                                                                                                                                            while(_loc9_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop62;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.§^!d§);
                                                                                                                                                                                                                                                                                                                     loop122:
                                                                                                                                                                                                                                                                                                                     while(!_loc10_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(0.45);
                                                                                                                                                                                                                                                                                                                        loop123:
                                                                                                                                                                                                                                                                                                                        while(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 loop124:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop18;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§-!A§);
                                                                                                                                                                                                                                                                                                                                                      loop125:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            loop126:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           loop127:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       continue loop119;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop77;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop45;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr620);
                                                                                                                                                                                                                                                                                                                                                                              addr149:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc9_ || param2))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop127;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr156:
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                                                                       addr165:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr169:
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                continue loop119;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               this.§4!y§();
                                                                                                                                                                                                                                                                                                                                                                                                               loop131:
                                                                                                                                                                                                                                                                                                                                                                                                               while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     this.§-!A§ = false;
                                                                                                                                                                                                                                                                                                                                                                                                                     loop132:
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop131;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           this.§6$§ = true;
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop11;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop154;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop132;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        this.§-D§ = param2;
                                                                                                                                                                                                                                                                                                                                                                                                                        addr341:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop120;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop118;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1095);
                                                                                                                                                                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop44;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr548:
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§^!U§);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc9_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr442:
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr446:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                           break loop121;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        loop148:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr470:
                                                                                                                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr495:
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(param1);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr478:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.§7!0§);
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop31;
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr487:
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr976:
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    loop139:
                                                                                                                                                                                                                                                                                                                                                                                                                                    for(; _loc9_; §§goto(addr478))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop23;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr705:
                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr707:
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§7!0§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop148;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§2!C§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop57;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      param1 = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr994:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1288:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop56;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.§^!U§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      break loop64;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr707);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr993:
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§^!U§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr866:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                         loop110:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr677:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop110;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr697:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Math.abs(this.§2!C§ - -90 - _loc5_) - _loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr698:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop139;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr697:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr883:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        while(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              param2 = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              break loop117;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop50;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr882:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr978:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr982:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            loop162:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.§"!+§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr984:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr988:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop55;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr993);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr434:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1092);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr442);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop162;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               continue loop32;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop20;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr870:
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this.§"!+§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr882);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop72;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr919);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop60;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr978);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    break loop124;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop19;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr988);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr891);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop59;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop12;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr373:
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop28;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr805:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                     addr806:
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        addr807:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                           loop90:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc9_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop76;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr819);
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr156);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr818:
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr788:
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop65;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop90;
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop65;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr786:
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop46;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr373);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr723);
                                                                                                                                                                                                                                                                                                                                                                                                               addr205:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§7!0§);
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop68;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr938:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr994);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.§2!C§);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr556:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(-90);
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr564);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr737:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr556);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr737:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            while(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop70;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr909);
                                                                                                                                                                                                                                                                                                                                                                                                            addr738:
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr663:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop57;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr674:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§^!d§);
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr677);
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr910);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr919);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr674:
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr663:
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr799:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr883);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         this.§-!A§ = true;
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr50);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr341);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr329:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr452:
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop51;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      this.§"!+§ = _loc8_;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   addr324:
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc9_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                this.§>!q§ = param1;
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr348);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr329);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr205);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr50);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr818);
                                                                                                                                                                                                                                                                                                                                                                                 addr65:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop125;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop126;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop64;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           continue loop78;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr165);
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr723);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr788);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr807);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr920);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1340);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1328);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr324);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr982);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc9_ || this))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                      addr778:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                         continue loop45;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr806);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop29;
                                                                                                                                                                                                                                                                                                                                             addr762:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr685);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr698);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                    addr108:
                                                                                                                                                                                                                                                                                                                                    if(!(_loc9_ || this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(0.8);
                                                                                                                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop123;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr137:
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop122;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr149);
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr470);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr388:
                                                                                                                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§^!U§);
                                                                                                                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                     break loop122;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr697);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               break loop123;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr866);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr487);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      break loop123;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr674);
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr919);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr677);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr520:
                                                                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr527:
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                   if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                      continue loop12;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop22;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr918);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr981);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr777);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr527);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr434);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr704);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc10_ && this)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop143;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop24;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr520);
                                                                                                                                                                                                                                                                                                                                       §§push(this.§"!+§);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1328);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                       addr754:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr762);
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr753:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr984);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr864);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr874);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop21;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr434);
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr495);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr424);
                                                                                                                                                                                                                                                                                                                     §§push(this.§"!+§);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1327);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr442);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop68;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        param1 = §§pop();
                                                                                                                                                                                                                                                                                                                        §§goto(addr548);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr705);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop68;
                                                                                                                                                                                                                                                                                                                  addr543:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop79;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               param2 = §§pop();
                                                                                                                                                                                                                                                                                                               §§goto(addr452);
                                                                                                                                                                                                                                                                                                               §§goto(addr1095);
                                                                                                                                                                                                                                                                                                               §§goto(addr446);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop39;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1145);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop67;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                this.§"!+§ = _loc7_;
                                                                                                                                                                                                                                                                                                §§goto(addr852);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr852:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr263);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    §§goto(addr799);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr737);
                                                                                                                                                                                                                                                                                 §§goto(addr976);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr685);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr677);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr870);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop74;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr754);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr697);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr778);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr704);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr738);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop38;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr938);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr805);
                                                                                                                                                                                                                                                §§push(this.§"!+§);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr936:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop58;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1114);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1015);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop3;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop2;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1124);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop37;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1341);
                                                                                                                                                               })
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  while(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc5_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1132);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop52;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                               continue loop49;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop36;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(!(_loc10_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr786);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             if(_loc10_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr388);
                                                                                             §§push(_loc8_);
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
                                                   this.§"!+§ = Math.sqrt((this.§-D§ - this.§^!U§) * (this.§-D§ - this.§^!U§) + (this.§>!q§ - this.§7!0§) * (this.§>!q§ - this.§7!0§));
                                                   §§goto(addr1288);
                                                }
                                             }
                                             §§goto(addr1183);
                                          }
                                          if(!(_loc9_ || param1))
                                          {
                                             continue;
                                          }
                                          §§goto(addr543);
                                          §§push(Number(§§pop()));
                                       }
                                       if(!(_loc9_ || param2))
                                       {
                                          continue;
                                       }
                                       §§goto(addr65);
                                    }
                                 }
                              }
                              §§goto(addr1331);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr1145);
      }
      
      protected function §4!y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>!E§.§7N§("SlingshotStreched");
         }
      }
      
      public function applyGravity(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this);
            §§push(this.§,!k§);
            §§push(this.§!Q§);
            if(!(_loc3_ && this))
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
         if(!(_loc6_ && param1))
         {
            §§push(§§pop() - this.§,!k§);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && param2))
         {
            this.§,!k§ = param1;
         }
         §§push(param2);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() - this.§!Q§);
            if(_loc7_ || param3)
            {
               addr60:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && param2))
            {
               this.§!Q§ = param2;
            }
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§`!j§);
               if(!_loc6_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§`!j§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§^!U§);
                  if(_loc7_ || this)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§^!U§ = §§pop();
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§-D§);
                     if(!(_loc6_ && this))
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§-D§ = §§pop();
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§7!0§);
                        if(_loc7_ || param1)
                        {
                           §§push(§§pop() + _loc4_);
                        }
                        §§pop().§7!0§ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§>!q§);
                           if(!(_loc6_ && param1))
                           {
                              §§push(§§pop() + _loc4_);
                           }
                           §§pop().§>!q§ = §§pop();
                           loop5:
                           while(!_loc6_)
                           {
                              if(!param3)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    this.§6$§ = true;
                                    if(_loc7_)
                                    {
                                       addr80:
                                       if(!(_loc6_ && param1))
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    addr122:
                                    while(!_loc6_)
                                    {
                                       continue loop8;
                                    }
                                    continue loop5;
                                 }
                                 return;
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                     if(_loc6_ && this)
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        continue loop1;
                     }
                     this.updateAnimations(0);
                     §§goto(addr122);
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§;!M§ = null;
         _loc2_ = this.§ L§[this.§6!m§];
         §§push(this.§"!+§);
         if(_loc5_)
         {
            §§push(§§pop() / this.§^!d§);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc2_ != null)
            {
               if(!_loc4_)
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        addr70:
                        §§push(§2a§.BIRD_LAUNCH_FORCE_GREEN);
                        if(_loc5_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc5_)
                           {
                              addr100:
                              §§push(Number(§§pop()));
                              if(_loc5_ || _loc2_)
                              {
                                 addr108:
                                 _loc1_ = §§pop();
                                 addr109:
                                 §§push(_loc1_);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              §§goto(addr114);
                           }
                           addr114:
                           return §§pop();
                           §§push(§§pop() * _loc3_);
                        }
                        else
                        {
                           addr92:
                           §§push(Number(§§pop()));
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr100);
                           }
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr109);
                  }
                  else
                  {
                     §§push(§2a§.BIRD_LAUNCH_FORCE);
                     if(_loc5_)
                     {
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr108);
               }
               §§goto(addr70);
            }
         }
         §§goto(addr108);
      }
      
      public function §<!x§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;!M§ = null;
         if(_loc3_ || _loc1_)
         {
            if(this.§ L§.length <= this.§6!m§)
            {
               return null;
            }
            if(!(_loc2_ && this))
            {
               _loc1_ = this.§ L§[this.§6!m§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §1!K§() : Point
      {
         return new Point(this.§7!0§,this.§^!U§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§;!M§ = null;
         if(!_loc5_)
         {
            this.updateGroundControl(param1);
            loop0:
            while(true)
            {
               if(this.§6$§)
               {
                  while(true)
                  {
                     this.updateAnimations(param1);
                     addr92:
                     while(_loc4_)
                     {
                     }
                     continue loop0;
                     addr57:
                     if(_loc5_ && _loc3_)
                     {
                        continue;
                     }
                     this.§]"1§ = 0;
                     loop7:
                     while(true)
                     {
                        addr22:
                        addr41:
                        while(true)
                        {
                           if(this.mSlingShotState != §=U§)
                           {
                              this.§1N§(param1,param2);
                              break;
                           }
                           if(_loc5_)
                           {
                              break;
                           }
                           if(_loc4_ || this)
                           {
                              §§goto(addr340);
                           }
                           continue loop7;
                        }
                        if(false)
                        {
                           loop5:
                           while(true)
                           {
                              if(this.§]"1§ < 0)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop7;
                                 }
                                 addr50:
                                 if(_loc4_ || param2)
                                 {
                                    §§goto(addr57);
                                 }
                                 else
                                 {
                                    while(_loc4_)
                                    {
                                       continue loop5;
                                       §§goto(addr50);
                                    }
                                    §§goto(addr92);
                                    addr82:
                                 }
                              }
                              else
                              {
                                 §§goto(addr22);
                              }
                           }
                        }
                        _loc3_ = null;
                        if(_loc4_ || param2)
                        {
                           if(this.§ L§.length > 0)
                           {
                              if(!_loc5_)
                              {
                                 _loc3_ = this.§ L§[this.§6!m§];
                                 addr123:
                                 if(_loc3_)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       _loc3_.§9O§(param1);
                                       if(_loc4_)
                                       {
                                          addr334:
                                          if(_loc3_)
                                          {
                                             addr322:
                                             if(this.mSlingShotState != §4D§)
                                             {
                                                addr280:
                                                §§push(this.mSlingShotState);
                                                §§push(§`!S§);
                                                if(_loc4_)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      §§push(this.mSlingShotState);
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§["7§);
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr280);
                                                            }
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  §§push(this.§>!q§);
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     §§push(_loc3_.radius);
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() * Math.cos(this.§2!C§ / (180 / Math.PI)));
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr241:
                                                                           §§push(§§pop() - §§pop());
                                                                           §§push(this.§-D§);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              §§push(_loc3_.radius);
                                                                              if(!(_loc5_ && param2))
                                                                              {
                                                                                 §§push(§§pop() * Math.sin(this.§2!C§ / (180 / Math.PI)));
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                     §§pop().setPosition(§§pop(),§§pop());
                                                                     addr271:
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this.§4"=§);
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!(_loc4_ || param2))
                                                                                 {
                                                                                    §§goto(addr271);
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr179:
                                                                                          §§push(this);
                                                                                          §§push(this.§"!+§);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(this.§^!d§);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr189:
                                                                                                §§push(§§pop() / §§pop());
                                                                                                §§push(this.§2!C§);
                                                                                             }
                                                                                             §§pop().§@$§(§§pop(),§§pop());
                                                                                             addr192:
                                                                                             if(false)
                                                                                             {
                                                                                                addr194:
                                                                                             }
                                                                                             §§goto(addr340);
                                                                                          }
                                                                                          §§goto(addr189);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr328:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             this.§0"$§(§`!S§);
                                                                                             _loc3_.§5"F§();
                                                                                             addr333:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr336:
                                                                                             this.§0"$§(§=U§);
                                                                                             addr340:
                                                                                             return;
                                                                                             addr339:
                                                                                          }
                                                                                          §§goto(addr340);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr283:
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          addr292:
                                                                                          if(_loc3_.§15§)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr309:
                                                                                                      this.§0"$§(§["7§);
                                                                                                      addr312:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr339);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr324:
                                                                                                   if(this.§]"1§ <= 0)
                                                                                                   {
                                                                                                      §§goto(addr328);
                                                                                                   }
                                                                                                   addr274:
                                                                                                }
                                                                                                §§goto(addr340);
                                                                                             }
                                                                                             §§goto(addr312);
                                                                                          }
                                                                                          §§goto(addr194);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr274);
                                                                                 }
                                                                                 §§goto(addr312);
                                                                              }
                                                                              §§goto(addr192);
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr322);
                                             }
                                             §§goto(addr324);
                                          }
                                          §§goto(addr336);
                                       }
                                       §§goto(addr309);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr334);
                              }
                              §§goto(addr309);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr179);
                     }
                  }
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§]"1§);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§]"1§ = §§pop();
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §9E§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§;!M§ = null;
         if(_loc7_)
         {
            if(this.§ L§.length > 0)
            {
               if(_loc7_)
               {
                  _loc5_ = this.§ L§[this.§6!m§];
                  addr56:
                  if(!_loc5_)
                  {
                     if(_loc7_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     _loc5_.setPosition(param1,param2);
                     do
                     {
                        this.§@$§(param3,param4);
                     }
                     while(!_loc7_);
                     
                  }
                  addr39:
               }
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr39);
      }
      
      protected function §@$§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§;!M§ = null;
         if(!(_loc4_ && param2))
         {
            this.§-=§ = §?N§;
            if(!(_loc4_ && _loc3_))
            {
               this.§@!?§ = §=4§;
               if(!_loc4_)
               {
                  if(this.§ L§.length > 0)
                  {
                     if(!_loc4_)
                     {
                        _loc3_ = this.§ L§[this.§6!m§];
                        addr56:
                        if(!_loc3_)
                        {
                           if(!(_loc4_ && param2))
                           {
                              return;
                           }
                           addr105:
                        }
                        else
                        {
                           addr181:
                           this.mDragging = false;
                           loop4:
                           while(true)
                           {
                              this.§4"=§ = false;
                              loop5:
                              while(true)
                              {
                                 this.§?!S§ = new Date().time;
                                 addr175:
                                 loop0:
                                 while(true)
                                 {
                                    this.§@O§.§^K§(_loc3_,param1,param2);
                                    while(true)
                                    {
                                       this.§;!V§(this.§6!m§,_loc3_.§&!v§ > 0);
                                       while(!(_loc4_ && param1))
                                       {
                                          this.playBirdShotSound();
                                          loop3:
                                          while(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                while(true)
                                                {
                                                   if(this.§6!m§ >= this.§ L§.length)
                                                   {
                                                      if(_loc4_ && this)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         this.§0"$§(§=U§);
                                                         break;
                                                      }
                                                      continue loop4;
                                                   }
                                                   this.§0"$§(§4D§);
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc4_ && param1)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc4_ && param2)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§goto(addr105);
                                                   continue loop3;
                                                }
                                                addr69:
                                                return;
                                                addr133:
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr184:
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr56);
               }
               §§goto(addr184);
            }
            §§goto(addr181);
         }
         §§goto(addr133);
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc3_ || _loc3_)
         {
            §§push(§>!E§);
            §§push("BirdShot");
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§7N§(§§pop());
         }
      }
      
      public function §1N§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§6!m§);
         if(!(_loc6_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               if(§§pop() >= this.§ L§.length)
               {
                  if(_loc5_ || this)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        if(!(_loc6_ && param2))
                        {
                           break;
                        }
                        addr113:
                        while(true)
                        {
                           this.§ L§[_loc4_].update(param1,true,param2);
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           if(_loc5_ || param1)
                           {
                              continue loop1;
                           }
                        }
                        addr99:
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  continue;
               }
               addr111:
               if(this.mSlingShotState != §0T§)
               {
                  this.§ L§[_loc4_].update(param1,false,param2);
                  §§goto(addr99);
               }
               §§goto(addr113);
            }
            §§goto(addr111);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§;!M§ = null;
         var _loc2_:* = 0;
         if(_loc6_)
         {
            this.mDragging = false;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§7"9§();
                  loop2:
                  while(this.§?F§ >= this.§ L§.length)
                  {
                     if(_loc6_)
                     {
                        return false;
                     }
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        break loop1;
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
                  _loc1_ = this.§ L§[this.§?F§];
                  if(!_loc5_)
                  {
                     §§push(§6G§.§1!P§(_loc1_.name).score);
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
                           §§push(this.§@O§);
                           §§push(_loc2_);
                           §§push(§?E§.§<C§);
                           §§push(true);
                           §§push(_loc1_.x);
                           §§push(_loc1_.y);
                           if(!_loc5_)
                           {
                              §§push(3);
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr113:
                                 §§push(§§pop() - §§pop());
                                 §§push(§'G§.§>!&§(_loc1_.name));
                              }
                              §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                              loop5:
                              while(!_loc5_)
                              {
                                 while(true)
                                 {
                                    _loc1_.§4!§(-1,true);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    if(_loc5_ && this)
                                    {
                                       continue loop5;
                                    }
                                    if(false)
                                    {
                                       continue loop4;
                                    }
                                    var _loc3_:*;
                                    §§push((_loc3_ = this).§?F§);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc4_:* = §§pop();
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       _loc3_.§?F§ = _loc4_;
                                    }
                                    §§goto(addr161);
                                    continue loop5;
                                 }
                                 return true;
                              }
                              continue loop3;
                           }
                           §§goto(addr113);
                        }
                     }
                  }
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §@!F§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;!M§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§ L§)
         {
            if(!_loc5_)
            {
               §§push(_loc1_);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(int(§§pop() + §6G§.§1!P§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §=x§() : int
      {
         return this.§?!N§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_)
         {
            §§push(this.§'V§);
            loop0:
            while(true)
            {
               §§push(0);
               addr217:
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
                     §§push(this.§'V§);
                     if(_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§'V§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr213);
      }
      
      public function §1!7§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 1000;
         loop0:
         while(true)
         {
            §§push(this.§@O§.objects.§!"F§(this.§7!0§,this.§`!j§));
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
                     while(_loc3_ || _loc1_)
                     {
                        if(!(_loc3_ || this))
                        {
                           continue loop1;
                        }
                        §§push(-1);
                        loop5:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§'V§ = -1;
                                    addr78:
                                    while(!_loc3_)
                                    {
                                    }
                                    if(!_loc4_)
                                    {
                                       return;
                                    }
                                    addr67:
                                    continue loop3;
                                    if(_loc3_ || _loc3_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr78);
                                 }
                              }
                           }
                           else
                           {
                              this.applyGravity(0.1);
                           }
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue loop5;
                                 }
                                 §§push(§§pop() - 1);
                                 if(!(_loc4_ && this))
                                 {
                                    continue loop5;
                                 }
                              }
                              else
                              {
                                 addr63:
                                 if(_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(0);
                              }
                              if(§§pop() > §§pop())
                              {
                                 break;
                              }
                              §§goto(addr67);
                           }
                           continue loop0;
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.§3^§);
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
            addr77:
         }
         while(true)
         {
            §§push(this.§3^§);
            if(!(_loc4_ && param2))
            {
               §§push(param2);
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     addr64:
                     §§push(-§§pop());
                     if(!(_loc4_ && this))
                     {
                        §§pop().y = §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr79);
               }
               §§goto(addr64);
            }
            else
            {
               §§goto(addr77);
            }
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.mSlingShotState == §["7§);
            loop0:
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr90:
                     loop4:
                     while(true)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                           }
                           addr67:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(true);
                              }
                              else
                              {
                                 addr20:
                                 §§push(false);
                                 if(_loc3_)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       continue loop0;
                                    }
                                    continue;
                                 }
                              }
                              if(_loc3_ || param1)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           §§goto(addr20);
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr67);
            }
            while(!_loc3_);
            
            return §§pop();
         }
         §§goto(addr90);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.mSlingShotState == §["7§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr59:
                     §§push(this.§"!+§);
                     §§push(this.§^!d§);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(§§pop() * §5!j§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mDragging = false;
            if(_loc3_ || _loc1_)
            {
               addr49:
               this.§0"$§(§["7§);
            }
            var _loc1_:§;!M§ = this.§ L§[this.§6!m§];
            if(_loc3_ || _loc3_)
            {
               _loc1_.§4!§(§;!y§.§5!V§);
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.mDragging = true;
         }
         var _loc1_:§;!M§ = this.§ L§[this.§6!m§];
         if(_loc3_)
         {
            _loc1_.§4!§(§;!y§.§-!x§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§4"=§ = true;
         }
      }
      
      protected function §;!V§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§;!M§ = null;
         if(_loc4_)
         {
            if(param1 < 0)
            {
               if(!(_loc5_ && param1))
               {
                  §§goto(addr31);
               }
               else
               {
                  addr56:
                  _loc3_ = this.§ L§[param1];
                  if(_loc4_)
                  {
                     this.§,!&§.removeChild(_loc3_.sprite);
                  }
                  loop0:
                  while(true)
                  {
                     if(param2)
                     {
                        continue;
                     }
                     loop3:
                     while(true)
                     {
                        _loc3_.dispose();
                        while(true)
                        {
                           if(_loc4_)
                           {
                              this.§ L§[param1] = null;
                              if(_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 if(true)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        addr109:
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                  }
               }
            }
            else if(this.§ L§[param1])
            {
               if(!_loc5_)
               {
                  §§goto(addr56);
               }
               §§goto(addr121);
            }
            this.§ L§.splice(param1,1);
            addr121:
            return;
         }
         addr31:
      }
      
      public function §3e§(param1:§;!M§) : void
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
                  if(!_loc10_)
                  {
                     continue;
                  }
                  if(_loc10_ || param1)
                  {
                     if(!_loc9_)
                     {
                        if(!(_loc9_ && param1))
                        {
                           §§push(this.§@O§);
                           if(_loc10_)
                           {
                              §§push(§§pop().particles);
                              if(!_loc9_)
                              {
                                 §§push(§'G§.§0!;§);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(§^!f§.§>"F§);
                                    if(_loc10_)
                                    {
                                       §§push(§'G§.§+";§);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(param1.x);
                                          if(_loc10_)
                                          {
                                             §§push(param1.y);
                                             if(_loc10_ || _loc2_)
                                             {
                                                if(_loc10_ || _loc2_)
                                                {
                                                   §§push(1000);
                                                   if(_loc10_)
                                                   {
                                                      §§push("");
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            §§pop().§;!u§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                            break;
                                                         }
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               §§push(§§pop() * Math.cos(_loc6_));
                                                            }
                                                            §§push(_loc2_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(-§§pop());
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() * Math.sin(_loc6_));
                                                               }
                                                            }
                                                            §§push(5);
                                                            §§push(_loc2_);
                                                            if(_loc10_)
                                                            {
                                                               §§push(§§pop() * 20);
                                                            }
                                                            §§pop().§;!u§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                            addr230:
                                                            while(_loc9_ && _loc2_)
                                                            {
                                                               loop34:
                                                               while(true)
                                                               {
                                                                  §§push(param1.sprite);
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     §§push(-§§pop().width);
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(§9"3§.§'"F§);
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop29:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Math.random() * -_loc7_);
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(2);
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  loop30:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr404:
                                                                                                                     addr406:
                                                                                                                     addr407:
                                                                                                                     while(!_loc10_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(180 / Math.PI);
                                                                                                                                 addr427:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    addr428:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr429:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr423:
                                                                                                                           }
                                                                                                                           §§goto(addr427);
                                                                                                                        }
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1.sprite);
                                                                                                                        if(!(_loc10_ || param1))
                                                                                                                        {
                                                                                                                           continue loop31;
                                                                                                                        }
                                                                                                                        §§push(-§§pop().height);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(!(_loc10_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           if(_loc9_ && this)
                                                                                                                           {
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           if(_loc10_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§9"3§.§'"F§);
                                                                                                                              if(_loc10_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc9_ && this)
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc10_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             addr307:
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                continue loop26;
                                                                                                                                             }
                                                                                                                                             if(!(_loc10_ || param1))
                                                                                                                                             {
                                                                                                                                                continue loop25;
                                                                                                                                             }
                                                                                                                                             _loc8_ = §§pop();
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                addr319:
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   continue loop22;
                                                                                                                                                }
                                                                                                                                                §§push(Math.random() * -_loc8_);
                                                                                                                                                if(!(_loc9_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop21;
                                                                                                                                                   }
                                                                                                                                                   §§push(2);
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      continue loop19;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr347:
                                                                                                                                             if(_loc9_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                             addr355:
                                                                                                                                             _loc8_ = Number(§§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§@O§);
                                                                                                                                                addr151:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().particles);
                                                                                                                                                   addr152:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§'G§.§`!O§);
                                                                                                                                                      addr154:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§^!f§.§>"F§);
                                                                                                                                                         addr156:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§'G§.§+";§);
                                                                                                                                                            addr158:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.x);
                                                                                                                                                               if(!(_loc9_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  if(_loc10_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr176:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.y);
                                                                                                                                                                        addr178:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + _loc8_);
                                                                                                                                                                           addr180:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1500);
                                                                                                                                                                              addr181:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push("");
                                                                                                                                                                                 continue loop1;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr176:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr178);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr176);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr347);
                                                                                                                                          }
                                                                                                                                          §§goto(addr355);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr404);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr319);
                                                                                                                                 }
                                                                                                                                 §§goto(addr347);
                                                                                                                              }
                                                                                                                              §§goto(addr307);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Math.random() * (720 / _loc3_));
                                                                                                                                 addr417:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    addr418:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr411:
                                                                                                                           }
                                                                                                                           §§goto(addr419);
                                                                                                                        }
                                                                                                                        §§goto(addr355);
                                                                                                                        §§goto(addr406);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr417);
                                                                                                            }
                                                                                                            §§goto(addr427);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr423);
                                                                                       }
                                                                                       §§goto(addr429);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr418);
                                                                              }
                                                                              §§goto(addr428);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            _loc5_++;
                                                            continue loop0;
                                                         }
                                                         addr186:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr186);
                                                      }
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr178);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr407);
                     }
                     §§goto(addr356);
                  }
                  §§goto(addr230);
               }
               break;
            }
            §§push(_loc4_);
            §§goto(addr411);
         }
      }
      
      public function §-!,§(param1:§;!M§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§;!V§(this.§ L§.indexOf(param1));
         }
      }
      
      public function §?!O§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§;!M§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§;!M§ = null;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc7_ || this)
            {
               if(§§pop() >= this.§ L§.length - 1)
               {
                  if(_loc7_ || this)
                  {
                     addr243:
                     if(this.§,!&§.numChildren > 0)
                     {
                        §§push(this.§,!&§);
                        if(!(_loc6_ && this))
                        {
                           §§pop().removeChildAt(0);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§goto(addr243);
                           }
                           §§goto(addr295);
                        }
                        §§goto(addr243);
                     }
                     if(_loc7_)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                           _loc1_ = §§pop();
                           if(_loc7_)
                           {
                              addr256:
                              §§push(_loc1_);
                              break;
                              addr256:
                           }
                        }
                        break;
                     }
                  }
                  §§goto(addr295);
               }
               else
               {
                  §§push(Number(Math.sqrt((this.§,!k§ - this.§ L§[_loc1_].x) * (this.§,!k§ - this.§ L§[_loc1_].x) + (this.§!Q§ - this.§ L§[_loc1_].y) * (this.§!Q§ - this.§ L§[_loc1_].y))));
                  if(_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_ || _loc3_)
                     {
                        §§push(Number(Math.sqrt((this.§,!k§ - this.§ L§[_loc1_ + 1].x) * (this.§,!k§ - this.§ L§[_loc1_ + 1].x) + (this.§!Q§ - this.§ L§[_loc1_ + 1].y) * (this.§!Q§ - this.§ L§[_loc1_ + 1].y))));
                        if(!_loc6_)
                        {
                           addr127:
                           §§push(§§pop());
                           if(_loc7_)
                           {
                              _loc4_ = §§pop();
                              addr131:
                              §§push(_loc3_);
                           }
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc7_ || _loc1_))
                              {
                                 continue;
                              }
                              addr150:
                              _loc5_ = this.§ L§[_loc1_];
                              if(_loc7_ || _loc3_)
                              {
                                 this.§ L§.splice(_loc1_,1);
                                 while(true)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.§ L§.splice(_loc1_ + 1,0,_loc5_);
                                       do
                                       {
                                          _loc1_ = int(Math.max(-1,_loc1_ - 2));
                                       }
                                       while(!(_loc7_ || _loc2_));
                                       
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       while(false)
                                       {
                                          continue loop2;
                                       }
                                       _loc1_++;
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr256);
                                    }
                                 }
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr200);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr127);
               }
            }
            break;
         }
         while(§§pop() < this.§ L§.length)
         {
            _loc2_ = this.§ L§[_loc1_];
            if(_loc7_)
            {
               this.§,!&§.addChildAt(_loc2_.sprite,0);
               if(_loc7_ || _loc1_)
               {
                  _loc1_++;
               }
            }
            §§goto(addr256);
         }
         addr295:
      }
      
      public function §%7§(param1:Number, param2:Number) : §;!M§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§ L§.length)
            {
               if(_loc5_ && this)
               {
                  continue;
               }
               if(!(_loc5_ && this))
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  if(_loc4_ || param1)
                  {
                     return null;
                  }
                  addr82:
                  if(this.§ L§[_loc3_].isInCoordinates(param1,param2))
                  {
                     break;
                  }
                  addr72:
                  _loc3_++;
                  continue;
               }
            }
            else if(this.§ L§[_loc3_])
            {
               §§goto(addr82);
            }
            §§goto(addr72);
         }
         return this.§ L§[_loc3_];
      }
      
      public function §+"<§(param1:Number, param2:Number) : §2a§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§,!k§);
               loop1:
               while(true)
               {
                  §§push(this.§^!d§);
                  addr216:
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
                                             while(true)
                                             {
                                                §§push(this.§,!k§);
                                                loop11:
                                                while(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(this.§^!d§);
                                                   while(_loc3_)
                                                   {
                                                      §§push(4);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr202:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr203:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                            }
                                                         }
                                                         addr137:
                                                         §§push(4);
                                                         if(!(_loc3_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop() - §§pop() / §§pop());
                                                         while(true)
                                                         {
                                                            §§push(§§pop() >= §§pop());
                                                            loop23:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || param2)
                                                               {
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!(_loc3_ || param2))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr174:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§!Q§);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr174:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr205:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr206:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr205:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 break loop25;
                                                                              }
                                                                              addr61:
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(!(_loc3_ || param2))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              addr71:
                                                                              if(_loc4_ && _loc3_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       return this;
                                                                                    }
                                                                                    if(!(_loc4_ && param2))
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          break loop25;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr174);
                                                                                    }
                                                                                 }
                                                                                 return null;
                                                                                 §§goto(addr71);
                                                                              }
                                                                              continue loop0;
                                                                              addr78:
                                                                           }
                                                                           while(_loc3_)
                                                                           {
                                                                              §§push(param2);
                                                                              continue loop0;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        §§goto(addr78);
                                                                        §§goto(addr174);
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               continue loop8;
                                                            }
                                                            §§push(this.§`!j§);
                                                            addr41:
                                                            continue loop10;
                                                            if(!(_loc3_ || param2))
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§goto(addr61);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr203);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr205);
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
         §§goto(addr174);
      }
      
      public function §1!0§(param1:§1"B§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§;!M§ = null;
         var _loc4_:§"!e§ = null;
         if(_loc5_)
         {
            param1.§'!e§ = this.§,!k§;
            if(_loc5_)
            {
               param1.§!f§ = this.§!Q§;
            }
         }
         var _loc2_:* = Number(0);
         loop0:
         while(_loc2_ < this.§ L§.length)
         {
            _loc3_ = this.§ L§[_loc2_];
            (_loc4_ = new §"!e§()).x = _loc3_.x;
            if(!_loc6_)
            {
               _loc4_.y = _loc3_.y;
            }
            while(true)
            {
               _loc4_.id = _loc3_.name;
               loop2:
               while(true)
               {
                  addr79:
                  while(true)
                  {
                     param1.§#I§(_loc4_);
                     continue loop2;
                  }
                  continue loop0;
               }
               if(!(_loc5_ || _loc3_))
               {
                  continue;
               }
               §§push(_loc2_);
               if(_loc5_)
               {
                  §§push(§§pop() + 1);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc2_ = §§pop();
               if(!_loc6_)
               {
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr79);
               }
               §§goto(addr83);
            }
         }
      }
      
      public function §,!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§ L§.length > 0)
         {
            this.§-!,§(this.§ L§[0]);
            if(!_loc1_)
            {
               break;
            }
         }
      }
      
      public function static(param1:Point, param2:Point) : Array
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
            while(true)
            {
               if(§§pop() < this.§ L§.length)
               {
                  if(this.§ L§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr216);
                  }
                  break;
               }
               loop2:
               while(true)
               {
                  §§push(this.§,!k§);
                  loop3:
                  while(true)
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
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       _loc3_.push(this.§ L§[_loc4_]);
                                       break;
                                    }
                                    addr216:
                                    §§push(this.§,!k§);
                                    loop8:
                                    for(; _loc5_; while(!(_loc6_ && param1))
                                    {
                                       §§push(§§pop() > param1.y);
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§goto(addr156);
                                             }
                                             §§goto(addr113);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr125);
                                       §§goto(addr139);
                                    })
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(§§pop() < param2.x);
                                          while(true)
                                          {
                                             addr156:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc5_ || param2))
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           break loop15;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           break loop7;
                                                                           addr139:
                                                                        }
                                                                        §§push(this.§!Q§);
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              addr198:
                                                                              addr198:
                                                                              _loc4_ = §§pop();
                                                                              continue loop0;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        continue loop8;
                                                                        addr57:
                                                                        if(!(_loc5_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        _loc3_.push(this);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        addr159:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§!Q§);
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     §§goto(addr24);
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop7;
                                                            addr125:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr57);
                                                               }
                                                               §§goto(addr67);
                                                            }
                                                            addr24:
                                                            return _loc3_;
                                                         }
                                                      }
                                                      continue loop5;
                                                      addr113:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                   }
                                                   §§goto(addr159);
                                                }
                                             }
                                          }
                                          addr155:
                                       }
                                       §§goto(addr198);
                                       §§push(Number(§§pop()));
                                    }
                                    continue loop1;
                                 }
                                 break loop1;
                              }
                           }
                           §§goto(addr155);
                        }
                     }
                  }
               }
               §§goto(addr216);
            }
            §§push(_loc4_);
            if(!(_loc6_ && param1))
            {
               §§goto(addr197);
               §§push(§§pop() + 1);
            }
            §§goto(addr198);
         }
      }
      
      public function § "7§() : Array
      {
         return [this.§&!1§,this.§4!l§];
      }
      
      public function §1!+§(param1:String, param2:Number, param3:Number) : §;!M§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§;!M§ = this.addSlingshotObject(param1,param2,param3);
         if(_loc6_)
         {
            this.§?!O§();
         }
         return _loc4_;
      }
      
      public function §@!^§() : Number
      {
         return this.§ L§.length;
      }
      
      public function §]#§() : Boolean
      {
         return this.§+!$§;
      }
   }
}
