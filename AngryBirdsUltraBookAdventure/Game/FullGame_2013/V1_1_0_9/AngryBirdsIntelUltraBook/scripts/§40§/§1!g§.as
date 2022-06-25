package §40§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §"!i§.§"!'§;
   import §0S§.§6!D§;
   import §0S§.§7!Z§;
   import §1!B§.§<m§;
   import §5<§.§#c§;
   import §=`§.§#`§;
   import §=`§.§%!L§;
   import §?]§.Texture;
   import §[!b§.§-!Q§;
   import §`g§.§ O§;
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!g§
   {
      
      public static const §,a§:int = 0;
      
      public static const §1f§:int = 1;
      
      public static const §?9§:int = 2;
      
      public static const §7r§:int = 3;
      
      public static const §"9§:int = 5;
      
      public static const §+!d§:int = 3151368;
      
      protected static const §,[§:int = 8;
      
      protected static const §-%§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §#!k§:Number = -0.7;
      
      protected static const §%s§:Number = 0;
      
      protected static var §'!8§:Texture;
      
      public static const §1G§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,a§ = 0;
            loop0:
            while(true)
            {
               §1f§ = 1;
               while(true)
               {
                  §?9§ = 2;
                  loop2:
                  while(_loc2_)
                  {
                     §7r§ = 3;
                     while(true)
                     {
                        §"9§ = 5;
                        while(!(_loc1_ && _loc2_))
                        {
                           §+!d§ = 3151368;
                           continue loop0;
                           while(!(_loc1_ && _loc2_))
                           {
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              BIRD_LAUNCH_FORCE = 46.25;
                              loop9:
                              while(true)
                              {
                                 BIRD_LAUNCH_FORCE_GREEN = 52.5;
                                 addr77:
                                 while(true)
                                 {
                                    §#!k§ = -0.7;
                                    continue loop9;
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
            §,[§ = 8;
            §§goto(addr101);
         }
      }
      
      public var §#!U§:§5G§;
      
      public var §#!!§:Number;
      
      public var §!!3§:Number;
      
      public var §[!-§:Number;
      
      protected var §1;§:Number;
      
      protected var §4_§:Number;
      
      protected var §^0§:Number;
      
      protected var §7!B§:Number;
      
      public var §0!g§:Number;
      
      public var §"!F§:Boolean = false;
      
      protected var §-m§:Number;
      
      public var § Y§:Vector.<§<!P§>;
      
      public var §1]§:int;
      
      public var §9h§:int;
      
      public var §4!K§:Number;
      
      public var §;!j§:Sprite;
      
      public var §[<§:int = 0;
      
      public var §]f§:Number = 0;
      
      public var §+!5§:Array;
      
      public var §3!t§:Array;
      
      public var mSlingShotState:int;
      
      public var §4q§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §%!N§:Boolean = false;
      
      public var §0!§:Number;
      
      protected var § w§:Boolean = false;
      
      protected var §]2§:Sprite;
      
      protected var §4!O§:§ O§;
      
      protected var §@I§:§ O§;
      
      protected var §<g§:Sprite;
      
      protected var §=d§:Sprite;
      
      protected var §8r§:Sprite;
      
      protected var §^!0§:§"<§;
      
      protected var §3""§:§"<§;
      
      private var §00§:Number = 0;
      
      private var §"1§:int = 0;
      
      protected var §1!p§:Number = -0.7;
      
      protected var §@§:Number = 0;
      
      public function §1!g§(param1:§5G§, param2:§"!'§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§#c§ = null;
         if(_loc6_ || param2)
         {
            this.§ Y§ = new Vector.<§<!P§>();
            while(true)
            {
               super();
               loop1:
               for(; !(_loc7_ && param1); while(true)
               {
                  if(_loc6_ || param3)
                  {
                     if(!param2)
                     {
                        §<m§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               },§§goto(addr242))
               {
                  this.§#!U§ = param1;
                  while(true)
                  {
                     this.§]2§ = param3;
                     continue loop1;
                     loop5:
                     for(; !(_loc7_ && param1); loop7:
                     while(true)
                     {
                        this.§," §();
                        do
                        {
                           _loc4_ = 0;
                        }
                        while(!(_loc6_ || param1));
                        
                        if(_loc7_ && param1)
                        {
                           break;
                        }
                        if(!_loc6_)
                        {
                           while(!(_loc7_ && param3))
                           {
                              this.setPosition(param2.§`!P§,param2.§=!M§);
                              break loop7;
                           }
                           continue loop1;
                           addr57:
                        }
                        if(false)
                        {
                           continue;
                        }
                        while(_loc4_ < param2.§[i§)
                        {
                           _loc5_ = param2.§^!V§(_loc4_);
                           if(_loc6_)
                           {
                              this.§-!I§(_loc5_.id,_loc5_.x,_loc5_.y);
                              if(!_loc7_)
                              {
                                 _loc4_++;
                              }
                           }
                        }
                        if(!_loc7_)
                        {
                           this.§"1§ = this.§+!u§();
                           if(!_loc7_)
                           {
                              this.§1]§ = 0;
                              loop10:
                              while(true)
                              {
                                 if(this.§ Y§.length > 0)
                                 {
                                    this.§8k§(§,a§);
                                    while(true)
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          if(!_loc7_)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   this.§0!§ = 0;
                                                   addr220:
                                                   while(true)
                                                   {
                                                      this.§+G§();
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            this.update(0,true);
                                                            continue;
                                                         }
                                                         loop21:
                                                         while(!(_loc6_ || param2))
                                                         {
                                                            while(true)
                                                            {
                                                               this.§8k§(§7r§);
                                                               continue loop21;
                                                            }
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            continue loop10;
                                                         }
                                                         addr270:
                                                         while(true)
                                                         {
                                                            §§push(§<m§);
                                                            §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               §§push(this.§#!!§);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     addr296:
                                                                     §§push(§§pop() + " ");
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        addr305:
                                                                        §§push(§§pop() + this.§!!3§);
                                                                     }
                                                                     §§pop().log(§§pop());
                                                                     break loop18;
                                                                  }
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            §§goto(addr296);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr263:
                                                while(true)
                                                {
                                                   continue loop12;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§8k§(§7r§);
                                          }
                                       }
                                       §§goto(addr263);
                                       if(_loc7_ && param1)
                                       {
                                          continue;
                                       }
                                       §§goto(addr184);
                                    }
                                 }
                                 §§goto(addr270);
                              }
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr166);
                     })
                     {
                        while(true)
                        {
                           continue loop5;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]2§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§00§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§1]§ < this.§ Y§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§ Y§.length > 0)
            {
               this.§5!u§(0);
               continue;
            }
            if(!(_loc2_ && this))
            {
               this.§ Y§ = null;
            }
            loop1:
            while(true)
            {
               §§push(this.§]2§);
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        this.§;!j§ = null;
                        loop4:
                        while(true)
                        {
                           this.§+!5§ = null;
                           while(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 if(_loc1_ || this)
                                 {
                                    this.§3!t§ = null;
                                    if(!(_loc2_ && this))
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           addr75:
                           while(!(_loc1_ || _loc1_))
                           {
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
                  while(true)
                  {
                     §§push(this.§]2§);
                     §§goto(addr75);
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
      
      public function §'!%§(param1:String, param2:Number, param3:Number, param4:int = -1) : §<!P§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§<!P§;
         (_loc5_ = this.§-!I§(param1,param2,param3,param4)).§0!@§();
         if(_loc7_ || param3)
         {
            this.§8k§(§?9§);
         }
         return _loc5_;
      }
      
      protected function §-!I§(param1:String, param2:Number, param3:Number, param4:int = -1) : §<!P§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§<!P§ = new §<!P§(this,new Sprite(),param1,param2,param3);
         if(!(_loc6_ && param1))
         {
            if(param4 >= 0)
            {
               this.§ Y§.splice(param4,0,_loc5_);
               while(true)
               {
                  if(_loc7_ || param3)
                  {
                     loop1:
                     while(true)
                     {
                        this.§;!j§.addChild(_loc5_.sprite);
                        if(!_loc7_)
                        {
                           break;
                        }
                        if(_loc7_ || param3)
                        {
                           return _loc5_;
                        }
                        addr96:
                        while(true)
                        {
                           this.§ Y§.push(_loc5_);
                           continue loop1;
                        }
                     }
                     continue;
                     addr50:
                  }
                  while(true)
                  {
                     §§goto(addr50);
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function §8k§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.mSlingShotState = param1;
            while(true)
            {
               §§push(this.mSlingShotState);
               while(true)
               {
                  §§push(§,a§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.§5!d§();
                        }
                        this.§4!K§ = 1000;
                        loop13:
                        while(true)
                        {
                           this.mDragging = false;
                           if(_loc2_)
                           {
                              break;
                           }
                           loop14:
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop13;
                              }
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop13;
                                          }
                                          addr233:
                                          addr233:
                                          if(_loc2_ || _loc3_)
                                          {
                                             this.§5!d§();
                                             this.§4!K§ = 2000;
                                             addr214:
                                             if(!_loc3_)
                                             {
                                                continue loop13;
                                             }
                                             §§goto(addr328);
                                             addr242:
                                          }
                                          else
                                          {
                                             addr273:
                                             while(true)
                                             {
                                                this.§4!K§ = 10000;
                                                addr276:
                                                while(true)
                                                {
                                                   this.§%!N§ = false;
                                                   loop11:
                                                   while(true)
                                                   {
                                                      this.§5!d§();
                                                      addr246:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            continue loop13;
                                                         }
                                                         addr306:
                                                         while(true)
                                                         {
                                                            this.§5!d§();
                                                            while(true)
                                                            {
                                                               this.§4!K§ = 0;
                                                               addr281:
                                                               while(!(_loc3_ && this))
                                                               {
                                                                  continue loop13;
                                                               }
                                                            }
                                                         }
                                                         addr126:
                                                         if(_loc2_ || this)
                                                         {
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr233);
                                             }
                                             addr273:
                                          }
                                       }
                                       else
                                       {
                                          while(!(_loc3_ && _loc2_))
                                          {
                                             if(!this.mDragging)
                                             {
                                                this.§5!d§();
                                                continue loop14;
                                             }
                                             if(!_loc3_)
                                             {
                                                this.mDragging = false;
                                             }
                                             loop17:
                                             for(; _loc2_ || _loc3_; while(true)
                                             {
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   continue loop17;
                                                }
                                                §§goto(addr126);
                                             },§§goto(addr246))
                                             {
                                                this.§%!N§ = false;
                                                while(_loc2_ || this)
                                                {
                                                   this.§5!d§();
                                                   continue loop17;
                                                }
                                                §§goto(addr214);
                                             }
                                             §§goto(addr242);
                                          }
                                          addr187:
                                       }
                                       §§goto(addr281);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr119);
                                 this.§ Y§[this.§1]§].setPosition(this.§^0§ - this.§ Y§[this.§1]§].radius * Math.cos(this.§]f§ / (180 / Math.PI)),this.§7!B§ + this.§ Y§[this.§1]§].radius * Math.sin(this.§]f§ / (180 / Math.PI)));
                              }
                           }
                           §§goto(addr313);
                        }
                        addr328:
                        addr313:
                        if(_loc3_ && param1)
                        {
                           §§goto(addr276);
                        }
                        return;
                        addr28:
                     }
                     else
                     {
                        §§push(this.mSlingShotState);
                        loop3:
                        while(true)
                        {
                           §§push(§1f§);
                           addr305:
                           while(§§pop() != §§pop())
                           {
                              §§push(this.mSlingShotState);
                              while(true)
                              {
                                 §§push(§?9§);
                                 addr265:
                                 while(true)
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          break;
                                       }
                                       §§push(this.mSlingShotState);
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr273);
                              }
                           }
                           §§goto(addr306);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr273);
      }
      
      public function get §`!j§() : §5G§
      {
         return this.§#!U§;
      }
      
      public function § !$§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.mSlingShotState == §7r§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr43:
                     §§pop();
                     return this.§4!K§ <= 0;
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      private function §," §() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§%!L§ = this.getSlingshotAnimation();
         var _loc2_:§#`§ = _loc1_.getFrame(0);
         var _loc3_:§#`§ = _loc1_.getFrame(1);
         if(!_loc4_)
         {
            this.§^!0§ = new §"<§(_loc2_.texture);
            while(true)
            {
               §§push(this.§^!0§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr291:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr148);
            }
         }
         §§goto(addr208);
      }
      
      protected function getSlingshotAnimation() : §%!L§
      {
         return this.§#!U§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §5!3§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc3_)
         {
            this.§1;§ = this.§#!!§;
         }
         while(true)
         {
            while(true)
            {
               this.§4_§ = this.§!!3§;
               do
               {
                  this.§-m§ = §2!y§.§5L§;
               }
               while(_loc2_);
               
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
               if(true)
               {
                  _loc1_ = null;
                  return;
               }
            }
         }
      }
      
      protected function §[w§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(_loc4_)
         {
            if(!§'!8§)
            {
               if(_loc4_)
               {
                  addr26:
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(!(_loc3_ && this))
                  {
                     §'!8§ = this.§#!U§.textureManager.getTextureFromBitmapData(_loc2_);
                     addr48:
                     this.§8r§ = new Sprite();
                  }
                  §§goto(addr48);
               }
               var _loc1_:§"<§ = new §"<§(§'!8§);
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
                        while(true)
                        {
                           this.§8r§.addChild(_loc1_);
                           loop3:
                           for(; !(_loc3_ && this); loop6:
                           while(!(_loc3_ && _loc3_))
                           {
                              this.§=d§ = new Sprite();
                              while(true)
                              {
                                 this.§@I§ = new § O§(2,2,§+!d§);
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 §§goto(addr143);
                                 if(!(_loc4_ || this))
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       return;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr135);
                              }
                           })
                           {
                              this.§<g§ = new Sprite();
                              while(true)
                              {
                                 this.§4!O§ = new § O§(2,2,§+!d§);
                                 addr135:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       this.§<g§.addChild(this.§4!O§);
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr143);
            }
            §§goto(addr48);
         }
         §§goto(addr26);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§7!B§);
         if(_loc7_)
         {
            §§push(§§pop() / §5G§.§6+§);
            if(_loc7_)
            {
               addr26:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§^0§);
            if(!_loc6_)
            {
               §§push(§§pop() / §5G§.§6+§);
               if(_loc7_)
               {
                  addr37:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(3.5);
               if(_loc7_)
               {
                  §§push(8);
                  §§push(this.§-m§);
                  if(!_loc6_)
                  {
                     §§push(this.§0!g§);
                     if(_loc7_)
                     {
                        addr62:
                        §§push(§§pop() - §§pop());
                        if(_loc7_ || _loc3_)
                        {
                           §§push(this.§-m§);
                        }
                        §§push(§§pop() + §§pop() * §§pop());
                        if(_loc7_)
                        {
                           addr67:
                           var _loc4_:Number = §§pop();
                           if(!_loc6_)
                           {
                              §§push(this.§8r§);
                              loop0:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr470:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr471:
                                    while(true)
                                    {
                                       §§push(this.§8r§);
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           §§goto(addr551);
                        }
                        §§goto(addr67);
                     }
                     §§push(§§pop() / §§pop());
                  }
                  §§goto(addr62);
               }
               §§goto(addr67);
            }
            §§goto(addr37);
         }
         §§goto(addr26);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§ Y§.length > 0)
            {
               this.§5!u§(0,true);
               continue;
            }
            if(!(_loc2_ && this))
            {
               this.§]! §();
            }
            while(true)
            {
               this.§-!I§("BIRD_SARDINE",this.§#!!§,this.§!!3§);
               while(!_loc2_)
               {
                  this.§8k§(§?9§);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc1_ || this)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      protected function §]! §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §-!Q§.§#3§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8k§(§"9§);
         }
      }
      
      public function §5!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§1;§);
            §§push(this.§4_§);
            if(_loc2_)
            {
               §§push(this.§-m§);
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
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         if(_loc10_)
         {
            §§push(this.§^0§);
            loop0:
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
                              addr1327:
                              while(true)
                              {
                                 §§push(this.§7!B§);
                                 addr1313:
                                 while(true)
                                 {
                                    §§push(param2);
                                    addr1314:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr1326:
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
                                    this.§0!g§ = Math.sqrt((param2 - this.§4_§) * (param2 - this.§4_§) + (param1 - this.§1;§) * (param1 - this.§1;§));
                                    loop11:
                                    while(true)
                                    {
                                       §§push(this.§0!g§);
                                       while(true)
                                       {
                                          §§push(this.§-m§);
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                while(_loc10_)
                                                {
                                                   §§push(param3);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(this.§1;§);
                                                            while(true)
                                                            {
                                                               §§push(this.§-m§);
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§1;§);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§0!g§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       while(!_loc9_)
                                                                                       {
                                                                                          param1 = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§4_§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§-m§);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§4_§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            loop33:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§0!g§);
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
                                                                                                                           loop38:
                                                                                                                           while(!_loc9_)
                                                                                                                           {
                                                                                                                              this.§0!g§ = this.§-m§;
                                                                                                                              loop39:
                                                                                                                              while(_loc10_ || param2)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§^0§ = param1;
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§7!B§ = param2;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§]f§ = Math.atan2(-(this.§7!B§ - this.§4_§),this.§^0§ - this.§1;§);
                                                                                                                                          loop43:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(this.§]f§);
                                                                                                                                             if(!(_loc9_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * (180 / Math.PI));
                                                                                                                                             }
                                                                                                                                             §§pop().§]f§ = §§pop();
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
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this);
                                                                                                                                                            §§push(param1);
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + this.§1!p§);
                                                                                                                                                            }
                                                                                                                                                            §§pop().§^0§ = §§pop();
                                                                                                                                                            addr1134:
                                                                                                                                                            while(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(param2);
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + this.§@§);
                                                                                                                                                               }
                                                                                                                                                               §§pop().§7!B§ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.§]f§ = -160;
                                                                                                                                                                  addr1110:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop39;
                                                                                                                                                         }
                                                                                                                                                         addr1126:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(12);
                                                                                                                                                         loop52:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc4_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(5);
                                                                                                                                                                  loop55:
                                                                                                                                                                  for(; !_loc9_; while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(4);
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop55;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc6_ = §§pop();
                                                                                                                                                                        loop59:
                                                                                                                                                                        while(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§-m§);
                                                                                                                                                                           loop60:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(2);
                                                                                                                                                                              addr1079:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                 addr1080:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr1081:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                                                                       addr1082:
                                                                                                                                                                                       while(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§0!g§);
                                                                                                                                                                                          continue loop60;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop59;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop43;
                                                                                                                                                                        addr968:
                                                                                                                                                                        while(_loc10_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop33;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr986);
                                                                                                                                                                              §§push(param1);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1009);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  })
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                        continue loop55;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop52;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                if(_loc9_ && this)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                this.§"!F§ = true;
                                                                                                                                                §§goto(addr341);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(_loc10_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1018);
                                                                                                                                                §§push(this.§]f§);
                                                                                                                                             }
                                                                                                                                             break loop15;
                                                                                                                                          }
                                                                                                                                          continue loop38;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop10;
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
                                                                                                }
                                                                                             }
                                                                                             if(_loc10_ || param2)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(this.§0!g§);
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(!(_loc9_ && param3))
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               if(!(_loc9_ && param1))
                                                                                                               {
                                                                                                                  §§push(this.§-m§);
                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                  {
                                                                                                                     §§goto(addr97);
                                                                                                                  }
                                                                                                                  §§goto(addr122);
                                                                                                               }
                                                                                                               §§goto(addr968);
                                                                                                            }
                                                                                                            §§goto(addr625);
                                                                                                         }
                                                                                                         §§goto(addr507);
                                                                                                      }
                                                                                                      §§goto(addr515);
                                                                                                   }
                                                                                                   §§goto(addr248);
                                                                                                }
                                                                                                break loop9;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop0;
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
                                                      break;
                                                      if(!(_loc10_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr183);
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   this.§0!g§ = Math.sqrt((this.§7!B§ - this.§4_§) * (this.§7!B§ - this.§4_§) + (this.§^0§ - this.§1;§) * (this.§^0§ - this.§1;§));
                                                   §§goto(addr1274);
                                                }
                                                continue loop11;
                                             }
                                             §§goto(addr1177);
                                          }
                                       }
                                    }
                                 }
                              }
                              break;
                              while(_loc10_ || param2)
                              {
                                 §§pop();
                                 §§goto(addr836);
                              }
                           }
                           §§goto(addr1318);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr1100);
      }
      
      protected function §^<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §-!Q§.§#3§("SlingshotStreched");
         }
      }
      
      public function §<4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§#!!§);
            §§push(this.§!!3§);
            if(!(_loc2_ && _loc3_))
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
            §§push(§§pop() - this.§#!!§);
            if(!(_loc6_ && param1))
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc7_ || param3)
            {
               this.§#!!§ = param1;
            }
            §§push(param2);
            if(_loc7_ || this)
            {
               §§push(§§pop() - this.§!!3§);
               if(_loc7_ || param3)
               {
                  addr60:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!(_loc6_ && param3))
               {
                  this.§!!3§ = param2;
                  loop0:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§[!-§);
                     if(!(_loc6_ && param3))
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§[!-§ = §§pop();
                     loop1:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§4_§);
                        if(_loc7_)
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§4_§ = §§pop();
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§7!B§);
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop() + _loc5_);
                           }
                           §§pop().§7!B§ = §§pop();
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§1;§);
                              if(_loc7_ || param3)
                              {
                                 §§push(§§pop() + _loc4_);
                              }
                              §§pop().§1;§ = §§pop();
                              addr159:
                              while(!_loc6_)
                              {
                              }
                           }
                           addr117:
                           if(!(_loc7_ || this))
                           {
                              continue;
                           }
                           this.updateAnimations(0);
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 this.§4q§ = true;
                                 if(_loc6_ && param1)
                                 {
                                    continue;
                                 }
                                 addr85:
                                 if(_loc7_ || param2)
                                 {
                                    if(_loc7_)
                                    {
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc7_ || param2)
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§goto(addr117);
                                    }
                                    addr142:
                                    while(_loc7_)
                                    {
                                       if(param3)
                                       {
                                          continue loop7;
                                       }
                                       continue loop9;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr159);
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§^0§);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() + _loc4_);
                  }
                  §§pop().§^0§ = §§pop();
                  §§goto(addr142);
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
         var _loc2_:§<!P§ = null;
         _loc2_ = this.§ Y§[this.§1]§];
         §§push(this.§0!g§);
         if(!_loc5_)
         {
            §§push(§§pop() / this.§-m§);
            if(!(_loc5_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || this)
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(_loc4_)
                     {
                        §§goto(addr74);
                     }
                     §§goto(addr113);
                  }
                  else
                  {
                     §§push(§1!g§.BIRD_LAUNCH_FORCE);
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr109);
                        }
                        §§goto(addr121);
                     }
                  }
                  §§goto(addr112);
               }
               §§goto(addr74);
            }
            §§goto(addr112);
         }
         addr74:
         §§push(§1!g§.BIRD_LAUNCH_FORCE_GREEN);
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
            if(!_loc5_)
            {
               addr109:
               §§push(Number(§§pop()));
               if(!_loc5_)
               {
                  addr112:
                  _loc1_ = §§pop();
                  addr113:
                  §§push(_loc1_);
                  if(_loc4_ || _loc3_)
                  {
                     addr121:
                     return §§pop() * _loc3_;
                  }
               }
            }
         }
      }
      
      public function §+j§() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§<!P§ = null;
         if(_loc2_)
         {
            if(this.§ Y§.length <= this.§1]§)
            {
               return null;
            }
            if(!_loc3_)
            {
               _loc1_ = this.§ Y§[this.§1]§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §'!'§() : Point
      {
         return new Point(this.§1;§,this.§4_§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<!P§ = null;
         if(_loc4_ || this)
         {
            this.§!!&§(param1);
            loop0:
            while(true)
            {
               if(this.§4q§)
               {
                  continue;
               }
               addr80:
               loop2:
               while(true)
               {
                  §§push(this);
                  §§push(this.§4!K§);
                  if(_loc4_ || param2)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§4!K§ = §§pop();
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(this.§4!K§ >= 0)
                        {
                           loop7:
                           while(true)
                           {
                              if(this.mSlingShotState == §7r§)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 this.§9!!§(param1,param2);
                              }
                              if(_loc5_)
                              {
                                 addr72:
                                 while(true)
                                 {
                                    if(!(_loc4_ || param1))
                                    {
                                       break loop3;
                                    }
                                    continue loop7;
                                 }
                                 continue loop2;
                                 addr72:
                              }
                              if(_loc5_)
                              {
                                 continue loop3;
                              }
                              if(!(_loc4_ || param2))
                              {
                                 continue loop2;
                              }
                              if(false)
                              {
                                 continue loop4;
                              }
                              _loc3_ = null;
                              if(!_loc5_)
                              {
                                 if(this.§ Y§.length > 0)
                                 {
                                    if(_loc4_)
                                    {
                                       _loc3_ = this.§ Y§[this.§1]§];
                                       addr133:
                                       if(_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             _loc3_.§5!b§(param1);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr376:
                                                if(_loc3_)
                                                {
                                                   addr343:
                                                   if(this.mSlingShotState != §,a§)
                                                   {
                                                      addr294:
                                                      §§push(this.mSlingShotState);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         addr302:
                                                         §§push(§1f§);
                                                         if(_loc4_ || param1)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               §§push(this.mSlingShotState);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(§?9§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr302);
                                                                  }
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           addr226:
                                                                           if(!_loc3_.§%b§())
                                                                           {
                                                                              addr227:
                                                                              §§push(_loc3_);
                                                                              §§push(this.§^0§);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(_loc3_.radius);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(§§pop() * Math.cos(this.§]f§ / (180 / Math.PI)));
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr249:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       §§push(this.§7!B§);
                                                                                       if(_loc5_ && this)
                                                                                       {
                                                                                       }
                                                                                       addr278:
                                                                                       §§pop().setPosition(§§pop(),§§pop());
                                                                                       addr279:
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr148:
                                                                                             §§push(this.§%!N§);
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(!(_loc5_ && param2))
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§0!g§);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§push(this.§-m§);
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr192:
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     §§push(this.§]f§);
                                                                                                                  }
                                                                                                                  §§pop().§break§(§§pop(),§§pop());
                                                                                                                  addr195:
                                                                                                                  if(!(_loc4_ || param1))
                                                                                                                  {
                                                                                                                     §§goto(addr227);
                                                                                                                  }
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     addr204:
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr192);
                                                                                                            }
                                                                                                            addr320:
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               this.§8k§(§?9§);
                                                                                                               addr325:
                                                                                                               if(!(_loc5_ && param2))
                                                                                                               {
                                                                                                                  addr332:
                                                                                                                  §§goto(addr204);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc3_.§"0§();
                                                                                                                  addr375:
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr279);
                                                                                                      }
                                                                                                      §§goto(addr195);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr319:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr320);
                                                                                                }
                                                                                                §§goto(addr204);
                                                                                             }
                                                                                             §§goto(addr226);
                                                                                             addr288:
                                                                                          }
                                                                                          addr378:
                                                                                          this.§8k§(§7r§);
                                                                                          break;
                                                                                          addr381:
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    §§push(_loc3_.radius);
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() * Math.sin(this.§]f§ / (180 / Math.PI)));
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§goto(addr278);
                                                                              }
                                                                              §§goto(addr249);
                                                                           }
                                                                           §§goto(addr148);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr310:
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              §§goto(addr319);
                                                                              §§push(_loc3_.§,O§);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr372:
                                                                              this.§8k§(§1f§);
                                                                           }
                                                                        }
                                                                        §§goto(addr375);
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                      }
                                                      §§goto(addr343);
                                                   }
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         if(this.§4!K§ <= 0)
                                                         {
                                                            §§goto(addr372);
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr381);
                                                      }
                                                   }
                                                   §§goto(addr375);
                                                }
                                                §§goto(addr378);
                                             }
                                             §§goto(addr288);
                                          }
                                          §§goto(addr332);
                                       }
                                       §§goto(addr376);
                                    }
                                    §§goto(addr332);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr195);
                           }
                           return;
                        }
                        continue loop3;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr80);
         }
      }
      
      public function §7!t§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§<!P§ = null;
         if(!_loc7_)
         {
            if(this.§ Y§.length > 0)
            {
               if(_loc6_ || param2)
               {
                  _loc5_ = this.§ Y§[this.§1]§];
               }
               return;
               addr89:
            }
            if(!_loc5_)
            {
               if(!(_loc7_ && param1))
               {
                  return;
               }
            }
            else
            {
               _loc5_.setPosition(param1,param2);
            }
            do
            {
               this.§break§(param3,param4);
            }
            while(!(_loc6_ || param3));
            
         }
         §§goto(addr89);
      }
      
      protected function §break§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§<!P§ = null;
         if(_loc5_)
         {
            this.§1!p§ = §#!k§;
            if(_loc5_ || _loc3_)
            {
               this.§@§ = §%s§;
               if(!_loc4_)
               {
                  if(this.§ Y§.length > 0)
                  {
                     if(_loc5_)
                     {
                        _loc3_ = this.§ Y§[this.§1]§];
                        addr51:
                        if(!_loc3_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              return;
                           }
                           addr102:
                           this.§8k§(§7r§);
                           return;
                           addr105:
                        }
                        else
                        {
                           this.mDragging = false;
                           loop5:
                           while(true)
                           {
                              this.§%!N§ = false;
                              addr160:
                              while(true)
                              {
                                 this.§00§ = new Date().time;
                                 addr153:
                                 while(_loc4_)
                                 {
                                    continue loop5;
                                 }
                                 addr146:
                                 this.§#!U§.§`!`§(_loc3_,param1,param2);
                                 loop6:
                                 while(true)
                                 {
                                    this.§5!u§(this.§1]§,_loc3_.§+_§ > 0);
                                    addr121:
                                    while(_loc4_ && param2)
                                    {
                                       §§goto(addr153);
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr105);
                     }
                     while(true)
                     {
                        this.playBirdShotSound();
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(this.§1]§ >= this.§ Y§.length)
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr102);
                                 }
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr102);
                        §§goto(addr121);
                     }
                  }
                  §§goto(addr51);
               }
               §§goto(addr92);
            }
            §§goto(addr146);
         }
         §§goto(addr102);
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc3_ || _loc3_)
         {
            §§push(§-!Q§);
            §§push("BirdShot");
            if(_loc3_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§#3§(§§pop());
         }
      }
      
      public function §9!!§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§1]§);
         if(!_loc6_)
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
            if(_loc5_)
            {
               if(§§pop() >= this.§ Y§.length)
               {
                  if(!_loc6_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        _loc4_++;
                        addr89:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     addr58:
                     addr106:
                  }
                  while(_loc6_ && _loc3_)
                  {
                     §§goto(addr58);
                  }
                  continue;
               }
               addr94:
               if(this.mSlingShotState == §"9§)
               {
                  if(_loc5_)
                  {
                     this.§ Y§[_loc4_].update(param1,true,param2);
                  }
                  §§goto(addr106);
               }
               else
               {
                  this.§ Y§[_loc4_].update(param1,false,param2);
               }
               §§goto(addr89);
            }
            §§goto(addr94);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§<!P§ = null;
         var _loc2_:int = 0;
         if(!(_loc6_ && _loc3_))
         {
            this.mDragging = false;
            loop0:
            while(true)
            {
               addr49:
               while(true)
               {
                  this.§5!d§();
                  continue loop0;
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §+!u§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§<!P§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§ Y§)
         {
            if(!_loc6_)
            {
               §§push(_loc1_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + §7!Z§.§`!H§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §&!M§() : int
      {
         return this.§"1§;
      }
      
      public function §!!&§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(!_loc4_)
         {
            §§push(this.§0!§);
            loop0:
            while(true)
            {
               §§push(0);
               addr216:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     addr21:
                     return;
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§0!§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§0!§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      public function §;[§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         loop0:
         while(true)
         {
            §§push(this.§#!U§.objects.§3q§(this.§1;§,this.§[!-§));
            if(!_loc4_)
            {
               §§push(int(§§pop()));
            }
            loop1:
            while(true)
            {
               _loc2_ = §§pop();
               loop2:
               while(true)
               {
                  §§push(_loc2_);
                  loop3:
                  while(true)
                  {
                     §§push(-1);
                     loop4:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           this.§<4§(0.1);
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc3_ || this)
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    if(_loc4_ && _loc2_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(§§pop() - 1);
                                    if(_loc3_)
                                    {
                                       _loc1_ = §§pop();
                                       addr65:
                                       if(_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(0);
                                    }
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    break;
                                 }
                                 if(!(_loc3_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    this.§0!§ = -1;
                                    continue loop5;
                                    addr116:
                                 }
                              }
                              §§goto(addr65);
                           }
                           continue loop0;
                        }
                        while(!(_loc4_ && _loc2_))
                        {
                           §§goto(addr116);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      public function §1T§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§]2§);
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
         if(_loc2_ || _loc3_)
         {
            §§push(this.mSlingShotState == §?9§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr94:
                     while(true)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        addr51:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_)
                           {
                              §§goto(addr54);
                           }
                           addr71:
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr93:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(true);
                     }
                     else if(_loc2_ || _loc3_)
                     {
                        addr24:
                        §§push(false);
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                        }
                        §§goto(addr71);
                     }
                     else
                     {
                        §§goto(addr94);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr24);
                  addr54:
                  return §§pop();
               }
               return §§pop();
            }
            §§goto(addr93);
         }
         §§goto(addr94);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mSlingShotState == §?9§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§pop();
                     addr44:
                     §§push(this.§0!g§);
                     §§push(this.§-m§);
                     if(_loc1_)
                     {
                        §§push(§§pop() * §1G§);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.mDragging = false;
            if(!_loc3_)
            {
               this.§8k§(§?9§);
            }
         }
         var _loc1_:§<!P§ = this.§ Y§[this.§1]§];
         if(_loc2_)
         {
            _loc1_.§-!M§(§6!D§.§+" §);
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
         var _loc1_:§<!P§ = this.§ Y§[this.§1]§];
         if(_loc3_ || _loc1_)
         {
            _loc1_.§-!M§(§6!D§.§!!q§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§%!N§ = true;
         }
      }
      
      protected function §5!u§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<!P§ = null;
         if(!(_loc5_ && this))
         {
            if(param1 < 0)
            {
               if(_loc4_ || param2)
               {
                  return;
               }
               addr61:
               _loc3_ = this.§ Y§[param1];
               if(_loc4_ || param2)
               {
                  this.§;!j§.removeChild(_loc3_.sprite);
                  loop0:
                  while(true)
                  {
                     if(param2)
                     {
                        if(_loc4_)
                        {
                           this.§2c§(this.§ Y§[param1]);
                        }
                        while(true)
                        {
                           loop3:
                           while(_loc4_ || param2)
                           {
                              this.§ Y§[param1] = null;
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    while(false)
                                    {
                                       while(true)
                                       {
                                          _loc3_.dispose();
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                    addr126:
                                    this.§ Y§.splice(param1,1);
                                    addr131:
                                    return;
                                    addr85:
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr85);
            }
            else if(this.§ Y§[param1])
            {
               if(_loc4_ || param2)
               {
                  §§goto(addr61);
               }
               §§goto(addr131);
            }
         }
         §§goto(addr126);
      }
      
      public function §2c§(param1:§<!P§) : void
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
               if(_loc10_ || param1)
               {
                  if(!_loc10_)
                  {
                     continue;
                  }
                  if(!_loc9_)
                  {
                     §§push(this.§#!U§);
                     if(!_loc9_)
                     {
                        §§push(§§pop().particles);
                        if(!(_loc9_ && _loc2_))
                        {
                           §§push(§>p§.§'f§);
                           if(_loc10_)
                           {
                              §§push(§=!%§.§2k§);
                              if(_loc10_)
                              {
                                 §§push(§>p§.§%§);
                                 if(_loc10_ || _loc3_)
                                 {
                                    §§push(param1.x);
                                    if(!_loc9_)
                                    {
                                       if(_loc10_ || param1)
                                       {
                                          §§push(param1.y);
                                          if(_loc10_)
                                          {
                                             if(!_loc9_)
                                             {
                                                §§push(1000);
                                                if(!_loc9_)
                                                {
                                                   §§push("");
                                                   if(_loc10_)
                                                   {
                                                      §§push(0);
                                                      if(!_loc9_)
                                                      {
                                                         §§pop().§-M§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                         addr117:
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(param1.sprite);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(-§§pop().width);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§5G§.§6+§);
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        if(_loc10_ || this)
                                                                        {
                                                                           addr333:
                                                                           §§push(§§pop() * §§pop());
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   §§push(Math.random() * -_loc7_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         addr380:
                                                                                                         §§push(§§pop() * 2);
                                                                                                         break loop11;
                                                                                                      }
                                                                                                   }
                                                                                                   addr377:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Math.random() * (720 / _loc3_));
                                                                                                   }
                                                                                                   addr388:
                                                                                                }
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr395:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr396:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr355:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             addr398:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(180 / Math.PI);
                                                                                                addr402:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   addr403:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr404:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr383:
                                                                                    _loc7_ = Number(§§pop() + §§pop());
                                                                                    addr382:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.sprite);
                                                                                       if(!(_loc10_ || param1))
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§push(-§§pop().height);
                                                                                       if(_loc10_ || _loc2_)
                                                                                       {
                                                                                          §§push(§5G§.§6+§);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                addr237:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr240:
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc10_ || this)
                                                                                                               {
                                                                                                                  addr261:
                                                                                                                  if(_loc10_ || _loc3_)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§push(Math.random() * -_loc8_);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              addr280:
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(2);
                                                                                                                                 if(!(_loc9_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr291:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc9_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc9_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr306:
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          addr309:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr382);
                                                                                                                                       }
                                                                                                                                       §§goto(addr383);
                                                                                                                                    }
                                                                                                                                    §§goto(addr309);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr380);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr383);
                                                                                                                           }
                                                                                                                           §§goto(addr291);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr306);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr377);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr280);
                                                                                                            }
                                                                                                            §§goto(addr396);
                                                                                                         }
                                                                                                         §§goto(addr398);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr339);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr355);
                                                                                                }
                                                                                                §§goto(addr306);
                                                                                             }
                                                                                             §§goto(addr240);
                                                                                          }
                                                                                          §§goto(addr261);
                                                                                       }
                                                                                       §§goto(addr237);
                                                                                    }
                                                                                    addr339:
                                                                                    addr313:
                                                                                    _loc8_ = §§pop();
                                                                                    while(_loc9_)
                                                                                    {
                                                                                       §§goto(addr384);
                                                                                       §§goto(addr313);
                                                                                    }
                                                                                    addr384:
                                                                                    addr137:
                                                                                    §§push(this.§#!U§.particles);
                                                                                    §§push(§>p§.§&@§);
                                                                                    §§push(§=!%§.§2k§);
                                                                                    §§push(§>p§.§%§);
                                                                                    §§push(param1.x);
                                                                                    §§push(_loc7_);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr143:
                                                                                       addr151:
                                                                                       addr147:
                                                                                       addr146:
                                                                                       addr145:
                                                                                       addr141:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       §§push(param1.y + _loc8_);
                                                                                       §§push(1500);
                                                                                       §§push("");
                                                                                       §§push(§>p§.§=!f§(param1.name));
                                                                                       §§push(_loc2_);
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() * Math.cos(_loc6_));
                                                                                       }
                                                                                       §§push(_loc2_);
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(!(_loc9_ && this))
                                                                                          {
                                                                                             §§push(§§pop() * Math.sin(_loc6_));
                                                                                          }
                                                                                       }
                                                                                       §§push(5);
                                                                                       §§push(_loc2_);
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() * 20);
                                                                                       }
                                                                                       §§pop().§-M§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                       _loc5_++;
                                                                                       continue loop0;
                                                                                       addr205:
                                                                                    }
                                                                                    §§goto(addr143);
                                                                                    addr314:
                                                                                 }
                                                                                 §§goto(addr395);
                                                                              }
                                                                              §§goto(addr404);
                                                                           }
                                                                        }
                                                                        §§goto(addr402);
                                                                     }
                                                                  }
                                                                  §§goto(addr383);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   §§goto(addr147);
                                                }
                                                §§goto(addr146);
                                             }
                                             §§goto(addr143);
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr141);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr314);
               }
               §§goto(addr117);
            }
            else
            {
               §§push(_loc4_);
            }
            §§goto(addr388);
         }
      }
      
      public function §&!l§(param1:§<!P§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§5!u§(this.§ Y§.indexOf(param1));
         }
      }
      
      public function §+G§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:§<!P§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§<!P§ = null;
         var _loc2_:* = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() >= this.§ Y§.length - 1)
               {
                  if(_loc6_ || _loc3_)
                  {
                     addr299:
                     if(this.§;!j§.numChildren > 0)
                     {
                        §§push(this.§;!j§);
                        if(_loc6_ || _loc1_)
                        {
                           §§pop().removeChildAt(0);
                           if(_loc6_ || this)
                           {
                              §§goto(addr299);
                           }
                           addr306:
                           §§push(0);
                           if(!(_loc7_ && this))
                           {
                              break;
                           }
                           addr347:
                           if(§§pop() < this.§ Y§.length)
                           {
                              _loc1_ = this.§ Y§[_loc2_];
                              if(!_loc7_)
                              {
                                 this.§;!j§.addChildAt(_loc1_.sprite,0);
                                 if(_loc6_)
                                 {
                                    _loc2_++;
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr347);
                              }
                              addr351:
                              return;
                              addr346:
                           }
                           §§goto(addr351);
                        }
                        §§goto(addr299);
                     }
                     if(_loc6_)
                     {
                        §§goto(addr306);
                     }
                  }
                  §§goto(addr351);
               }
               else
               {
                  _loc1_ = this.§ Y§[_loc2_];
                  if(!(_loc6_ || _loc1_))
                  {
                     continue;
                  }
                  §§push(_loc1_.§,O§);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc6_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              addr64:
                              §§pop();
                              if(_loc6_ || _loc2_)
                              {
                                 addr75:
                                 if(_loc2_ == 0)
                                 {
                                    if(!(_loc6_ || this))
                                    {
                                       addr132:
                                       §§push(Number(Math.sqrt((this.§#!!§ - this.§ Y§[_loc2_ + 1].x) * (this.§#!!§ - this.§ Y§[_loc2_ + 1].x) + (this.§!!3§ - this.§ Y§[_loc2_ + 1].y) * (this.§!!3§ - this.§ Y§[_loc2_ + 1].y))));
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          §§push(§§pop());
                                          if(!(_loc7_ && _loc1_))
                                          {
                                             _loc4_ = §§pop();
                                             addr204:
                                             §§push(_loc3_);
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             addr213:
                                             _loc5_ = this.§ Y§[_loc2_];
                                             if(!_loc7_)
                                             {
                                                this.§ Y§.splice(_loc2_,1);
                                                loop1:
                                                while(true)
                                                {
                                                   addr240:
                                                   while(true)
                                                   {
                                                      this.§ Y§.splice(_loc2_ + 1,0,_loc5_);
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                             while(false)
                                             {
                                                §§goto(addr240);
                                             }
                                          }
                                       }
                                       §§goto(addr204);
                                    }
                                    else
                                    {
                                       addr83:
                                    }
                                    _loc2_++;
                                    continue;
                                 }
                                 §§push(Number(Math.sqrt((this.§#!!§ - this.§ Y§[_loc2_].x) * (this.§#!!§ - this.§ Y§[_loc2_].x) + (this.§!!3§ - this.§ Y§[_loc2_].y) * (this.§!!3§ - this.§ Y§[_loc2_].y))));
                                 if(_loc6_ || this)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc6_)
                                    {
                                       §§goto(addr132);
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr83);
                           }
                        }
                        §§goto(addr75);
                     }
                  }
                  §§goto(addr64);
               }
            }
            break;
         }
         _loc2_ = §§pop();
         if(_loc6_)
         {
            §§goto(addr346);
         }
         §§goto(addr351);
      }
      
      public function §&J§(param1:Number, param2:Number) : §<!P§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§ Y§.length)
            {
               if(_loc4_)
               {
                  if(!(_loc5_ && param1))
                  {
                     return null;
                  }
                  return this.§ Y§[_loc3_];
               }
               loop2:
               while(true)
               {
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  addr57:
                  if(!(_loc5_ && this))
                  {
                     break;
                  }
                  addr82:
                  while(!this.§ Y§[_loc3_].isInCoordinates(param1,param2))
                  {
                     continue loop2;
                     §§goto(addr57);
                  }
               }
               continue;
            }
            if(this.§ Y§[_loc3_])
            {
               §§goto(addr82);
            }
            §§goto(addr48);
         }
      }
      
      public function §?!#§(param1:Number, param2:Number) : §1!g§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§#!!§);
               loop1:
               while(true)
               {
                  §§push(this.§-m§);
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
                                          addr238:
                                          while(true)
                                          {
                                             §§push(param1);
                                             addr182:
                                             while(true)
                                             {
                                                §§push(this.§#!!§);
                                                addr184:
                                                while(true)
                                                {
                                                   §§push(this.§-m§);
                                                   addr186:
                                                   while(true)
                                                   {
                                                      if(_loc4_ && this)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(4);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr195:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr196:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(§§pop() <= §§pop());
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr237:
                                    }
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop11:
                                          while(!(_loc4_ && param1))
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
                                                      §§push(param2);
                                                      loop14:
                                                      for(; !_loc4_; §§push(this.§!!3§),if(_loc4_ && param1)
                                                      {
                                                         continue;
                                                      },§§push(this.§[!-§),if(_loc3_)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            addr50:
                                                            §§push(§§pop() <= §§pop());
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§goto(addr65);
                                                         }
                                                         §§goto(addr184);
                                                      },§§goto(addr138))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(this.§!!3§);
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(this.§-m§);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  §§push(4);
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     if(_loc4_ && this)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     addr130:
                                                                     §§push(§§pop() / §§pop());
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        addr138:
                                                                        §§push(§§pop() - §§pop());
                                                                        while(!(_loc4_ && param2))
                                                                        {
                                                                           §§push(§§pop() >= §§pop());
                                                                           if(_loc3_ || param2)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 addr65:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          return this;
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§goto(addr238);
                                                                                          }
                                                                                          §§goto(addr184);
                                                                                          addr175:
                                                                                       }
                                                                                    }
                                                                                    return null;
                                                                                 }
                                                                              }
                                                                              continue loop11;
                                                                              addr153:
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr196);
                                                                        addr138:
                                                                     }
                                                                     §§goto(addr186);
                                                                  }
                                                                  §§goto(addr194);
                                                               }
                                                               §§goto(addr195);
                                                            }
                                                            §§goto(addr130);
                                                         }
                                                         §§goto(addr138);
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                }
                                             }
                                             §§goto(addr153);
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
         §§goto(addr238);
      }
      
      public function §#!%§(param1:§"!'§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§<!P§ = null;
         var _loc4_:§#c§ = null;
         if(!_loc6_)
         {
            param1.§`!P§ = this.§#!!§;
            if(!(_loc6_ && this))
            {
               addr35:
               param1.§=!M§ = this.§!!3§;
            }
            var _loc2_:* = Number(0);
            while(_loc2_ < this.§ Y§.length)
            {
               _loc3_ = this.§ Y§[_loc2_];
               (_loc4_ = new §#c§()).x = _loc3_.x;
               if(_loc5_)
               {
                  _loc4_.y = _loc3_.y;
                  while(true)
                  {
                     _loc4_.id = _loc3_.name;
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           param1.§]Z§(_loc4_);
                           continue loop2;
                           addr89:
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() + 1);
                     if(!_loc6_)
                     {
                        addr83:
                        §§push(Number(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(!_loc6_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr83);
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §3N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§ Y§.length > 0)
         {
            this.§&!l§(this.§ Y§[0]);
            if(!_loc1_)
            {
               break;
            }
         }
      }
      
      public function §&!g§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_ || param2)
            {
               if(!(_loc6_ && this))
               {
                  if(!(_loc6_ && param2))
                  {
                     if(§§pop() >= this.§ Y§.length)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§#!!§);
                           addr188:
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() > param1.x);
                              if(_loc5_)
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
                                          addr196:
                                          loop18:
                                          while(true)
                                          {
                                             §§push(this.§#!!§);
                                             addr137:
                                             while(_loc5_ || _loc3_)
                                             {
                                                §§push(§§pop() < param2.x);
                                                while(_loc5_ || _loc3_)
                                                {
                                                }
                                                continue loop18;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       addr195:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(this.§!!3§);
                                                   while(true)
                                                   {
                                                      if(_loc5_ || param2)
                                                      {
                                                         §§push(§§pop() > param1.y);
                                                         if(!_loc6_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop9;
                                                            addr95:
                                                         }
                                                         else
                                                         {
                                                            addr117:
                                                         }
                                                         addr117:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                                  addr24:
                                                                  return _loc3_;
                                                                  addr122:
                                                               }
                                                               break;
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                      §§push(this.§!!3§);
                                                      addr133:
                                                      break;
                                                      if(!(_loc5_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(§§pop() < param2.y);
                                                         if(!_loc6_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              _loc3_.push(this);
                                                                              addr79:
                                                                              §§goto(addr24);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr236:
                                                                              _loc3_.push(this.§ Y§[_loc4_]);
                                                                              loop1:
                                                                              while(true)
                                                                              {
                                                                                 addr197:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    addr199:
                                                                                    while(true)
                                                                                    {
                                                                                       addr200:
                                                                                       addr201:
                                                                                       §§push(Number(§§pop() + 1));
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                              addr242:
                                                                           }
                                                                        }
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr242);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr122);
                                                                     }
                                                                  }
                                                                  §§goto(addr79);
                                                               }
                                                               §§goto(addr24);
                                                            }
                                                            addr51:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr117);
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   §§goto(addr137);
                                                }
                                             }
                                          }
                                          §§goto(addr95);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr195);
                           }
                        }
                     }
                     else if(this.§ Y§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                     {
                        §§goto(addr236);
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr199);
               }
               §§goto(addr201);
            }
            §§goto(addr188);
         }
      }
      
      public function §;![§() : Array
      {
         return [this.§3""§,this.§^!0§];
      }
      
      public function §#"!§(param1:String, param2:Number, param3:Number) : §<!P§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§<!P§ = this.§-!I§(param1,param2,param3);
         if(!(_loc5_ && param3))
         {
            this.§+G§();
         }
         return _loc4_;
      }
      
      public function §'_§() : Number
      {
         return this.§ Y§.length;
      }
      
      public function §^F§() : Boolean
      {
         return this.§ w§;
      }
   }
}
