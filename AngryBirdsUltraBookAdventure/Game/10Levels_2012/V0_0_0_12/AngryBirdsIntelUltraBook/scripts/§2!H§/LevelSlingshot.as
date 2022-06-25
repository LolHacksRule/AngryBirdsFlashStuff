package §2!H§
{
   import §"L§.LevelModel;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §&V§.§38§;
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §6!7§.§-m§;
   import §6!7§.§3x§;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §7i§.Texture;
   import §;T§.LevelItemManager;
   import §;T§.LevelItemSoundResource;
   import §=?§.SoundEngine;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelSlingshot
   {
      
      public static const §%l§:int = 0;
      
      public static const §&!+§:int = 1;
      
      public static const §"o§:int = 2;
      
      public static const §71§:int = 3;
      
      public static const §=!3§:int = 5;
      
      public static const §3!4§:int = 3151368;
      
      protected static const §@N§:int = 8;
      
      protected static const §0!F§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §2j§:Number = -0.7;
      
      protected static const §+Q§:Number = 0;
      
      protected static var §7!I§:Texture;
      
      public static const §-%§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%l§ = 0;
            loop0:
            while(true)
            {
               §&!+§ = 1;
               loop1:
               while(true)
               {
                  §"o§ = 2;
                  loop2:
                  while(true)
                  {
                     §71§ = 3;
                     while(true)
                     {
                        §=!3§ = 5;
                        loop4:
                        for(; !_loc2_; if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        },§+Q§ = 0,§§goto(addr34))
                        {
                           §3!4§ = 3151368;
                           loop5:
                           while(true)
                           {
                              §@N§ = 8;
                              loop6:
                              while(_loc1_)
                              {
                                 §0!F§ = 0;
                                 loop7:
                                 for(; !_loc2_; if(!(_loc1_ || _loc1_))
                                 {
                                    continue;
                                 },§2j§ = -0.7,§§goto(addr60))
                                 {
                                    BIRD_LAUNCH_FORCE = 46.25;
                                    loop8:
                                    while(true)
                                    {
                                       BIRD_LAUNCH_FORCE_GREEN = 52.5;
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             continue loop7;
                                          }
                                          continue loop8;
                                          addr60:
                                          loop10:
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                             continue loop9;
                                             addr34:
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop6;
                                                   continue loop6;
                                                }
                                                continue loop10;
                                                addr55:
                                                §-%§ = 0.4;
                                                if(_loc1_)
                                                {
                                                   return;
                                                   addr29:
                                                }
                                             }
                                             continue loop2;
                                          }
                                          continue loop4;
                                       }
                                       continue loop7;
                                    }
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
         }
         §§goto(addr29);
      }
      
      public var §"!>§:LevelMain;
      
      public var §`!%§:Number;
      
      public var §else§:Number;
      
      public var §'0§:Number;
      
      protected var §>A§:Number;
      
      protected var §@!1§:Number;
      
      protected var §'?§:Number;
      
      protected var §,m§:Number;
      
      public var §'H§:Number;
      
      public var §0!%§:Boolean = false;
      
      protected var §+8§:Number;
      
      public var §#P§:Vector.<LevelSlingshotObject>;
      
      public var §@A§:int;
      
      public var §5C§:int;
      
      public var §@!_§:Number;
      
      public var §^x§:Sprite;
      
      public var get:int = 0;
      
      public var §6a§:Number = 0;
      
      public var §%!O§:Array;
      
      public var §?!i§:Array;
      
      public var mSlingShotState:int;
      
      public var §=P§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §"8§:Boolean = false;
      
      public var §]§:Number;
      
      protected var §'6§:Sprite;
      
      protected var §[2§:§3x§;
      
      protected var §,!i§:§3x§;
      
      protected var §?0§:Sprite;
      
      protected var §+v§:Sprite;
      
      protected var §^H§:Sprite;
      
      protected var §@!$§:§-m§;
      
      protected var §4!$§:§-m§;
      
      private var §<2§:Number = 0;
      
      private var §+X§:int = 0;
      
      protected var §#!;§:Number = -0.7;
      
      protected var §#f§:Number = 0;
      
      public function LevelSlingshot(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:§38§ = null;
         if(_loc6_ || this)
         {
            this.§#P§ = new Vector.<LevelSlingshotObject>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§"!>§ = param1;
                  addr46:
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop6:
                     while(true)
                     {
                        this.§>!X§();
                        do
                        {
                           §§push(0);
                           if(!(_loc7_ && this))
                           {
                              §§push(int(§§pop()));
                           }
                           _loc4_ = §§pop();
                        }
                        while(_loc7_);
                        
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr46);
                           }
                           else
                           {
                              addr87:
                              while(true)
                              {
                                 this.setPosition(param2.§7a§,param2.§<7§);
                                 break loop6;
                              }
                              while(true)
                              {
                                 addr78:
                                 addr82:
                                 this.§'6§ = param3;
                                 while(true)
                                 {
                                    if(!param2)
                                    {
                                       Log.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                                       break;
                                    }
                                    §§goto(addr64);
                                 }
                              }
                              addr64:
                              addr87:
                           }
                           loop8:
                           while(true)
                           {
                              if(_loc6_ || this)
                              {
                                 this.§'L§(§71§);
                                 while(true)
                                 {
                                    if(!(_loc6_ || param1))
                                    {
                                       addr339:
                                       while(true)
                                       {
                                          this.§'L§(§71§);
                                          addr291:
                                          while(true)
                                          {
                                             addr261:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       addr339:
                                    }
                                    while(true)
                                    {
                                       this.§]§ = 0;
                                       addr246:
                                       while(true)
                                       {
                                          this.§<!i§();
                                          continue loop8;
                                       }
                                       §§goto(addr261);
                                    }
                                 }
                                 addr253:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(Log);
                                    §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                    if(_loc6_)
                                    {
                                       §§push(this.§`!%§);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc7_ && param3))
                                          {
                                             §§push(§§pop() + " ");
                                             if(_loc6_ || param2)
                                             {
                                                addr336:
                                                §§push(§§pop() + this.§else§);
                                             }
                                          }
                                          §§pop().log(§§pop());
                                          §§goto(addr339);
                                       }
                                    }
                                    §§goto(addr336);
                                 }
                                 addr298:
                              }
                              §§goto(addr339);
                           }
                        }
                        break;
                     }
                     while(_loc6_)
                     {
                        if(!_loc7_)
                        {
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           §§goto(addr55);
                        }
                        else
                        {
                           §§goto(addr87);
                        }
                     }
                     addr55:
                     §§goto(addr82);
                  }
                  while(_loc4_ < param2.§8!c§)
                  {
                     _loc5_ = param2.§65§(_loc4_);
                     if(_loc6_ || param1)
                     {
                        this.§[!?§(_loc5_.id,_loc5_.x,_loc5_.y);
                        if(!(_loc6_ || param3))
                        {
                           continue;
                        }
                     }
                     §§push(_loc4_);
                     if(_loc6_ || param3)
                     {
                        §§push(§§pop() + 1);
                        if(_loc6_)
                        {
                           addr142:
                           §§push(int(§§pop()));
                        }
                        _loc4_ = §§pop();
                        continue;
                     }
                     §§goto(addr142);
                  }
                  if(!(_loc7_ && param1))
                  {
                     this.§+X§ = this.§<o§();
                     if(!(_loc7_ && param1))
                     {
                        this.§@A§ = 0;
                        §§goto(addr343);
                     }
                     §§goto(addr227);
                  }
                  §§goto(addr284);
               }
            }
         }
         §§goto(addr87);
      }
      
      public function get sprite() : Sprite
      {
         return this.§'6§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§<2§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§@A§ < this.§#P§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§#P§.length > 0)
            {
               this.§>!M§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§#P§ = null;
               while(true)
               {
                  §§push(this.§'6§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(_loc2_)
                        {
                           §§push(this.§'6§);
                           while(true)
                           {
                              §§pop().dispose();
                              loop9:
                              while(true)
                              {
                                 this.§'6§ = null;
                                 addr81:
                                 addr85:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop9;
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§^x§ = null;
                        while(!(_loc1_ && _loc1_))
                        {
                           this.§%!O§ = null;
                           do
                           {
                              this.§?!i§ = null;
                           }
                           while(_loc1_ && _loc2_);
                           
                           if(_loc2_ || _loc1_)
                           {
                              if(!_loc1_)
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    return;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr81);
                        §§goto(addr85);
                     }
                  }
                  §§goto(addr112);
               }
            }
         }
      }
      
      public function §;!<§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelSlingshotObject = this.§[!?§(param1,param2,param3,param4);
         if(!_loc7_)
         {
            _loc5_.§&#§();
         }
         return _loc5_;
      }
      
      protected function §[!?§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:LevelSlingshotObject = new LevelSlingshotObject(this,new Sprite(),param1,param2,param3);
         if(_loc7_ || this)
         {
            if(param4 < 0)
            {
               if(!(_loc6_ && this))
               {
                  addr93:
                  this.§#P§.push(_loc5_);
               }
               while(true)
               {
                  §§goto(addr50);
               }
               addr98:
            }
            else
            {
               this.§#P§.splice(param4,0,_loc5_);
            }
            while(true)
            {
               if(!_loc6_)
               {
                  §§goto(addr82);
               }
               else
               {
                  §§goto(addr98);
               }
               return _loc5_;
            }
         }
         §§goto(addr93);
      }
      
      public function §'L§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§%l§);
                  addr316:
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     while(true)
                     {
                        §§push(§&!+§);
                        addr299:
                        addr300:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           continue loop1;
                        }
                        addr300:
                        addr303:
                        addr24:
                        this.§use§();
                        addr281:
                        this.§@!_§ = 0;
                        loop11:
                        while(true)
                        {
                           this.mDragging = false;
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       if(this.mDragging)
                                       {
                                          loop13:
                                          for(; _loc3_ || param1; loop15:
                                          while(!_loc2_)
                                          {
                                             this.§use§();
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop15;
                                                }
                                                §§goto(addr117);
                                             }
                                             §§goto(addr202);
                                          })
                                          {
                                             this.mDragging = false;
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   this.§"8§ = false;
                                                   continue loop13;
                                                }
                                                addr269:
                                                addr272:
                                                this.§@!_§ = 10000;
                                                loop17:
                                                while(!_loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      this.§"8§ = false;
                                                      continue loop0;
                                                   }
                                                   addr320:
                                                   addr310:
                                                   while(true)
                                                   {
                                                      this.§@!_§ = 1000;
                                                      break loop17;
                                                   }
                                                   continue loop11;
                                                }
                                                addr117:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break loop2;
                                                   }
                                                   §§goto(addr310);
                                                }
                                                if(!(_loc3_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      this.§#P§[this.§@A§].setPosition(this.§'?§ - this.§#P§[this.§@A§].radius * Math.cos(this.§6a§ / (180 / Math.PI)),this.§,m§ + this.§#P§[this.§@A§].radius * Math.sin(this.§6a§ / (180 / Math.PI)));
                                                      break loop12;
                                                   }
                                                   §§goto(addr272);
                                                }
                                                else
                                                {
                                                   §§goto(addr202);
                                                }
                                             }
                                          }
                                          §§goto(addr281);
                                       }
                                       else
                                       {
                                          this.§use§();
                                          while(true)
                                          {
                                             if(_loc2_ && _loc2_)
                                             {
                                                break loop12;
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             if(_loc3_ || _loc2_)
                                             {
                                                continue loop11;
                                             }
                                          }
                                          addr43:
                                       }
                                    }
                                    continue;
                                    addr182:
                                 }
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                                 addr232:
                                 addr202:
                                 this.§@!_§ = 2000;
                                 addr202:
                                 if(!(_loc3_ || this))
                                 {
                                    break;
                                 }
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr300);
                                 §§goto(addr303);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr43);
                        }
                        while(true)
                        {
                           §§goto(addr24);
                           §§goto(addr202);
                        }
                     }
                  }
                  this.§use§();
                  §§goto(addr320);
               }
            }
         }
         while(true)
         {
            this.§use§();
            §§goto(addr281);
            §§goto(addr242);
         }
      }
      
      public function get levelMain() : LevelMain
      {
         return this.§"!>§;
      }
      
      public function §^G§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.mSlingShotState == §71§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  §§goto(addr54);
               }
               §§goto(addr66);
            }
            addr54:
            §§push(§§pop());
            if(!(_loc1_ && this))
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  addr66:
                  §§pop();
                  addr67:
                  §§push(this.§@!_§ <= 0);
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr79);
               }
               §§push(Boolean(§§pop()));
            }
            addr79:
            return §§pop();
         }
         §§goto(addr67);
      }
      
      private function §>!X§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Animation = this.getSlingshotAnimation();
         var _loc2_:§;K§ = _loc1_.getFrame(0);
         var _loc3_:§;K§ = _loc1_.getFrame(1);
         if(!(_loc5_ && _loc2_))
         {
            this.§@!$§ = new §-m§(_loc2_.texture);
            loop0:
            while(true)
            {
               §§push(this.§@!$§);
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr276:
                  addr284:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop0;
                  }
                  §§push(this.§@!$§);
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  §§push(_loc2_.scale);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§pop().scaleY = §§pop();
                     while(_loc4_ || this)
                     {
                        this.§4!$§ = new §-m§(_loc3_.texture);
                        while(true)
                        {
                           §§push(this.§4!$§);
                           loop6:
                           while(true)
                           {
                              §§push(_loc3_.scale);
                              addr223:
                              while(true)
                              {
                                 §§pop().scaleX = §§pop();
                                 continue loop6;
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
                  §§goto(addr276);
               }
            }
         }
         §§goto(addr93);
      }
      
      protected function getSlingshotAnimation() : Animation
      {
         return this.§"!>§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §[,§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc2_)
         {
            this.§>A§ = this.§`!%§;
         }
         while(true)
         {
            while(true)
            {
               this.§@!1§ = this.§else§;
               do
               {
                  this.§+8§ = §&!U§.§>U§;
               }
               while(!(_loc2_ || _loc1_));
               
               if(_loc3_ && _loc3_)
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
      
      protected function §@!"§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(_loc3_)
         {
            if(!§7!I§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(!(_loc4_ && _loc3_))
                  {
                     §7!I§ = this.§"!>§.textureManager.getTextureFromBitmapData(_loc2_);
                  }
               }
               addr58:
               var _loc1_:§-m§ = new §-m§(§7!I§);
               if(_loc3_ || _loc1_)
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
                           this.§^H§.addChild(_loc1_);
                           loop3:
                           while(true)
                           {
                              this.§?0§ = new Sprite();
                              loop4:
                              while(true)
                              {
                                 this.§[2§ = new §3x§(2,2,§3!4§);
                                 loop5:
                                 while(true)
                                 {
                                    this.§?0§.addChild(this.§[2§);
                                    while(_loc3_)
                                    {
                                       this.§+v§ = new Sprite();
                                       while(_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop2;
                                       while(!(_loc4_ && _loc3_))
                                       {
                                          continue loop5;
                                          this.§+v§.addChild(this.§,!i§);
                                          if(_loc4_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr85);
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
               while(true)
               {
                  this.§,!i§ = new §3x§(2,2,§3!4§);
                  §§goto(addr116);
               }
               §§goto(addr106);
            }
            this.§^H§ = new Sprite();
         }
         §§goto(addr58);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§,m§);
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop() / LevelMain.§8N§);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§'?§);
         if(_loc7_)
         {
            §§push(§§pop() / LevelMain.§8N§);
            if(!(_loc6_ && _loc3_))
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(3.5);
            if(_loc7_)
            {
               §§push(8);
               §§push(this.§+8§);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(this.§'H§);
                  if(!(_loc6_ && this))
                  {
                     addr84:
                     §§push(§§pop() - §§pop());
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(this.§+8§);
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc7_)
                     {
                        addr88:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     if(!_loc6_)
                     {
                        §§push(this.§^H§);
                        loop0:
                        while(true)
                        {
                           §§push(_loc3_);
                           addr562:
                           addr613:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              if(!_loc7_)
                              {
                                 break;
                              }
                              §§push(this.§^H§);
                              continue loop0;
                           }
                           addr613:
                           return;
                        }
                     }
                     §§goto(addr234);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr84);
            }
            §§goto(addr88);
         }
         §§goto(addr49);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§#P§.length > 0)
            {
               this.§>!M§(0,true);
               continue;
            }
            loop1:
            while(true)
            {
               this.§<^§();
               loop2:
               while(true)
               {
                  this.§[!?§("BIRD_SARDINE",this.§`!%§,this.§else§);
                  while(!_loc1_)
                  {
                     this.§'L§(§"o§);
                     if(_loc2_ || this)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               if(!(_loc1_ && _loc2_))
               {
                  break loop0;
               }
               continue loop0;
            }
         }
      }
      
      protected function §<^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            SoundEngine.§9!X§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'L§(§=!3§);
         }
      }
      
      public function §use§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§>A§);
            §§push(this.§@!1§);
            if(_loc1_)
            {
               §§push(this.§+8§);
               if(!_loc2_)
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
         if(!(_loc9_ && param1))
         {
            §§push(this.§'?§);
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
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
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
                                       §§push(this.§,m§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(param2);
                                          addr1442:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             addr1443:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          loop143:
                                          while(true)
                                          {
                                             if(_loc9_ && param3)
                                             {
                                                continue loop8;
                                             }
                                             param1 = §§pop();
                                             loop144:
                                             while(true)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   §§push(this.§@!1§);
                                                   loop185:
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§push(_loc7_);
                                                         loop114:
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§push(param2);
                                                               while(true)
                                                               {
                                                                  §§push(this.§@!1§);
                                                                  loop116:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           loop117:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              loop118:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§'H§);
                                                                                 loop121:
                                                                                 while(_loc10_)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    loop119:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             loop191:
                                                                                             while(_loc10_ || param1)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop177:
                                                                                                while(true)
                                                                                                {
                                                                                                   param2 = §§pop();
                                                                                                   loop178:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               this.§'H§ = _loc7_;
                                                                                                               loop183:
                                                                                                               while(!_loc9_)
                                                                                                               {
                                                                                                                  this.§'?§ = param1;
                                                                                                                  loop184:
                                                                                                                  while(_loc10_)
                                                                                                                  {
                                                                                                                     this.§,m§ = param2;
                                                                                                                     loop176:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop159:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§'H§);
                                                                                                                           addr332:
                                                                                                                           loop160:
                                                                                                                           while(_loc10_ || param1)
                                                                                                                           {
                                                                                                                              §§push(this.§+8§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(0.45);
                                                                                                                                          loop162:
                                                                                                                                          while(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             loop163:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc10_ || this)
                                                                                                                                                {
                                                                                                                                                   addr368:
                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§0!%§);
                                                                                                                                                         loop164:
                                                                                                                                                         while(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            loop165:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(!(_loc9_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr281:
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    if(_loc10_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          loop166:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      loop167:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc10_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr303:
                                                                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr312:
                                                                                                                                                                                                                  if(_loc10_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr319:
                                                                                                                                                                                                                     if(_loc10_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§'H§);
                                                                                                                                                                                                                              if(!(_loc10_ || param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop160;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr118:
                                                                                                                                                                                                                              if(!(_loc9_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr125:
                                                                                                                                                                                                                                 if(_loc10_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc9_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§+8§);
                                                                                                                                                                                                                                                if(_loc10_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop163;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr197:
                                                                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop165;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr213:
                                                                                                                                                                                                                                                            if(!(_loc9_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                               loop194:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop164;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.§8!d§();
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              loop171:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc10_ || param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§0!%§ = false;
                                                                                                                                                                                                                                                                                    continue loop167;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr386:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc10_ || this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop184;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop171;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop184;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr239:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr74:
                                                                                                                                                                                                                                                                           addr1104:
                                                                                                                                                                                                                                                                           loop169:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              this.§=P§ = true;
                                                                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop167;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop166;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop194;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1146:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this.§6a§);
                                                                                                                                                                                                                                                                                       addr1091:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(-90);
                                                                                                                                                                                                                                                                                          addr1092:
                                                                                                                                                                                                                                                                                          while(_loc10_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                addr1101:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                                                                                                                   addr1102:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      addr1103:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                         break loop169;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          loop62:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                             loop63:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                addr1153:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                   addr1154:
                                                                                                                                                                                                                                                                                                   loop65:
                                                                                                                                                                                                                                                                                                   while(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                      while(!_loc9_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                            addr1132:
                                                                                                                                                                                                                                                                                                            addr524:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                               addr1133:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                                  addr1134:
                                                                                                                                                                                                                                                                                                                  while(_loc10_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                     break loop165;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop5;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc9_ && param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            loop153:
                                                                                                                                                                                                                                                                                                            while(_loc10_ || param3)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc10_ || param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop143;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               loop154:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           param2 = §§pop();
                                                                                                                                                                                                                                                                                                                           loop155:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    this.§'H§ = _loc8_;
                                                                                                                                                                                                                                                                                                                                    loop156:
                                                                                                                                                                                                                                                                                                                                    while(_loc10_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       this.§'?§ = param1;
                                                                                                                                                                                                                                                                                                                                       loop157:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                this.§,m§ = param2;
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr402:
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc10_ || param3))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop159;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(5);
                                                                                                                                                                                                                                                                                                                                                         addr1185:
                                                                                                                                                                                                                                                                                                                                                         addr1197:
                                                                                                                                                                                                                                                                                                                                                         loop56:
                                                                                                                                                                                                                                                                                                                                                         for(; _loc10_ || this; while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(4);
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                               break loop114;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                         })
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                               continue loop56;
                                                                                                                                                                                                                                                                                                                                                               addr1043:
                                                                                                                                                                                                                                                                                                                                                               if(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§>A§);
                                                                                                                                                                                                                                                                                                                                                                              addr1058:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 addr1059:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    addr1060:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             addr1070:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                addr1071:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop143;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr1069:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                                                                                                             break loop118;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr1324:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr1056:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr1350:
                                                                                                                                                                                                                                                                                                                                                                        while(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                              break loop119;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop1;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr1053:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  break loop177;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            break loop191;
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1185);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1199:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1173:
                                                                                                                                                                                                                                                                                                                                                   while(_loc10_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc10_ || param2))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop7;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§+8§);
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop62;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1194);
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr303);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.mDragging);
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                                                                                                                                                                         addr1226:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               while(_loc10_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + this.§#!;§);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§pop().§'?§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc10_ || param2))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1446:
                                                                                                                                                                                                                                                                                                                                                                           §§push(true);
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                                                                                                                                                                        §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc10_ || param3)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + this.§#f§);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§pop().§,m§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           this.§6a§ = -160;
                                                                                                                                                                                                                                                                                                                                                                           addr1204:
                                                                                                                                                                                                                                                                                                                                                                           addr1361:
                                                                                                                                                                                                                                                                                                                                                                           while(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr1401:
                                                                                                                                                                                                                                                                                                                                                                           return false;
                                                                                                                                                                                                                                                                                                                                                                           continue loop144;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           this.§6a§ = Math.atan2(-(this.§,m§ - this.§@!1§),this.§'?§ - this.§>A§);
                                                                                                                                                                                                                                                                                                                                                                           break loop157;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr1295:
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  this.§'H§ = Math.sqrt((param2 - this.§@!1§) * (param2 - this.§@!1§) + (param1 - this.§>A§) * (param1 - this.§>A§));
                                                                                                                                                                                                                                                                                                                                                                  loop14:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                                                                                     addr1366:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§+8§);
                                                                                                                                                                                                                                                                                                                                                                        addr1368:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(param3);
                                                                                                                                                                                                                                                                                                                                                                                 addr1370:
                                                                                                                                                                                                                                                                                                                                                                                 while(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    break loop156;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr1371:
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop14;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 this.§'H§ = Math.sqrt((this.§,m§ - this.§@!1§) * (this.§,m§ - this.§@!1§) + (this.§'?§ - this.§>A§) * (this.§'?§ - this.§>A§));
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1401);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr1369:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr1296:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              this.§'?§ = param1;
                                                                                                                                                                                                                                                                                                                                                                              break loop65;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1402:
                                                                                                                                                                                                                                                                                                                                                               addr1227:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1197);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1225:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1369);
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr402);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1270:
                                                                                                                                                                                                                                                                                                                                                addr398:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr957:
                                                                                                                                                                                                                                                                                                                                          addr376:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(this.§6a§);
                                                                                                                                                                                                                                                                                                                                             break loop166;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             this.§0!%§ = true;
                                                                                                                                                                                                                                                                                                                                             §§goto(addr386);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                                                                                                                                                                          §§push(this.§6a§);
                                                                                                                                                                                                                                                                                                                                          if(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * (180 / Math.PI));
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§pop().§6a§ = §§pop();
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1270);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(this.§>A§);
                                                                                                                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this.§+8§);
                                                                                                                                                                                                                                                                                                                                          loop20:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(param1);
                                                                                                                                                                                                                                                                                                                                             if(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(this.§>A§);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                   addr599:
                                                                                                                                                                                                                                                                                                                                                   while(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                      loop129:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc10_ || this)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop20;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  loop108:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                     addr716:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                              break loop163;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           loop112:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                              addr849:
                                                                                                                                                                                                                                                                                                                                                                              addr933:
                                                                                                                                                                                                                                                                                                                                                                              while(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc10_ || param3))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop114;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop121;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr867:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc9_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc10_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr885:
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                loop101:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   addr896:
                                                                                                                                                                                                                                                                                                                                                                                                   loop102:
                                                                                                                                                                                                                                                                                                                                                                                                   while(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                         while(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop159;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr797:
                                                                                                                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                                                                                                                        addr797:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc10_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc10_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§+8§);
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 break loop162;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              addr757:
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           break loop178;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1071);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc9_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop185;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc10_ || param2))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc10_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc10_ || param2))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§>A§);
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop0;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop183;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§6a§);
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1028:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(-90);
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1029:
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1030:
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1034:
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1035:
                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1036:
                                                                                                                                                                                                                                                                                                                                                                                                                                             loop93:
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1037:
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1038:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         break loop154;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.§>A§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         break loop178;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop93;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr867);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1100);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop63;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr812);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1204);
                                                                                                                                                                                                                                                                                                                                                                                                               addr732:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop6;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§6a§);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(-90);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc10_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                             continue loop108;
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1034);
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop129;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1102);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1368);
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr687:
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop112;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1030);
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr839:
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           while(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr839);
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1092);
                                                                                                                                                                                                                                                                                                                                                                                                                           addr831:
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           param2 = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1330:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              this.§'H§ = this.§+8§;
                                                                                                                                                                                                                                                                                                                                                                                                                              break loop155;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1329:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr797);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1371);
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr319);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1029);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                            addr1115:
                                                                                                                                                                                                                                                                                                                                                                                                            while(_loc10_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1124);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1123:
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1037);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1134);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr1114:
                                                                                                                                                                                                                                                                                                                                                                                                         addr901:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      while(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                         break loop102;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1115);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop101;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr957);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1447);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr909);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr885);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1033);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr1312:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc10_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr952);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr951:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr956);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1101);
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr849);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§@!1§);
                                                                                                                                                                                                                                                                                                                                                                                    break loop116;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1442);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr864);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                                                                                                                                                                               addr617:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr643:
                                                                                                                                                                                                                                                                                                                                                            addr643:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                  break loop153;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr687);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr690);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1348:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1349:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1350);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1357:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          param1 = §§pop();
                                                                                                                                                                                                                                                                                                                                          break loop183;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr423:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop176;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1296);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr554:
                                                                                                                                                                                                                                                                                                                           addr1306:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1028);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop0;
                                                                                                                                                                                                                                                                                                                  §§goto(addr118);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc9_ && param3)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop191;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr933);
                                                                                                                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr125);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     break loop160;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop177;
                                                                                                                                                                                                                                                                                                               §§goto(addr532);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr532:
                                                                                                                                                                                                                                                                                                            §§goto(addr1366);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1329);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      this.§,m§ = param2;
                                                                                                                                                                                                                                                                                                      §§goto(addr1295);
                                                                                                                                                                                                                                                                                                      §§goto(addr1154);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break loop160;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr554);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1306);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr239);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1113:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1114);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1133);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr227:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1370);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1036);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr221:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               §§goto(addr1146);
                                                                                                                                                                                                                                                               §§goto(addr213);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1145:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1123);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr221);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1035);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop118;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr498);
                                                                                                                                                                                                                                                         §§push(this.§'H§);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr759:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr777);
                                                                                                                                                                                                                                                            §§push(Math.abs(this.§6a§ - -90 - _loc5_) - _loc4_);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr492:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr847);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1312);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1310:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1150);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break loop166;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr797);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr796:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr532);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr547);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr328:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1237);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr912);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr423);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr398);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr376);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§@!1§);
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc9_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr444:
                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc10_ || this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop163;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(param2);
                                                                                                                                                                                                                        continue loop117;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop119;
                                                                                                                                                                                                                     §§goto(addr368);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr444:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr797);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr532);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                         §§goto(addr312);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr812);
                                                                                                                                                                                                      addr663:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1132);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr956);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr909);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr831);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr227);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1226);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr896);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr901);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr281);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1113);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1038);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr951);
                                                                                                                                                            }
                                                                                                                                                            while(!(_loc9_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1145);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1112);
                                                                                                                                                               §§goto(addr281);
                                                                                                                                                            }
                                                                                                                                                            continue loop4;
                                                                                                                                                         }
                                                                                                                                                         while(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr732);
                                                                                                                                                         }
                                                                                                                                                         continue loop2;
                                                                                                                                                         addr730:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr376);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr444);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr524);
                                                                                                                                                      }
                                                                                                                                                      continue loop163;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1131);
                                                                                                                                                   addr522:
                                                                                                                                                }
                                                                                                                                                §§goto(addr849);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                if(!(_loc9_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                }
                                                                                                                                                §§goto(addr730);
                                                                                                                                                §§goto(addr444);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr759);
                                                                                                                                          }
                                                                                                                                          addr358:
                                                                                                                                       }
                                                                                                                                       §§goto(addr757);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr643);
                                                                                                                                 if(_loc9_ && this)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§push(0.8);
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       addr173:
                                                                                                                                       if(_loc10_ || param3)
                                                                                                                                       {
                                                                                                                                          addr180:
                                                                                                                                          if(!(_loc10_ || param2))
                                                                                                                                          {
                                                                                                                                             continue loop117;
                                                                                                                                          }
                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr197);
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1324);
                                                                                                                                             }
                                                                                                                                             addr1323:
                                                                                                                                          }
                                                                                                                                          §§goto(addr633);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc10_ || this)
                                                                                                                                          {
                                                                                                                                             if(!(_loc9_ && param2))
                                                                                                                                             {
                                                                                                                                                if(_loc10_ || param3)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr492);
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1059);
                                                                                                                                          }
                                                                                                                                          §§goto(addr716);
                                                                                                                                          §§goto(addr173);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1349);
                                                                                                                                       addr470:
                                                                                                                                    }
                                                                                                                                    §§goto(addr498);
                                                                                                                                 }
                                                                                                                                 §§goto(addr358);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr796);
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1070);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr1328);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       param1 = §§pop();
                                                                                                                                       §§goto(addr663);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1357);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1128);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              §§goto(addr332);
                                                                                                                           }
                                                                                                                           §§goto(addr1091);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop178;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr1310);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1330);
                                                                                                         }
                                                                                                         §§goto(addr1227);
                                                                                                      }
                                                                                                      §§goto(addr1039);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr1043);
                                                                                                      }
                                                                                                      §§goto(addr1153);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr1357);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                §§goto(addr1199);
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr1060);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr1356);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr1327);
                                                                              }
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr1058);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr1323);
                                                                  }
                                                                  if(!(_loc10_ || param2))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     §§goto(addr522);
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                                  §§goto(addr1069);
                                                               }
                                                            }
                                                            §§goto(addr1053);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         §§goto(addr1173);
                                                         continue loop185;
                                                      }
                                                   }
                                                }
                                                §§goto(addr1221);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr1445);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr328);
      }
      
      protected function §8!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            SoundEngine.§9!X§("SlingshotStreched");
         }
      }
      
      public function §3T§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.§`!%§);
            §§push(this.§else§);
            if(!(_loc3_ && this))
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
            §§push(§§pop() - this.§`!%§);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            this.§`!%§ = param1;
         }
         §§push(param2);
         if(!_loc7_)
         {
            §§push(§§pop() - this.§else§);
            if(_loc6_ || this)
            {
               addr44:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               this.§else§ = param2;
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§'0§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§'0§ = §§pop();
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§@!1§);
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§@!1§ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§,m§);
                        if(!(_loc7_ && param3))
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§,m§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§>A§);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + _loc4_);
                           }
                           §§pop().§>A§ = §§pop();
                           while(_loc6_)
                           {
                              continue loop0;
                              while(!(_loc7_ && param2))
                              {
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                     }
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     this.updateAnimations(0);
                     loop8:
                     while(_loc6_)
                     {
                        while(true)
                        {
                           this.§=P§ = true;
                           if(!_loc6_)
                           {
                              continue loop8;
                           }
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§goto(addr65);
                        }
                        return;
                     }
                     while(true)
                     {
                        if(param3)
                        {
                           §§goto(addr65);
                        }
                        §§goto(addr53);
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§'?§);
               if(_loc6_)
               {
                  §§push(§§pop() + _loc4_);
               }
               §§pop().§'?§ = §§pop();
               §§goto(addr112);
            }
         }
         §§goto(addr44);
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:LevelSlingshotObject = null;
         _loc2_ = this.§#P§[this.§@A§];
         §§push(this.§'H§);
         if(_loc4_ || this)
         {
            §§push(§§pop() / this.§+8§);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               if(!(_loc5_ && _loc2_))
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(_loc4_)
                     {
                        addr74:
                        §§push(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN);
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc5_ && _loc3_))
                           {
                              addr111:
                              §§push(Number(§§pop()));
                              if(_loc5_)
                              {
                              }
                              addr120:
                              return §§pop() * _loc3_;
                              addr118:
                           }
                           _loc1_ = §§pop();
                           addr115:
                           §§push(_loc1_);
                           if(!_loc5_)
                           {
                              §§goto(addr118);
                           }
                           §§goto(addr120);
                        }
                        else
                        {
                           addr103:
                           §§push(Number(§§pop()));
                           if(!(_loc5_ && _loc1_))
                           {
                              §§goto(addr111);
                           }
                        }
                     }
                     §§goto(addr115);
                  }
                  else
                  {
                     §§push(LevelSlingshot.BIRD_LAUNCH_FORCE);
                     if(!_loc5_)
                     {
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr111);
               }
               §§goto(addr74);
            }
         }
         §§goto(addr115);
      }
      
      public function §?!#§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:LevelSlingshotObject = null;
         if(!_loc2_)
         {
            if(this.§#P§.length <= this.§@A§)
            {
               return null;
            }
            if(!(_loc2_ && _loc2_))
            {
               _loc1_ = this.§#P§[this.§@A§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function § case§() : Point
      {
         return new Point(this.§>A§,this.§@!1§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelSlingshotObject = null;
         if(!_loc4_)
         {
            this.§=!F§(param1);
            do
            {
               if(this.§=P§)
               {
                  while(true)
                  {
                     this.updateAnimations(param1);
                     addr98:
                     while(true)
                     {
                     }
                  }
                  addr94:
               }
               loop3:
               while(true)
               {
                  §§push(this);
                  §§push(this.§@!_§);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§@!_§ = §§pop();
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(this.§@!_§ < 0)
                        {
                           continue loop4;
                        }
                        loop7:
                        while(true)
                        {
                           if(this.mSlingShotState == §71§)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                           else
                           {
                              this.§+7§(param1,param2);
                           }
                           if(_loc5_ || param2)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 if(true)
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                           }
                           addr74:
                           while(true)
                           {
                              continue loop7;
                           }
                        }
                        if(!_loc4_)
                        {
                           break loop3;
                        }
                        §§goto(addr94);
                     }
                     _loc3_ = null;
                     if(!_loc4_)
                     {
                        if(this.§#P§.length > 0)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              _loc3_ = this.§#P§[this.§@A§];
                              addr128:
                              §§push(Boolean(_loc3_));
                              if(!(_loc4_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       _loc3_.§&!A§(param1);
                                       if(_loc5_ || this)
                                       {
                                          addr394:
                                          if(_loc3_)
                                          {
                                             addr357:
                                             if(this.mSlingShotState != §%l§)
                                             {
                                                addr328:
                                                if(this.mSlingShotState != §&!+§)
                                                {
                                                   §§push(this.mSlingShotState);
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(§"o§);
                                                         if(_loc5_ || param2)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  addr251:
                                                                  §§push(_loc3_);
                                                                  §§push(this.§'?§);
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     §§push(_loc3_.radius);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop() * Math.cos(this.§6a§ / (180 / Math.PI)));
                                                                        if(_loc5_)
                                                                        {
                                                                           addr279:
                                                                           addr280:
                                                                           §§push(§§pop() - §§pop());
                                                                           §§push(this.§,m§);
                                                                           if(!(_loc4_ && param2))
                                                                           {
                                                                              addr289:
                                                                              §§push(_loc3_.radius);
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 §§push(§§pop() * Math.sin(this.§6a§ / (180 / Math.PI)));
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§pop().setPosition(§§pop(),§§pop());
                                                                           addr313:
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push(this.§"8§);
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 if(_loc5_ || param2)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!(_loc4_ && param1))
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§'H§);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(this.§+8§);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr208:
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         §§push(this.§6a§);
                                                                                                      }
                                                                                                      §§pop().§^!&§(§§pop(),§§pop());
                                                                                                      addr212:
                                                                                                      if(_loc4_ && param1)
                                                                                                      {
                                                                                                         §§goto(addr251);
                                                                                                      }
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr403);
                                                                                                         }
                                                                                                         addr321:
                                                                                                         addr403:
                                                                                                         return;
                                                                                                         addr349:
                                                                                                         §§goto(addr403);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr339:
                                                                                                         this.§'L§(§"o§);
                                                                                                      }
                                                                                                      addr225:
                                                                                                      §§goto(addr403);
                                                                                                   }
                                                                                                   §§goto(addr208);
                                                                                                }
                                                                                                addr329:
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   addr338:
                                                                                                   if(_loc3_.§%!7§)
                                                                                                   {
                                                                                                      §§goto(addr339);
                                                                                                   }
                                                                                                   §§goto(addr225);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr403);
                                                                                                   addr402:
                                                                                                }
                                                                                                §§goto(addr403);
                                                                                             }
                                                                                             §§goto(addr339);
                                                                                          }
                                                                                          §§goto(addr313);
                                                                                       }
                                                                                       §§goto(addr212);
                                                                                    }
                                                                                    §§goto(addr403);
                                                                                 }
                                                                                 §§goto(addr394);
                                                                              }
                                                                              §§goto(addr338);
                                                                           }
                                                                           _loc3_.§61§();
                                                                           §§goto(addr349);
                                                                           addr391:
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                                  §§goto(addr280);
                                                               }
                                                               §§goto(addr403);
                                                            }
                                                            §§goto(addr357);
                                                         }
                                                         §§goto(addr328);
                                                      }
                                                      §§goto(addr357);
                                                   }
                                                   §§goto(addr328);
                                                }
                                                §§goto(addr329);
                                             }
                                             if(_loc5_ || param1)
                                             {
                                                if(this.§@!_§ <= 0)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr386:
                                                      this.§'L§(§&!+§);
                                                      §§goto(addr391);
                                                   }
                                                   §§goto(addr279);
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr386);
                                          }
                                          if(_loc5_)
                                          {
                                             this.§'L§(§71§);
                                          }
                                          §§goto(addr402);
                                          addr151:
                                       }
                                       §§goto(addr386);
                                    }
                                    §§goto(addr279);
                                 }
                              }
                              §§goto(addr394);
                           }
                           §§goto(addr338);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr151);
                  }
               }
            }
            while(_loc4_);
            
            §§goto(addr403);
         }
         while(true)
         {
            this.§@!_§ = 0;
            §§goto(addr74);
         }
      }
      
      public function §-O§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelSlingshotObject = null;
         if(_loc6_ || param3)
         {
            if(this.§#P§.length > 0)
            {
               if(_loc6_)
               {
                  _loc5_ = this.§#P§[this.§@A§];
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
                  }
                  addr43:
               }
               do
               {
                  this.§^!&§(param3,param4);
               }
               while(_loc7_);
               
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr43);
      }
      
      protected function §^!&§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelSlingshotObject = null;
         if(_loc5_)
         {
            this.§#!;§ = §2j§;
            if(!_loc4_)
            {
               this.§#f§ = §+Q§;
               if(!_loc4_)
               {
                  if(this.§#P§.length > 0)
                  {
                     if(_loc5_)
                     {
                        _loc3_ = this.§#P§[this.§@A§];
                        §§goto(addr48);
                     }
                     §§goto(addr176);
                  }
                  addr48:
                  if(!_loc3_)
                  {
                     if(_loc5_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     addr176:
                     this.mDragging = false;
                     loop0:
                     while(true)
                     {
                        this.§"8§ = false;
                        addr175:
                        while(true)
                        {
                           this.§<2§ = new Date().time;
                           loop2:
                           while(true)
                           {
                              this.§"!>§.§ a§(_loc3_,param1,param2);
                              addr163:
                              loop6:
                              while(true)
                              {
                                 this.§>!M§(this.§@A§,_loc3_.§9S§ > 0);
                                 loop4:
                                 while(true)
                                 {
                                    this.playBirdShotSound();
                                    addr131:
                                    addr133:
                                    while(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       if(this.§@A§ >= this.§#P§.length)
                                       {
                                          if(_loc5_ || this)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop6;
                                             }
                                             this.§'L§(§71§);
                                          }
                                       }
                                       else
                                       {
                                          this.§'L§(§%l§);
                                          if(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop2;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§goto(addr131);
                                    }
                                 }
                              }
                           }
                           if(_loc5_ || param2)
                           {
                              §§goto(addr62);
                           }
                        }
                     }
                  }
                  addr62:
                  return;
               }
               §§goto(addr175);
            }
            §§goto(addr133);
         }
         §§goto(addr163);
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!(_loc2_ && _loc2_))
         {
            §§push(SoundEngine);
            §§push("BirdShot");
            if(_loc3_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§9!X§(§§pop());
         }
      }
      
      public function §+7§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§@A§);
         if(_loc5_)
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
            if(_loc5_)
            {
               if(_loc5_)
               {
                  if(_loc5_ || param1)
                  {
                     if(§§pop() >= this.§#P§.length)
                     {
                        if(_loc6_ && _loc3_)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           addr114:
                           this.§#P§[_loc4_].update(param1,true,param2);
                        }
                        else
                        {
                           addr99:
                           if(!(_loc5_ || _loc3_))
                           {
                              addr123:
                           }
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              addr75:
                              _loc4_ = int(§§pop() + 1);
                              addr74:
                              continue;
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr123);
                     }
                     else
                     {
                        addr111:
                        if(this.mSlingShotState == §=!3§)
                        {
                           §§goto(addr114);
                        }
                        else
                        {
                           this.§#P§[_loc4_].update(param1,false,param2);
                           §§goto(addr99);
                        }
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr111);
               }
               §§goto(addr74);
            }
            §§goto(addr75);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:LevelSlingshotObject = null;
         var _loc2_:* = 0;
         if(!(_loc6_ && _loc3_))
         {
            this.mDragging = false;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§use§();
                  while(this.§5C§ >= this.§#P§.length)
                  {
                     if(!(_loc6_ && _loc1_))
                     {
                        §§goto(addr43);
                     }
                     if(!_loc6_)
                     {
                        if(_loc6_)
                        {
                           break loop1;
                        }
                        if(true)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  _loc1_ = this.§#P§[this.§5C§];
                  if(_loc5_)
                  {
                     §§push(LevelItemManager.§&!i§(_loc1_.name).score);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(_loc5_ || this)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§"!>§);
                           §§push(_loc2_);
                           §§push(ScoreCollector.§0C§);
                           §§push(true);
                           §§push(_loc1_.x);
                           §§push(_loc1_.y);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(3);
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr125:
                                 §§push(§§pop() - §§pop());
                                 §§push(§0'§.§'>§(_loc1_.name));
                              }
                              §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                              loop4:
                              while(true)
                              {
                                 _loc1_.§&_§(-1,true);
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       var _loc3_:*;
                                       §§push((_loc3_ = this).§5C§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                    }
                                    continue loop3;
                                    if(_loc5_)
                                    {
                                       _loc3_.§5C§ = _loc4_;
                                    }
                                    break loop4;
                                 }
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr125);
                        }
                     }
                     addr181:
                     return true;
                  }
                  §§goto(addr95);
               }
            }
         }
         addr43:
         return false;
      }
      
      public function §<o§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:LevelSlingshotObject = null;
         §§push(0);
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         for each(_loc2_ in this.§#P§)
         {
            if(_loc6_)
            {
               §§push(_loc1_);
               if(_loc6_ || _loc2_)
               {
                  §§push(int(§§pop() + LevelItemManager.§&!i§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §!!g§() : int
      {
         return this.§+X§;
      }
      
      public function §=!F§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_)
         {
            §§push(this.§]§);
            loop0:
            while(true)
            {
               §§push(0);
               addr231:
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
                     §§push(this.§]§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§]§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr181);
      }
      
      public function §7C§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         §§push(1000);
         if(!(_loc4_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(this.§"!>§.objects.§ !f§(this.§>A§,this.§'0§));
            if(!(_loc4_ && this))
            {
               §§push(int(§§pop()));
            }
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
                     addr107:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           if(!(_loc4_ && _loc1_))
                           {
                              break loop3;
                           }
                        }
                        else
                        {
                           this.§3T§(0.1);
                        }
                        while(true)
                        {
                           if(_loc3_ || this)
                           {
                              §§push(_loc1_);
                              if(!_loc4_)
                              {
                                 continue loop3;
                              }
                              addr88:
                              if(§§pop() > 0)
                              {
                                 break;
                              }
                              if(_loc4_)
                              {
                                 return;
                              }
                              addr103:
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr99);
               }
            }
         }
      }
      
      public function §+F§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§'6§);
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
         }
         §§goto(addr69);
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.mSlingShotState == §"o§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc3_ || _loc2_))
                              {
                                 break;
                                 addr89:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(true);
                                          break loop4;
                                       }
                                       continue loop3;
                                    }
                                    addr104:
                                    while(true)
                                    {
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc3_)
                                    {
                                       break loop4;
                                    }
                                    continue loop4;
                                 }
                                 addr60:
                                 return §§pop();
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr89);
               }
               return §§pop();
            }
         }
         §§goto(addr104);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mSlingShotState == §"o§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && this))
               {
                  §§push(§§pop());
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr66:
                        §§pop();
                        §§push(this.§'H§);
                        §§push(this.§+8§);
                        if(_loc2_ || this)
                        {
                           §§push(§§pop() * §-%§);
                        }
                        §§push(§§pop() > §§pop());
                        if(_loc2_ || this)
                        {
                           addr89:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr89);
                  }
                  return §§pop();
               }
               §§goto(addr66);
            }
            §§goto(addr89);
         }
         §§goto(addr66);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mDragging = false;
            if(_loc2_ || _loc2_)
            {
               addr38:
               this.§'L§(§"o§);
            }
            var _loc1_:LevelSlingshotObject = this.§#P§[this.§@A§];
            if(_loc2_)
            {
               _loc1_.§&_§(LevelItemSoundResource.§0A§);
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mDragging = true;
         }
         var _loc1_:LevelSlingshotObject = this.§#P§[this.§@A§];
         if(_loc3_ || _loc1_)
         {
            _loc1_.§&_§(LevelItemSoundResource.§;!Z§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§"8§ = true;
         }
      }
      
      protected function §>!M§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:LevelSlingshotObject = null;
         if(!(_loc5_ && this))
         {
            if(param1 < 0)
            {
               if(!(_loc5_ && this))
               {
                  return;
               }
            }
            else
            {
               if(this.§#P§[param1])
               {
                  if(_loc4_)
                  {
                     _loc3_ = this.§#P§[param1];
                     addr52:
                     if(!_loc5_)
                     {
                        this.§^x§.removeChild(_loc3_.sprite);
                        loop0:
                        while(true)
                        {
                           if(param2)
                           {
                              while(true)
                              {
                                 this.§^!W§(this.§#P§[param1]);
                                 addr127:
                                 addr84:
                                 while(true)
                                 {
                                 }
                                 if(!(_loc5_ && this))
                                 {
                                    while(false)
                                    {
                                       while(true)
                                       {
                                          _loc3_.dispose();
                                          addr97:
                                          while(_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr127);
                                       }
                                    }
                                    addr135:
                                    this.§#P§.splice(param1,1);
                                    addr141:
                                    return;
                                    addr91:
                                 }
                              }
                           }
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr141);
               }
               §§goto(addr135);
            }
            §§goto(addr135);
         }
         §§goto(addr52);
      }
      
      public function §^!W§(param1:LevelSlingshotObject) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         §§push(5);
         if(_loc10_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(90);
         §§push(0);
         if(!(_loc9_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc10_)
            {
               if(§§pop() >= _loc3_)
               {
                  if(_loc10_)
                  {
                     §§push(this.§"!>§);
                     if(!(_loc9_ && _loc2_))
                     {
                        §§push(§§pop().particles);
                        if(!(_loc9_ && param1))
                        {
                           §§push(§0'§.§#!V§);
                           if(!_loc9_)
                           {
                              §§push(LevelParticleManager.§[K§);
                              if(_loc10_)
                              {
                                 §§push(§0'§.§&A§);
                                 if(!_loc9_)
                                 {
                                    §§push(param1.x);
                                    if(_loc10_)
                                    {
                                       §§push(param1.y);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(1000);
                                             if(!_loc9_)
                                             {
                                                §§push("");
                                                if(_loc10_ || param1)
                                                {
                                                   §§push(0);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5));
                                                      if(_loc10_)
                                                      {
                                                         §§pop();
                                                         addr141:
                                                         if(_loc9_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop35:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(180 / Math.PI);
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.sprite);
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(-§§pop().width);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(LevelMain.§8N§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          addr436:
                                                                                       }
                                                                                       addr447:
                                                                                       addr409:
                                                                                       addr410:
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr448:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   addr384:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Math.random() * -_loc7_);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(2);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         addr393:
                                                                                                      }
                                                                                                      addr394:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc10_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                               {
                                                                                                                  break loop6;
                                                                                                               }
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            addr402:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr451:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Math.random() * (720 / _loc3_));
                                                                                                }
                                                                                                addr466:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                addr474:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr475:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      continue loop35;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§push(Number(§§pop()));
                                                                                       addr417:
                                                                                       addr418:
                                                                                       while(_loc9_ && param1)
                                                                                       {
                                                                                          §§goto(addr447);
                                                                                          §§goto(addr409);
                                                                                       }
                                                                                       _loc7_ = §§pop();
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_ && _loc2_)
                                                                                          {
                                                                                             continue loop23;
                                                                                          }
                                                                                          §§push(param1.sprite);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          §§push(-§§pop().height);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(LevelMain.§8N§);
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                loop4:
                                                                                                while(_loc10_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   loop7:
                                                                                                   while(_loc10_)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      _loc8_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc10_ || this)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc10_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§push(Math.random() * -_loc8_);
                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                  {
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  addr311:
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc9_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(_loc10_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr336:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           if(_loc10_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 break loop2;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr384);
                                                                                                                           }
                                                                                                                           §§goto(addr475);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr336);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr436);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr474);
                                                                                                            }
                                                                                                            §§goto(addr336);
                                                                                                         }
                                                                                                         §§goto(addr451);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr402);
                                                                                                }
                                                                                                §§goto(addr410);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr367);
                                                                                          §§goto(addr417);
                                                                                       }
                                                                                       addr350:
                                                                                       _loc8_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§"!>§);
                                                                                          addr180:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().particles);
                                                                                             addr181:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§0'§.§@R§);
                                                                                                addr184:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(LevelParticleManager.§[K§);
                                                                                                   addr187:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§0'§.§&A§);
                                                                                                      addr190:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.x);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               addr203:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.y);
                                                                                                                  addr205:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc8_);
                                                                                                                     addr207:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(1500);
                                                                                                                        addr208:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push("");
                                                                                                                           addr209:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§0'§.§%!`§(param1.name));
                                                                                                                              addr214:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 if(_loc10_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * Math.cos(_loc6_));
                                                                                                                                 }
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                 {
                                                                                                                                    addr258:
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       addr253:
                                                                                                                                       §§push(§§pop() * Math.sin(_loc6_));
                                                                                                                                    }
                                                                                                                                    §§push(5);
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * 20);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                                    loop1:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr266:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             break loop1;
                                                                                                                                          }
                                                                                                                                          §§goto(addr418);
                                                                                                                                       }
                                                                                                                                       §§goto(addr258);
                                                                                                                                    }
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    if(!(_loc9_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          addr175:
                                                                                                                                          _loc5_ = int(§§pop());
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr175);
                                                                                                                                    addr265:
                                                                                                                                 }
                                                                                                                                 §§goto(addr253);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr203:
                                                                                                            }
                                                                                                            §§goto(addr205);
                                                                                                         }
                                                                                                         §§goto(addr203);
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
                                                               §§goto(addr374);
                                                            }
                                                            §§goto(addr350);
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr141);
               }
               else
               {
                  §§push(_loc4_);
               }
               §§goto(addr466);
            }
            §§goto(addr175);
         }
      }
      
      public function §"!A§(param1:LevelSlingshotObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§>!M§(this.§#P§.indexOf(param1));
         }
      }
      
      public function §<!i§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:LevelSlingshotObject = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:LevelSlingshotObject = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc6_ || _loc3_)
            {
               while(true)
               {
                  if(§§pop() >= this.§#P§.length - 1)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§push(Number(Math.sqrt((this.§`!%§ - this.§#P§[_loc1_].x) * (this.§`!%§ - this.§#P§[_loc1_].x) + (this.§else§ - this.§#P§[_loc1_].y) * (this.§else§ - this.§#P§[_loc1_].y))));
                     if(_loc6_ || this)
                     {
                        _loc3_ = §§pop();
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(Number(Math.sqrt((this.§`!%§ - this.§#P§[_loc1_ + 1].x) * (this.§`!%§ - this.§#P§[_loc1_ + 1].x) + (this.§else§ - this.§#P§[_loc1_ + 1].y) * (this.§else§ - this.§#P§[_loc1_ + 1].y))));
                           if(_loc6_ || _loc1_)
                           {
                              _loc4_ = §§pop();
                              if(!(_loc7_ && _loc2_))
                              {
                                 addr150:
                                 if(_loc4_ < _loc3_)
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       _loc5_ = this.§#P§[_loc1_];
                                       if(!(_loc7_ && this))
                                       {
                                          this.§#P§.splice(_loc1_,1);
                                          loop2:
                                          while(true)
                                          {
                                             addr204:
                                             while(true)
                                             {
                                                this.§#P§.splice(_loc1_ + 1,0,_loc5_);
                                                continue loop2;
                                             }
                                          }
                                          addr221:
                                       }
                                       while(true)
                                       {
                                          _loc1_ = int(Math.max(-1,_loc1_ - 2));
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          if(_loc6_ || this)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr221);
                                          }
                                          §§goto(addr204);
                                       }
                                    }
                                    else
                                    {
                                       addr312:
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          addr360:
                                          for(; §§pop() < this.§#P§.length; continue loop5)
                                          {
                                             _loc2_ = this.§#P§[_loc1_];
                                             if(_loc7_)
                                             {
                                                continue;
                                             }
                                             this.§^x§.addChildAt(_loc2_.sprite,0);
                                             if(_loc7_)
                                             {
                                                continue;
                                             }
                                             §§push(_loc1_);
                                             if(_loc6_ || this)
                                             {
                                                §§push(§§pop() + 1);
                                                if(_loc6_ || _loc2_)
                                                {
                                                   addr357:
                                                   §§push(int(§§pop()));
                                                }
                                                _loc1_ = §§pop();
                                                continue;
                                             }
                                             §§goto(addr357);
                                          }
                                          §§goto(addr364);
                                       }
                                    }
                                 }
                                 §§push(_loc1_);
                                 if(_loc6_ || this)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue;
                              }
                              addr304:
                              §§goto(addr298);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr298);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr312);
               }
               addr286:
               if(this.§^x§.numChildren > 0)
               {
                  §§push(this.§^x§);
                  if(!(_loc7_ && _loc1_))
                  {
                     §§pop().removeChildAt(0);
                     if(_loc6_)
                     {
                        §§goto(addr286);
                     }
                     §§goto(addr298);
                  }
                  §§goto(addr286);
               }
               if(!(_loc7_ && this))
               {
                  addr298:
                  addr298:
                  §§push(0);
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc1_ = §§pop();
                  if(_loc6_ || _loc2_)
                  {
                     §§goto(addr312);
                  }
                  §§goto(addr364);
               }
               addr364:
               return;
            }
            break;
         }
         §§push(int(§§pop()));
         if(_loc6_)
         {
            §§goto(addr304);
         }
         §§goto(addr360);
      }
      
      public function §;C§(param1:Number, param2:Number) : LevelSlingshotObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         do
         {
            §§push(_loc3_);
            if(!(_loc5_ && this))
            {
               if(_loc4_)
               {
                  if(§§pop() >= this.§#P§.length)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        return null;
                     }
                  }
                  else if(this.§#P§[_loc3_])
                  {
                     if(!(_loc5_ && param1))
                     {
                        if(this.§#P§[_loc3_].isInCoordinates(param1,param2))
                        {
                           break;
                        }
                        addr55:
                        §§push(_loc3_ + 1);
                        if(_loc4_ || param2)
                        {
                           addr66:
                           _loc3_ = int(§§pop());
                           continue;
                        }
                        §§goto(addr66);
                     }
                     break;
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr66);
         }
         while(!(_loc5_ && param1));
         
         return this.§#P§[_loc3_];
      }
      
      public function §?!<§(param1:Number, param2:Number) : LevelSlingshot
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§`!%§);
               loop1:
               while(true)
               {
                  §§push(this.§+8§);
                  loop2:
                  while(true)
                  {
                     §§push(4);
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
                                 §§push(Boolean(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(this.§`!%§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(this.§+8§);
                                                         loop14:
                                                         while(_loc3_ || this)
                                                         {
                                                            §§push(4);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               loop16:
                                                               while(_loc3_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop17:
                                                                  while(!_loc4_)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr239:
                                                                     }
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc4_ && param2))
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    if(_loc4_ && _loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          loop31:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc3_ || param2)
                                                                                                {
                                                                                                   §§goto(addr76);
                                                                                                }
                                                                                                addr78:
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(_loc3_ || param2)
                                                                                                      {
                                                                                                         §§goto(addr19);
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param2);
                                                                                                   }
                                                                                                   addr244:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop28:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§else§);
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         §§push(this.§'0§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               while(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(this.§+8§);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  addr147:
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        if(!(_loc3_ || param2))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§pop() >= §§pop());
                                                                                                                     }
                                                                                                                     continue loop13;
                                                                                                                     addr155:
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                               addr108:
                                                                                                            }
                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                            if(_loc4_ && param2)
                                                                                                            {
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            addr48:
                                                                                                            if(_loc3_ || param1)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                            }
                                                                                                            while(_loc3_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               continue loop28;
                                                                                                               §§goto(addr48);
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                            addr201:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc4_ && this))
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop29;
                                                                                                                  }
                                                                                                                  §§goto(addr201);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§goto(addr244);
                                                                                                                  }
                                                                                                                  addr243:
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         §§goto(addr155);
                                                                                                      }
                                                                                                   }
                                                                                                   addr19:
                                                                                                   return null;
                                                                                                   addr204:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                   §§goto(addr204);
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr19);
                                                                                          }
                                                                                       }
                                                                                       addr67:
                                                                                    }
                                                                                    §§goto(addr48);
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr243);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr239);
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
         addr76:
         return this;
      }
      
      public function §!!-§(param1:LevelModel) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:LevelSlingshotObject = null;
         var _loc4_:§38§ = null;
         if(_loc6_)
         {
            param1.§7a§ = this.§`!%§;
            if(_loc6_ || _loc3_)
            {
               addr36:
               param1.§<7§ = this.§else§;
            }
            var _loc2_:Number = 0;
            loop0:
            while(_loc2_ < this.§#P§.length)
            {
               _loc3_ = this.§#P§[_loc2_];
               _loc4_ = new §38§();
               if(!_loc5_)
               {
                  _loc4_.x = _loc3_.x;
               }
               while(true)
               {
                  _loc4_.y = _loc3_.y;
                  loop2:
                  while(true)
                  {
                     _loc4_.id = _loc3_.name;
                     addr118:
                     while(true)
                     {
                        addr90:
                        while(true)
                        {
                           param1.§&I§(_loc4_);
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §5!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§#P§.length > 0)
         {
            this.§"!A§(this.§#P§[0]);
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §!!K§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() >= this.§#P§.length)
               {
                  loop1:
                  for(; _loc6_; if(!(_loc6_ || param2))
                  {
                     continue;
                  },if(!(_loc6_ || param1))
                  {
                     continue loop0;
                  },§§goto(addr113),§§push(this.§else§))
                  {
                     §§push(this.§`!%§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() > param1.x);
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc6_)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop20:
                                       while(true)
                                       {
                                          §§pop();
                                          loop18:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                addr269:
                                                _loc3_.push(this.§#P§[_loc4_]);
                                                break loop1;
                                             }
                                             §§push(this.§`!%§);
                                             loop19:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() < param2.x);
                                                   if(_loc6_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           continue loop7;
                                                                           addr61:
                                                                           if(_loc5_ && param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc5_ && this)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           addr76:
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              addr83:
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                _loc3_.push(this);
                                                                                                addr109:
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr166:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§else§);
                                                                                                if(!(_loc6_ || _loc3_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr251:
                                                                                                      break loop13;
                                                                                                   }
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() < param2.y);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr61);
                                                                                                      }
                                                                                                      §§goto(addr76);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr250:
                                                                                                      §§push(Number(§§pop() + 1));
                                                                                                   }
                                                                                                   _loc4_ = §§pop();
                                                                                                   continue loop0;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             while(!_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() > param1.y);
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                   §§goto(addr83);
                                                                                                }
                                                                                                §§goto(addr166);
                                                                                             }
                                                                                             addr166:
                                                                                             §§goto(addr250);
                                                                                             addr113:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                          continue loop18;
                                                                                          addr190:
                                                                                       }
                                                                                       §§goto(addr109);
                                                                                    }
                                                                                    return _loc3_;
                                                                                    addr92:
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              §§goto(addr118);
                                                                           }
                                                                           while(!(_loc5_ && _loc3_))
                                                                           {
                                                                              §§pop();
                                                                              §§goto(addr166);
                                                                              §§goto(addr76);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              §§goto(addr190);
                                                                           }
                                                                           §§goto(addr251);
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr185:
                                                      }
                                                   }
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr251);
                                             }
                                          }
                                       }
                                       addr233:
                                    }
                                    §§goto(addr185);
                                 }
                              }
                           }
                           §§goto(addr233);
                        }
                     }
                  }
               }
               else if(this.§#P§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr269);
               }
               §§goto(addr250);
               §§push(_loc4_);
            }
            §§goto(addr224);
         }
      }
      
      public function §4!c§() : Array
      {
         return [this.§4!$§,this.§@!$§];
      }
      
      public function §5!0§(param1:String, param2:Number, param3:Number) : LevelSlingshotObject
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:LevelSlingshotObject = this.§[!?§(param1,param2,param3);
         if(_loc5_)
         {
            this.§<!i§();
         }
         return _loc4_;
      }
      
      public function §#b§() : Number
      {
         return this.§#P§.length;
      }
   }
}
