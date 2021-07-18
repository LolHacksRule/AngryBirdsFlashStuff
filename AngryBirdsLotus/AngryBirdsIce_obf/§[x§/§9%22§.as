package §[x§
{
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §1n§.§1D§;
   import §1n§.§?!C§;
   import §3"§.§8+§;
   import §3O§.§@6§;
   import §4N§.§&!@§;
   import §4N§.§7E§;
   import §5!@§.§0!7§;
   import §;8§.§3f§;
   import §[P§.Texture;
   import §^V§.§09§;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9"§
   {
      
      public static const §8S§:int = 0;
      
      public static const §1R§:int = 1;
      
      public static const §^I§:int = 2;
      
      public static const §<g§:int = 3;
      
      public static const §5c§:int = 5;
      
      public static const §9f§:int = 3151368;
      
      protected static const §#9§:int = 8;
      
      protected static const §,!"§:int = 0;
      
      public static const §<x§:Number = 46.25;
      
      public static const §?,§:Number = 52.5;
      
      protected static var §<O§:Texture;
      
      public static const §@4§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            §5c§ = 5;
            §9f§ = 3151368;
            loop1:
            while(true)
            {
               §#9§ = 8;
               while(true)
               {
                  §,!"§ = 0;
                  while(!_loc1_)
                  {
                     continue loop1;
                     §?,§ = 52.5;
                     if(!_loc1_)
                     {
                        §@4§ = 0.4;
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public var §1! §:§2^§;
      
      public var §-Y§:Number;
      
      public var §%!;§:Number;
      
      public var §39§:Number;
      
      protected var §"2§:Number;
      
      protected var §&l§:Number;
      
      protected var §2!9§:Number;
      
      protected var §'C§:Number;
      
      public var §8]§:Number;
      
      public var §5f§:Boolean = false;
      
      protected var §-v§:Number;
      
      public var §]<§:Vector.<§,1§>;
      
      public var §=I§:int;
      
      public var §"j§:int;
      
      public var §+9§:Number;
      
      public var §-o§:Sprite;
      
      public var §2!B§:int = 0;
      
      public var §8E§:Number = 0;
      
      public var §?O§:Array;
      
      public var §'g§:Array;
      
      public var mSlingShotState:int;
      
      public var §%r§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §[6§:Boolean = false;
      
      public var §!!&§:Number;
      
      protected var §1-§:Sprite;
      
      protected var §5s§:§09§;
      
      protected var §3#§:§09§;
      
      protected var §6"§:Sprite;
      
      protected var §5!9§:Sprite;
      
      protected var §%9§:Sprite;
      
      protected var §6!A§:§1!,§;
      
      protected var §7j§:§1!,§;
      
      private var §,j§:Number = 0;
      
      private var §>8§:int = 0;
      
      public function §9"§(param1:§2^§, param2:§8+§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§0!7§ = null;
         if(!_loc7_)
         {
            this.§]<§ = new Vector.<§,1§>();
            while(true)
            {
               super();
               addr31:
               while(true)
               {
                  this.§0<§();
                  _loc4_ = 0;
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(false)
                  {
                     continue;
                  }
                  while(_loc4_ < param2.§1x§)
                  {
                     _loc5_ = param2.§ =§(_loc4_);
                     if(_loc6_)
                     {
                        this.§-5§(_loc5_.id,_loc5_.x,_loc5_.y);
                        if(!(_loc6_ || param2))
                        {
                           continue;
                        }
                     }
                     _loc4_++;
                  }
                  if(!(_loc7_ && param1))
                  {
                     this.§>8§ = this.§%!%§();
                     this.§=I§ = 0;
                  }
                  if(this.§]<§.length <= 0)
                  {
                     §§push(§3f§);
                     §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                     if(_loc6_ || param2)
                     {
                        §§push(this.§-Y§);
                        if(!(_loc7_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc7_)
                           {
                              addr211:
                              §§push(§§pop() + " ");
                              if(!(_loc7_ && param3))
                              {
                                 addr220:
                                 §§push(§§pop() + this.§%!;§);
                              }
                              §§pop().log(§§pop());
                              this.§`!<§(§<g§);
                              loop6:
                              while(true)
                              {
                                 this.§!!&§ = 0;
                                 this.§8T§();
                                 do
                                 {
                                    this.update(0,true);
                                    this.§9-§();
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    addr153:
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                 }
                                 while(this.§9V§(0), _loc7_);
                                 
                                 return;
                              }
                              addr173:
                           }
                        }
                        §§goto(addr220);
                     }
                  }
                  else
                  {
                     this.§`!<§(§8S§);
                     if(!_loc6_)
                     {
                        §§goto(addr173);
                     }
                  }
                  §§goto(addr211);
               }
            }
         }
         while(true)
         {
            this.§1! § = param1;
            this.§1-§ = param3;
            if(!param2)
            {
               §3f§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
               this.§`!<§(§<g§);
               break;
            }
            this.setPosition(param2.§true §,param2.§&J§);
            §§goto(addr31);
         }
         §§goto(addr153);
      }
      
      public function get sprite() : Sprite
      {
         return this.§1-§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§,j§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§=I§ < this.§]<§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§]<§.length > 0)
         {
            this.§!3§(0);
         }
         do
         {
            this.§]<§ = null;
            while(true)
            {
               §§push(this.§1-§);
               if(_loc1_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        addr90:
                        this.§1-§.dispose();
                     }
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  addr55:
                  this.§-o§ = null;
                  while(true)
                  {
                     this.§?O§ = null;
                     while(_loc1_ || _loc1_)
                     {
                        this.§'g§ = null;
                        if(_loc1_ || _loc2_)
                        {
                           return;
                        }
                     }
                  }
               }
               §§goto(addr90);
            }
         }
         while(!_loc1_);
         
         this.§1-§ = null;
         §§goto(addr55);
      }
      
      public function §'!8§(param1:String, param2:Number, param3:Number, param4:int = -1) : §,1§
      {
         var _loc5_:§,1§;
         (_loc5_ = this.§-5§(param1,param2,param3,param4)).§"Y§();
         return _loc5_;
      }
      
      protected function §-5§(param1:String, param2:Number, param3:Number, param4:int = -1) : §,1§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§,1§ = new §,1§(this,new Sprite(),param1,param2,param3);
         if(!(_loc7_ && param3))
         {
            if(param4 >= 0)
            {
               this.§]<§.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  if(!(_loc7_ && param3))
                  {
                     if(_loc6_)
                     {
                        continue;
                     }
                     addr95:
                     while(true)
                     {
                        this.§]<§.push(_loc5_);
                     }
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return _loc5_;
               addr72:
            }
            §§goto(addr95);
         }
         §§goto(addr72);
      }
      
      public function §`!<§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.mSlingShotState = param1;
         §§push(this.mSlingShotState);
         while(true)
         {
            §§push(§8S§);
            loop1:
            while(§§pop() != §§pop())
            {
               §§push(this.mSlingShotState);
               loop2:
               while(true)
               {
                  §§push(§1R§);
                  loop3:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop4:
                     while(true)
                     {
                        §§push(§^I§);
                        loop5:
                        while(true)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 break;
                              }
                              §§push(this.mSlingShotState);
                              loop6:
                              while(!_loc2_)
                              {
                                 §§push(§<g§);
                                 while(true)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          this.§49§();
                                          this.§+9§ = 2000;
                                          break;
                                          addr191:
                                       }
                                       §§push(this.mSlingShotState);
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop6;
                                    }
                                    §§push(§5c§);
                                    addr151:
                                    continue loop1;
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                if(!this.mDragging)
                                                {
                                                   this.§49§();
                                                   addr46:
                                                   break;
                                                }
                                             }
                                             addr172:
                                             if(_loc3_)
                                             {
                                                this.mDragging = false;
                                                addr177:
                                                if(!(_loc2_ && this))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      this.§[6§ = false;
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            this.§49§();
                                                            this.§]<§[this.§=I§].setPosition(this.§2!9§ - this.§]<§[this.§=I§].radius * Math.cos(this.§8E§ / (180 / Math.PI)),this.§'C§ + this.§]<§[this.§=I§].radius * Math.sin(this.§8E§ / (180 / Math.PI)));
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               if(_loc3_ || this)
                                                               {
                                                                  break;
                                                               }
                                                               break loop5;
                                                            }
                                                            addr239:
                                                            if(_loc3_)
                                                            {
                                                               this.§[6§ = false;
                                                               this.§49§();
                                                               addr214:
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               break;
                                                               addr256:
                                                            }
                                                            break loop1;
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   this.§+9§ = 1000;
                                                   break;
                                                   addr279:
                                                }
                                                §§goto(addr191);
                                             }
                                             break loop3;
                                          }
                                          break;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 this.mDragging = false;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    if(_loc2_ && _loc3_)
                                    {
                                       §§goto(addr172);
                                    }
                                    return;
                                 }
                                 §§goto(addr46);
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        this.§+9§ = 10000;
                        §§goto(addr239);
                     }
                  }
                  this.§49§();
                  this.§+9§ = 0;
                  §§goto(addr256);
               }
            }
            this.§49§();
            §§goto(addr279);
         }
      }
      
      public function get §01§() : §2^§
      {
         return this.§1! §;
      }
      
      public function §[§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.mSlingShotState == §<g§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop();
                     addr49:
                     return this.§+9§ <= 0;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §0<§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§?!C§ = this.§1! §.§0!§.§9$§("SLINGSHOT");
         var _loc2_:§1D§ = _loc1_.getFrame(0);
         var _loc3_:§1D§ = _loc1_.getFrame(1);
         if(_loc5_ || _loc2_)
         {
            this.§6!A§ = new §1!,§(_loc2_.texture);
            §§push(this.§6!A§);
            loop0:
            while(true)
            {
               §§push(_loc2_.scale);
               addr234:
               while(true)
               {
                  §§pop().scaleX = §§pop();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push(this.§%!;§);
            if(_loc5_)
            {
               §§push(§§pop() + 8.5);
            }
            §§pop().§39§ = §§pop();
            if(!_loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr128);
            }
            §§goto(addr77);
         }
      }
      
      public function §,B§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(!(_loc2_ && _loc1_))
         {
            this.§"2§ = this.§-Y§;
            loop0:
            while(true)
            {
               addr64:
               while(true)
               {
                  this.§&l§ = this.§%!;§;
                  continue loop0;
               }
            }
            addr74:
         }
         while(true)
         {
            this.§-v§ = §`5§.§5M§;
            if(!_loc3_)
            {
               continue;
            }
            if(!_loc2_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr74);
            }
            §§goto(addr64);
         }
         _loc1_ = null;
      }
      
      protected function §=A§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(_loc3_ || this)
         {
            if(!§<O§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc3_)
                  {
                     §<O§ = this.§1! §.textureManager.§]C§(_loc2_);
                  }
               }
               addr56:
               var _loc1_:§1!,§ = new §1!,§(§<O§);
               _loc1_.rotation = Math.PI;
               loop0:
               while(true)
               {
                  _loc1_.x = _loc1_.width / 2;
                  _loc1_.y = _loc1_.height / 2;
                  this.§%9§.addChild(_loc1_);
                  do
                  {
                     this.§6"§ = new Sprite();
                     this.§5s§ = new §09§(2,2,§9f§);
                     continue loop0;
                  }
                  while(!(_loc3_ || _loc2_));
                  
                  this.§5!9§.addChild(this.§3#§);
                  return;
               }
            }
            this.§%9§ = new Sprite();
         }
         §§goto(addr56);
      }
      
      public function §9V§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§'C§);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() / §2^§.§,]§);
            if(_loc6_ || _loc2_)
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§2!9§);
            if(!(_loc7_ && this))
            {
               §§push(§§pop() / §2^§.§,]§);
               if(!(_loc7_ && _loc3_))
               {
                  addr56:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(3.5);
               if(_loc6_)
               {
                  §§push(8);
                  §§push(this.§-v§);
                  if(_loc6_)
                  {
                     §§push(this.§8]§);
                     if(!_loc7_)
                     {
                        addr76:
                        §§push(§§pop() - §§pop());
                        if(!_loc7_)
                        {
                           §§push(this.§-v§);
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc6_ || _loc2_)
                        {
                           addr86:
                           var _loc4_:Number = §§pop();
                           if(!_loc7_)
                           {
                              §§push(this.§%9§);
                              loop0:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop1:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    §§push(this.§%9§);
                                    loop2:
                                    for(; !_loc7_; while(true)
                                    {
                                       §§push(this.§%9§);
                                       if(_loc7_ && param1)
                                       {
                                          break;
                                       }
                                       §§push(this.§8E§);
                                       if(!(_loc7_ && this))
                                       {
                                          §§goto(addr475);
                                       }
                                       §§goto(addr485);
                                    })
                                    {
                                       §§push(_loc2_);
                                       while(true)
                                       {
                                          §§pop().y = §§pop();
                                          continue loop2;
                                          addr475:
                                          if(_loc7_ && this)
                                          {
                                             continue;
                                          }
                                          §§push(-§§pop());
                                          if(!_loc7_)
                                          {
                                             addr485:
                                             if(!_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() / (180 / Math.PI));
                                          }
                                          §§pop().rotation = §§pop();
                                          while(true)
                                          {
                                             §§push(this.§6!A§);
                                             loop6:
                                             while(true)
                                             {
                                                §§push(this.§-Y§);
                                                addr449:
                                                while(true)
                                                {
                                                   §§push(§2^§.§,]§);
                                                   addr451:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      addr452:
                                                      while(true)
                                                      {
                                                         §§push(3);
                                                         addr453:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr454:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr493);
                        }
                        §§goto(addr86);
                     }
                     §§push(§§pop() / §§pop());
                  }
                  §§goto(addr76);
               }
               §§goto(addr86);
            }
            §§goto(addr56);
         }
         §§goto(addr35);
      }
      
      public function §4x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§]<§.length > 0)
            {
               this.§!3§(0,true);
               continue;
            }
            loop1:
            while(true)
            {
               this.§-=§();
               while(true)
               {
                  this.§-5§("BIRD_SARDINE",this.§-Y§,this.§%!;§);
                  while(_loc2_ || _loc1_)
                  {
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           this.§`!<§(§^I§);
                           if(!(_loc1_ && _loc1_))
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function §-=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@6§.playSound("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`!<§(§5c§);
         }
      }
      
      public function §49§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this.§"2§);
            §§push(this.§&l§);
            if(_loc2_)
            {
               §§push(this.§-v§);
               if(!(_loc1_ && _loc1_))
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
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         §§push(this.§2!9§);
         §§push(param1);
         while(true)
         {
            §§push(§§pop() == §§pop());
            §§push(§§pop() == §§pop());
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     §§push(this.§'C§);
                     while(true)
                     {
                        §§push(§§pop() == param2);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc9_ || param3))
                           {
                              break;
                           }
                           param2 = §§pop();
                           while(true)
                           {
                              this.§8]§ = this.§-v§;
                              while(true)
                              {
                                 this.§2!9§ = param1;
                                 this.§'C§ = param2;
                                 this.§8E§ = Math.atan2(-(this.§'C§ - this.§&l§),this.§2!9§ - this.§"2§);
                                 loop25:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§8E§);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() * (180 / Math.PI));
                                    }
                                    §§pop().§8E§ = §§pop();
                                    §§push(this.mDragging);
                                    while(true)
                                    {
                                       §§push(false);
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§push(this);
                                             §§push(param1);
                                             if(_loc9_ || this)
                                             {
                                                §§push(§§pop() - 0.7);
                                             }
                                             §§pop().§2!9§ = §§pop();
                                             this.§'C§ = param2;
                                             this.§8E§ = -160;
                                          }
                                          §§push(12);
                                          loop28:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr775:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                addr776:
                                                while(true)
                                                {
                                                   §§push(5);
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr771:
                                                      while(true)
                                                      {
                                                         §§push(4);
                                                         if(!_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop28;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       if(!(_loc9_ || param1))
                                       {
                                          continue;
                                       }
                                       §§pop();
                                       §§goto(addr490);
                                       §§push(this.§8E§);
                                       §§push(-90);
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       if(!(_loc9_ || param3))
                                       {
                                          continue loop25;
                                       }
                                       §§push(this.§8E§);
                                       if(!(_loc10_ && this))
                                       {
                                          §§goto(addr392);
                                       }
                                       §§goto(addr482);
                                    }
                                    §§goto(addr633);
                                 }
                              }
                              if(!(_loc9_ || param1))
                              {
                                 continue;
                              }
                              §§goto(addr354);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr973);
               }
            }
            §§push(§§pop() + _loc6_);
            if(!(_loc9_ || param2))
            {
               continue;
            }
            §§goto(addr432);
            §§push(§§pop() < §§pop() + _loc5_);
         }
      }
      
      protected function §]L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@6§.playSound("SlingshotStreched");
         }
      }
      
      public function §7z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§-Y§);
            §§push(this.§%!;§);
            if(!(_loc3_ && param1))
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
            §§push(§§pop() - this.§-Y§);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(_loc7_)
         {
            this.§-Y§ = param1;
         }
         §§push(param2);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() - this.§%!;§);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         this.§%!;§ = param2;
         loop0:
         while(true)
         {
            §§push(this);
            §§push(this.§39§);
            if(_loc7_ || param1)
            {
               §§push(§§pop() + _loc5_);
            }
            §§pop().§39§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§&l§);
               if(_loc7_ || param2)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§&l§ = §§pop();
               loop2:
               for(; !_loc6_; if(_loc6_ && this)
               {
                  continue;
               },§§goto(addr121))
               {
                  §§push(this);
                  §§push(this.§'C§);
                  if(_loc7_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§'C§ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§"2§);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + _loc4_);
                     }
                     §§pop().§"2§ = §§pop();
                     while(true)
                     {
                        if(!(_loc6_ && param2))
                        {
                           continue loop2;
                        }
                        §§push(this);
                        addr121:
                        §§push(this.§2!9§);
                        continue loop3;
                        if(!_loc6_)
                        {
                           §§push(§§pop() + _loc4_);
                        }
                        §§pop().§2!9§ = §§pop();
                        if(!(_loc6_ && param2))
                        {
                           if(!param3)
                           {
                              this.§%r§ = true;
                           }
                           else
                           {
                              addr52:
                           }
                           continue loop0;
                           return;
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public function §4$§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Number = 0;
         var _loc2_:§,1§ = null;
         _loc2_ = this.§]<§[this.§=I§];
         §§push(this.§8]§);
         if(_loc5_)
         {
            §§push(§§pop() / this.§-v§);
            if(!_loc4_)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               if(_loc2_ != null)
               {
                  if(_loc5_ || _loc2_)
                  {
                     addr68:
                     if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                     {
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(Number(§9"§.§?,§));
                           if(_loc5_)
                           {
                              addr99:
                              _loc1_ = §§pop();
                              §§goto(addr101);
                           }
                           §§goto(addr109);
                        }
                        addr101:
                        §§push(_loc1_);
                        if(_loc5_ || _loc1_)
                        {
                           addr109:
                           return §§pop() * _loc3_;
                        }
                     }
                     §§push(Number(§9"§.§<x§));
                     §§goto(addr99);
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr68);
         }
         §§goto(addr39);
      }
      
      public function §>A§() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§,1§ = null;
         if(_loc2_)
         {
            if(this.§]<§.length > this.§=I§)
            {
               if(!_loc3_)
               {
                  addr39:
                  _loc1_ = this.§]<§[this.§=I§];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr39);
      }
      
      public function §"!<§() : Point
      {
         return new Point(this.§"2§,this.§&l§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,1§ = null;
         this.§#2§(param1);
         while(true)
         {
            if(this.§%r§)
            {
               this.§9V§(param1);
               while(true)
               {
               }
               addr87:
            }
            loop2:
            while(true)
            {
               §§push(this);
               §§push(this.§+9§);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§+9§ = §§pop();
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     if(this.§+9§ < 0)
                     {
                        while(true)
                        {
                           this.§+9§ = 0;
                        }
                        addr61:
                     }
                     while(true)
                     {
                        if(this.mSlingShotState == §<g§)
                        {
                           continue loop3;
                        }
                        this.§9!&§(param1,param2);
                        if(!(_loc4_ && param2))
                        {
                           if(_loc4_)
                           {
                              break loop4;
                           }
                           if(false)
                           {
                              continue loop4;
                           }
                           _loc3_ = null;
                           if(this.§]<§.length > 0)
                           {
                              _loc3_ = this.§]<§[this.§=I§];
                           }
                           if(_loc3_)
                           {
                              _loc3_.§=x§(param1);
                           }
                           if(_loc3_)
                           {
                              addr284:
                              if(this.mSlingShotState != §8S§)
                              {
                                 addr246:
                                 §§push(this.mSlingShotState);
                                 §§push(§1R§);
                                 if(!_loc4_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(this.mSlingShotState);
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(§^I§);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr246);
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                addr178:
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc3_);
                                                   §§push(this.§2!9§);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(_loc3_.radius);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(§§pop() * Math.cos(this.§8E§ / (180 / Math.PI)));
                                                         if(!_loc4_)
                                                         {
                                                            addr211:
                                                            §§push(§§pop() - §§pop());
                                                            §§push(this.§'C§);
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               addr221:
                                                               §§push(_loc3_.radius);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() * Math.sin(this.§8E§ / (180 / Math.PI)));
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().setPosition(§§pop(),§§pop());
                                                            if(_loc5_)
                                                            {
                                                               §§push(this.§[6§);
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr178);
                                                                        }
                                                                        §§push(this);
                                                                        §§push(this.§8]§);
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§push(this.§-v§);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr153:
                                                                              §§push(§§pop() / §§pop());
                                                                              §§push(this.§8E§);
                                                                           }
                                                                           §§pop().§8r§(§§pop(),§§pop());
                                                                           addr156:
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 addr160:
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr298:
                                                                           this.§`!<§(§<g§);
                                                                           break;
                                                                           addr301:
                                                                        }
                                                                        §§goto(addr153);
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  break;
                                                               }
                                                               addr260:
                                                               if(§§pop())
                                                               {
                                                                  addr271:
                                                                  this.§`!<§(§^I§);
                                                               }
                                                               §§goto(addr160);
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                   }
                                                   §§goto(addr211);
                                                }
                                                addr240:
                                                break;
                                                addr278:
                                             }
                                             break;
                                          }
                                          §§goto(addr284);
                                       }
                                       §§goto(addr246);
                                    }
                                    if(!_loc4_)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§goto(addr260);
                                          §§push(_loc3_.§6E§);
                                       }
                                       else
                                       {
                                          addr286:
                                          if(this.§+9§ <= 0)
                                          {
                                             this.§`!<§(§1R§);
                                             if(!_loc4_)
                                             {
                                                _loc3_.§@A§();
                                                §§goto(addr278);
                                             }
                                             else
                                             {
                                                §§goto(addr301);
                                             }
                                          }
                                          §§goto(addr240);
                                       }
                                    }
                                    §§goto(addr271);
                                 }
                                 §§goto(addr284);
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr298);
                        }
                        else
                        {
                           §§goto(addr61);
                        }
                     }
                     §§goto(addr302);
                  }
                  continue loop2;
               }
            }
            if(!(_loc4_ && _loc3_))
            {
               addr302:
               return;
            }
         }
      }
      
      public function §5%§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§,1§ = null;
         if(_loc6_ || param3)
         {
            if(this.§]<§.length > 0)
            {
               if(!_loc7_)
               {
                  _loc5_ = this.§]<§[this.§=I§];
                  addr60:
                  if(!_loc5_)
                  {
                     if(!_loc7_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     _loc5_.setPosition(param1,param2);
                     do
                     {
                        this.§8r§(param3,param4);
                     }
                     while(!(_loc6_ || this));
                     
                  }
                  addr43:
               }
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr43);
      }
      
      protected function §8r§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§,1§ = null;
         if(this.§]<§.length > 0)
         {
            _loc3_ = this.§]<§[this.§=I§];
         }
         if(!_loc3_)
         {
            if(_loc4_)
            {
               return;
            }
         }
         else
         {
            this.mDragging = false;
         }
         do
         {
            this.§[6§ = false;
            this.§,j§ = new Date().time;
            this.§1! §.§,0§(_loc3_,param1,param2);
         }
         while(!(_loc4_ || param2));
         
         this.§!3§(this.§=I§,_loc3_.§2@§ > 0);
         this.§4,§();
         while(true)
         {
            if(this.§=I§ >= this.§]<§.length)
            {
               this.§`!<§(§<g§);
               break;
            }
            this.§`!<§(§8S§);
            if(!_loc4_)
            {
               break;
            }
            if(!(_loc4_ || _loc3_))
            {
               continue;
            }
            §§goto(addr37);
         }
         addr37:
      }
      
      protected function §4,§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc2_)
         {
            §§push(§@6§);
            §§push("BirdShot");
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().playSound(§§pop());
         }
      }
      
      public function §9!&§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§=I§);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc5_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               if(§§pop() >= this.§]<§.length)
               {
                  if(_loc5_)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        addr58:
                        addr98:
                        loop2:
                        while(true)
                        {
                           _loc4_++;
                           addr91:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        while(true)
                        {
                           this.§]<§[_loc4_].update(param1,true,param2);
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(!(_loc6_ && param1))
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr91);
                     }
                     §§goto(addr58);
                  }
                  continue;
               }
               addr96:
               if(this.mSlingShotState != §5c§)
               {
                  this.§]<§[_loc4_].update(param1,false,param2);
                  §§goto(addr91);
               }
               §§goto(addr98);
            }
            §§goto(addr96);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§,1§ = null;
         var _loc2_:* = 0;
         if(_loc6_ || _loc2_)
         {
            this.mDragging = false;
            while(true)
            {
               addr52:
               while(true)
               {
                  this.§49§();
               }
            }
            addr59:
         }
         while(this.§"j§ >= this.§]<§.length)
         {
            if(_loc6_)
            {
               return false;
            }
            if(!(_loc6_ || _loc3_))
            {
               continue;
            }
            if(!_loc5_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr59);
            }
            §§goto(addr52);
         }
         _loc1_ = this.§]<§[this.§"j§];
         if(_loc6_)
         {
            §§push(§&!@§.§9B§(_loc1_.name).score);
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
                  §§push(this.§1! §);
                  §§push(_loc2_);
                  §§push(§^;§.§'s§);
                  §§push(true);
                  §§push(_loc1_.x);
                  §§push(_loc1_.y);
                  if(!_loc5_)
                  {
                     §§push(3);
                     if(_loc6_ || _loc1_)
                     {
                        addr115:
                        §§push(§§pop() - §§pop());
                        §§push(§'b§.§+[§(_loc1_.name));
                     }
                     §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     while(true)
                     {
                        _loc1_.§`+§(-1,true);
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(true)
                              {
                                 var _loc3_:*;
                                 §§push((_loc3_ = this).§"j§);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc4_:* = §§pop();
                              }
                              continue loop4;
                              if(!(_loc5_ && _loc1_))
                              {
                                 _loc3_.§"j§ = _loc4_;
                              }
                              break;
                           }
                           continue loop3;
                        }
                     }
                     return true;
                     addr120:
                  }
                  §§goto(addr115);
               }
            }
         }
         §§goto(addr120);
      }
      
      public function §%!%§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§,1§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§]<§)
         {
            if(_loc5_ || this)
            {
               §§push(_loc1_);
               if(_loc5_ || this)
               {
                  §§push(int(§§pop() + §&!@§.§9B§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §1!5§() : int
      {
         return this.§>8§;
      }
      
      public function §#2§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         §§push(this.§!!&§);
         loop0:
         while(true)
         {
            §§push(0);
            addr172:
            addr20:
            while(§§pop() >= §§pop())
            {
               continue loop0;
            }
            return;
         }
      }
      
      public function §9-§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         loop0:
         while(true)
         {
            §§push(this.§1! §.objects.§9!0§(this.§"2§,this.§39§));
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
                           if(§§pop() == §§pop())
                           {
                              this.§7z§(0.1);
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!_loc3_)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() - 1);
                                          if(_loc4_ || _loc1_)
                                          {
                                             if(_loc3_ && _loc3_)
                                             {
                                                continue loop5;
                                             }
                                             _loc1_ = §§pop();
                                             addr66:
                                             if(!_loc4_)
                                             {
                                                continue loop4;
                                             }
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                continue loop1;
                                             }
                                             §§push(0);
                                          }
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          break;
                                       }
                                       if(_loc4_ || _loc1_)
                                       {
                                          while(true)
                                          {
                                             this.§!!&§ = -1;
                                             addr114:
                                          }
                                          addr84:
                                       }
                                       while(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             return;
                                          }
                                          addr107:
                                          while(_loc4_ || _loc2_)
                                          {
                                             §§goto(addr114);
                                          }
                                          continue loop3;
                                          §§goto(addr84);
                                       }
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr66);
                              }
                              continue loop0;
                           }
                           §§goto(addr107);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§1-§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr83:
               while(true)
               {
                  §§push(-§§pop());
                  addr84:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mSlingShotState == §^I§);
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
                           if(_loc2_)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(true);
                                 break;
                              }
                              addr99:
                              while(true)
                              {
                                 §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                                 if(_loc2_ || _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              addr99:
                           }
                           §§goto(addr99);
                        }
                        §§push(false);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                     }
                     addr90:
                     return §§pop();
                  }
                  addr78:
               }
               while(true)
               {
                  §§pop();
               }
            }
         }
         §§goto(addr99);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.mSlingShotState == §^I§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr40:
                     §§push(this.§8]§);
                     §§push(this.§-v§);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() * §@4§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            this.mDragging = false;
            if(_loc2_ || _loc3_)
            {
               addr53:
               this.§`!<§(§^I§);
            }
            var _loc1_:§,1§ = this.§]<§[this.§=I§];
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.§`+§(§7E§.§4B§);
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mDragging = true;
         }
         var _loc1_:§,1§ = this.§]<§[this.§=I§];
         if(!_loc3_)
         {
            _loc1_.§`+§(§7E§.§"n§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§[6§ = true;
         }
      }
      
      protected function §!3§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,1§ = null;
         if(!(_loc4_ && param2))
         {
            if(param1 < 0)
            {
               if(!(_loc4_ && param2))
               {
                  return;
               }
            }
         }
         if(this.§]<§[param1])
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc3_ = this.§]<§[param1];
               if(!(_loc4_ && _loc3_))
               {
                  this.§-o§.removeChild(_loc3_.sprite);
                  loop0:
                  while(true)
                  {
                     if(!param2)
                     {
                        loop2:
                        while(true)
                        {
                           _loc3_.dispose();
                           while(!(_loc4_ && this))
                           {
                              if(!_loc4_)
                              {
                                 this.§]<§[param1] = null;
                                 if(!(_loc4_ && param1))
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
                           addr130:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        this.§]<§.splice(param1,1);
                     }
                     else
                     {
                        addr142:
                        addr137:
                     }
                     continue;
                     return;
                  }
               }
               while(true)
               {
                  this.§;>§(this.§]<§[param1]);
                  §§goto(addr130);
               }
            }
            §§goto(addr142);
         }
         §§goto(addr137);
      }
      
      public function §;>§(param1:§,1§) : void
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
               if(_loc10_)
               {
                  §§push(this.§1! §);
                  if(_loc10_ || _loc2_)
                  {
                     §§push(§§pop().particles);
                     if(!_loc9_)
                     {
                        §§push(§'b§.§,U§);
                        if(_loc10_)
                        {
                           §§push(§>=§.§>!5§);
                           if(!(_loc9_ && param1))
                           {
                              §§push(§'b§.§=<§);
                              if(_loc10_ || this)
                              {
                                 §§push(param1.x);
                                 if(!_loc9_)
                                 {
                                    §§push(param1.y);
                                    if(!_loc9_)
                                    {
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          §§push(1000);
                                          if(!_loc9_)
                                          {
                                             §§push("");
                                             if(_loc10_ || this)
                                             {
                                                §§push(0);
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   break;
                                                }
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() * Math.cos(_loc6_));
                                                   }
                                                   §§push(_loc2_);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(§§pop() * Math.sin(_loc6_));
                                                      }
                                                   }
                                                   §§push(5);
                                                   §§push(_loc2_);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(§§pop() * 20);
                                                   }
                                                   §§pop().§-X§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                   do
                                                   {
                                                      _loc5_++;
                                                   }
                                                   while(_loc9_);
                                                   
                                                   if(!_loc9_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(param1.sprite);
                                                         addr285:
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(-§§pop().width);
                                                            addr287:
                                                            loop5:
                                                            while(!_loc9_)
                                                            {
                                                               §§push(§2^§.§,]§);
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        §§push(Number(§§pop()));
                                                                        addr303:
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           §§push(Math.random() * -_loc7_);
                                                                           §§push(2);
                                                                           addr310:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                              addr312:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr313:
                                                                                 while(_loc10_ || param1)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    continue loop4;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr301:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        break loop5;
                                                                     }
                                                                     addr341:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  break loop5;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(180 / Math.PI);
                                                               continue loop3;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1.sprite);
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         §§push(-§§pop().height);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§2^§.§,]§);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(Number(§§pop() * §§pop()));
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        if(_loc10_)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(Math.random() * -_loc8_);
                                                                              §§push(2);
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 addr260:
                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                 if(_loc10_ || _loc2_)
                                                                                 {
                                                                                    addr268:
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       addr276:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr335:
                                                                                    }
                                                                                    §§goto(addr341);
                                                                                 }
                                                                                 §§goto(addr276);
                                                                              }
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr313);
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr356);
                                                         }
                                                         §§goto(addr287);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                   _loc8_ = §§pop();
                                                   addr281:
                                                   while(true)
                                                   {
                                                      §§push(this.§1! §);
                                                      addr134:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().particles);
                                                         addr135:
                                                         while(true)
                                                         {
                                                            §§push(§'b§.§"x§);
                                                            addr137:
                                                            while(true)
                                                            {
                                                               §§push(§>=§.§>!5§);
                                                               addr139:
                                                               while(true)
                                                               {
                                                                  §§push(§'b§.§=<§);
                                                                  addr141:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.x);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           addr154:
                                                                           §§push(§§pop() + §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.y);
                                                                              addr156:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + _loc8_);
                                                                                 addr158:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(1500);
                                                                                    addr159:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push("");
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr154:
                                                                        }
                                                                        §§goto(addr156);
                                                                     }
                                                                     §§goto(addr154);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue;
                                                addr164:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr164);
                                             }
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr134);
               }
               §§goto(addr281);
            }
            else
            {
               §§push(_loc4_);
            }
            §§goto(addr335);
         }
         §§pop().§-X§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
      }
      
      public function §0!;§(param1:§,1§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!3§(this.§]<§.indexOf(param1));
         }
      }
      
      public function §8T§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§,1§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§,1§ = null;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc6_)
            {
               if(§§pop() < this.§]<§.length - 1)
               {
                  §§push(Number(Math.sqrt((this.§-Y§ - this.§]<§[_loc1_].x) * (this.§-Y§ - this.§]<§[_loc1_].x) + (this.§%!;§ - this.§]<§[_loc1_].y) * (this.§%!;§ - this.§]<§[_loc1_].y))));
                  if(!(_loc7_ && _loc2_))
                  {
                     _loc3_ = §§pop();
                     §§push(Number(Math.sqrt((this.§-Y§ - this.§]<§[_loc1_ + 1].x) * (this.§-Y§ - this.§]<§[_loc1_ + 1].x) + (this.§%!;§ - this.§]<§[_loc1_ + 1].y) * (this.§%!;§ - this.§]<§[_loc1_ + 1].y))));
                     if(!(_loc7_ && _loc3_))
                     {
                        addr139:
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           _loc4_ = §§pop();
                           addr143:
                           §§push(_loc3_);
                        }
                        if(§§pop() >= §§pop())
                        {
                           continue;
                        }
                        if(_loc6_ || _loc3_)
                        {
                           _loc5_ = this.§]<§[_loc1_];
                           if(!_loc7_)
                           {
                              this.§]<§.splice(_loc1_,1);
                              while(true)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    this.§]<§.splice(_loc1_ + 1,0,_loc5_);
                                    do
                                    {
                                       _loc1_ = int(Math.max(-1,_loc1_ - 2));
                                    }
                                    while(!_loc6_);
                                    
                                    if(!_loc6_)
                                    {
                                       break;
                                       addr174:
                                    }
                                    while(false)
                                    {
                                       continue loop2;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr174);
                        }
                        else
                        {
                           addr209:
                           if(this.§-o§.numChildren > 0)
                           {
                              §§push(this.§-o§);
                              if(!_loc7_)
                              {
                                 §§pop().removeChildAt(0);
                              }
                              §§goto(addr209);
                           }
                           §§push(0);
                           if(!_loc7_)
                           {
                              break;
                           }
                           addr260:
                           if(§§pop() < this.§]<§.length)
                           {
                              _loc2_ = this.§]<§[_loc1_];
                              if(!(_loc7_ && _loc2_))
                              {
                                 this.§-o§.addChildAt(_loc2_.sprite,0);
                                 if(_loc6_)
                                 {
                                    _loc1_++;
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr260);
                              }
                              addr259:
                           }
                           addr264:
                           return;
                           addr201:
                        }
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr139);
               }
               §§goto(addr201);
            }
            break;
         }
         _loc1_ = §§pop();
         if(!(_loc7_ && _loc1_))
         {
            §§goto(addr259);
         }
         §§goto(addr264);
      }
      
      public function §with§(param1:Number, param2:Number) : §,1§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§]<§.length)
            {
               if(_loc4_ && param1)
               {
                  continue;
               }
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               addr96:
            }
            else if(this.§]<§[_loc3_])
            {
               if(_loc5_ || _loc3_)
               {
                  if(this.§]<§[_loc3_].isInCoordinates(param1,param2))
                  {
                     if(!_loc4_)
                     {
                        return this.§]<§[_loc3_];
                     }
                  }
                  addr54:
                  _loc3_++;
                  continue;
               }
               §§goto(addr96);
            }
            §§goto(addr54);
         }
         return null;
      }
      
      public function §+x§(param1:Number, param2:Number) : §9"§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§-Y§);
               §§push(this.§-v§);
               loop1:
               while(true)
               {
                  §§push(4);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() >= §§pop() - §§pop());
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr191:
                                 while(true)
                                 {
                                    §§pop();
                                    addr192:
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr137:
                                       while(!_loc3_)
                                       {
                                          §§push(this.§-Y§);
                                          §§push(this.§-v§);
                                          while(true)
                                          {
                                             §§push(4);
                                             addr144:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                addr145:
                                                while(!_loc3_)
                                                {
                                                   if(!(_loc4_ || this))
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§§pop() <= §§pop() + §§pop());
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr191:
                              }
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(!_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(param2);
                                             loop9:
                                             for(; _loc4_; §§push(this.§%!;§),if(_loc3_ && param1)
                                             {
                                                continue;
                                             },§§goto(addr40))
                                             {
                                                §§push(this.§%!;§);
                                                §§push(this.§-v§);
                                                if(!_loc3_)
                                                {
                                                   §§push(4);
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr99:
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc4_)
                                                      {
                                                         if(_loc4_ || param2)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            while(true)
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr131:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr132:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    §§goto(addr192);
                                                                                 }
                                                                              }
                                                                              addr131:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       §§goto(addr63);
                                                                                    }
                                                                                    §§goto(addr132);
                                                                                 }
                                                                              }
                                                                              addr52:
                                                                           }
                                                                           addr25:
                                                                           return null;
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop7;
                                                                     addr121:
                                                                  }
                                                                  §§goto(addr191);
                                                                  §§goto(addr192);
                                                               }
                                                               §§goto(addr131);
                                                               addr40:
                                                               §§push(this.§39§);
                                                               if(_loc3_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() <= §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr52);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr131);
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         §§goto(addr143);
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr99);
                                             }
                                             §§goto(addr137);
                                          }
                                       }
                                       §§goto(addr121);
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        §§goto(addr191);
                     }
                  }
               }
            }
         }
         addr63:
         return this;
      }
      
      public function §9C§(param1:§8+§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§,1§ = null;
         var _loc4_:§0!7§ = null;
         if(_loc6_)
         {
            param1.§true § = this.§-Y§;
            if(_loc6_ || _loc3_)
            {
               addr36:
               param1.§&J§ = this.§%!;§;
            }
            var _loc2_:* = Number(0);
            loop0:
            for(; _loc2_ < this.§]<§.length; if(true)
            {
               continue;
            },§§goto(addr112))
            {
               _loc3_ = this.§]<§[_loc2_];
               (_loc4_ = new §0!7§()).x = _loc3_.x;
               if(!(_loc5_ && param1))
               {
                  _loc4_.y = _loc3_.y;
                  loop1:
                  while(true)
                  {
                     _loc4_.id = _loc3_.name;
                     addr129:
                     while(true)
                     {
                        addr112:
                        while(true)
                        {
                           param1.§=&§(_loc4_);
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop() + 1);
                     if(_loc6_ || _loc3_)
                     {
                        addr94:
                        §§push(Number(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr94);
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §2I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§]<§.length > 0)
         {
            this.§0!;§(this.§]<§[0]);
            if(!(_loc2_ || _loc2_))
            {
               break;
            }
         }
      }
      
      public function §1!'§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_ || param2)
            {
               if(§§pop() >= this.§]<§.length)
               {
                  addr135:
                  §§push(this.§-Y§);
                  if(!(_loc6_ && param2))
                  {
                     §§push(§§pop() > param1.x);
                     §§push(§§pop() > param1.x);
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§pop();
                              §§push(this.§-Y§ < param2.x);
                              if(_loc5_ || this)
                              {
                                 if(!(_loc5_ || param2))
                                 {
                                    continue;
                                 }
                                 §§push(§§pop());
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop())
                                    {
                                       break loop2;
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop8;
                                    }
                                    addr67:
                                    if(§§pop())
                                    {
                                       do
                                       {
                                          if(_loc6_)
                                          {
                                             break loop2;
                                          }
                                          addr74:
                                          §§pop();
                                          §§push(this.§%!;§);
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          addr64:
                                          while(true)
                                          {
                                             §§goto(addr67);
                                             §§goto(addr74);
                                          }
                                       }
                                       while(§§push(§§pop() < param2.y), _loc6_);
                                       
                                    }
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          _loc3_.push(this);
                                       }
                                       if(_loc6_ && param2)
                                       {
                                          while(true)
                                          {
                                             if(_loc6_ && this)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr64);
                                             §§push(this.§%!;§);
                                          }
                                          addr24:
                                          return _loc3_;
                                          addr112:
                                       }
                                       if(!_loc5_)
                                       {
                                          addr181:
                                          _loc3_.push(this.§]<§[_loc4_]);
                                          addr161:
                                          _loc4_++;
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr24);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr112);
                           }
                        }
                        §§goto(addr106);
                     }
                  }
                  §§goto(addr161);
               }
               else if(this.§]<§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr181);
               }
               §§goto(addr181);
            }
            §§goto(addr135);
         }
      }
      
      public function §7x§() : Array
      {
         return [this.§7j§,this.§6!A§];
      }
      
      public function §+;§(param1:String, param2:Number, param3:Number) : §,1§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§,1§ = this.§-5§(param1,param2,param3);
         if(_loc6_)
         {
            this.§8T§();
         }
         return _loc4_;
      }
      
      public function §,!;§() : Number
      {
         return this.§]<§.length;
      }
   }
}
