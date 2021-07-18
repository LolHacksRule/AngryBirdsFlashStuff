package §"!I§
{
   import § "§.§3-§;
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §2Y§.§7!f§;
   import §2Y§.§7?§;
   import §2Y§.Sprite;
   import §=!<§.§!x§;
   import §=!<§.§8!!§;
   import §@0§.§!k§;
   import §@0§.§`>§;
   import §@R§.§4,§;
   import §^!0§.§&M§;
   import §^!5§.§&!E§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9§
   {
      
      public static const §8!M§:int = 0;
      
      public static const §+P§:int = 1;
      
      public static const STATE_BIRD_IS_READY:int = 2;
      
      public static const §5H§:int = 3;
      
      public static const §-!U§:int = 5;
      
      public static const §"!_§:int = 3151368;
      
      protected static const §9!!§:int = 8;
      
      protected static const §,a§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const §;!]§:Number = 52.5;
      
      protected static const §!,§:Number = -0.7;
      
      protected static const §]"§:Number = 0;
      
      protected static var §48§:Texture;
      
      public static const §;&§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8!M§ = 0;
            while(true)
            {
               §+P§ = 1;
               loop1:
               while(_loc1_)
               {
                  STATE_BIRD_IS_READY = 2;
                  loop2:
                  while(true)
                  {
                     §5H§ = 3;
                     loop3:
                     while(true)
                     {
                        §-!U§ = 5;
                        while(true)
                        {
                           §"!_§ = 3151368;
                           loop5:
                           for(; !_loc2_; if(!(_loc1_ || _loc1_))
                           {
                              continue;
                           },§]"§ = 0,while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              addr105:
                              while(true)
                              {
                                 §;!]§ = 52.5;
                                 §§goto(addr91);
                              }
                           })
                           {
                              §9!!§ = 8;
                              while(_loc1_)
                              {
                                 §,a§ = 0;
                                 loop9:
                                 while(_loc1_ || §9§)
                                 {
                                    if(_loc1_)
                                    {
                                       §!,§ = -0.7;
                                       while(true)
                                       {
                                          if(_loc1_ || §9§)
                                          {
                                             continue loop5;
                                          }
                                          continue loop9;
                                          addr34:
                                          if(_loc1_ || _loc2_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       continue loop5;
                                       continue;
                                    }
                                    continue loop1;
                                 }
                              }
                              continue loop3;
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
            §§goto(addr105);
         }
         §§goto(addr48);
      }
      
      public var §=!V§:§^!2§;
      
      public var §"!d§:Number;
      
      public var §,!W§:Number;
      
      public var §0P§:Number;
      
      protected var § !&§:Number;
      
      protected var §8H§:Number;
      
      protected var §;R§:Number;
      
      protected var §"!c§:Number;
      
      public var §9A§:Number;
      
      public var §"!=§:Boolean = false;
      
      protected var §0!O§:Number;
      
      public var §2!A§:Vector.<§94§>;
      
      public var §3!@§:int;
      
      public var §!!_§:int;
      
      public var §'!C§:Number;
      
      public var §=U§:Sprite;
      
      public var §%T§:int = 0;
      
      public var §5M§:Number = 0;
      
      public var §-!9§:Array;
      
      public var §[!M§:Array;
      
      public var mSlingShotState:int;
      
      public var §^b§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §9!d§:Boolean = false;
      
      public var §3`§:Number;
      
      protected var §;=§:Sprite;
      
      protected var §>!?§:§7?§;
      
      protected var §>!b§:§7?§;
      
      protected var §0!Y§:Sprite;
      
      protected var §`!#§:Sprite;
      
      protected var §!!;§:Sprite;
      
      protected var § !§:§7!f§;
      
      protected var §%@§:§7!f§;
      
      private var §"_§:Number = 0;
      
      private var §8v§:int = 0;
      
      protected var §5b§:Number = -0.7;
      
      protected var §>!;§:Number = 0;
      
      public function §9§(param1:§^!2§, param2:§&!E§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§3-§ = null;
         if(!_loc7_)
         {
            this.§2!A§ = new Vector.<§94§>();
            while(true)
            {
               super();
               loop4:
               for(; !(_loc7_ && param3); if(_loc7_ && param2)
               {
                  continue;
               },§§goto(addr43))
               {
                  this.setPosition(param2.§84§,param2.§6!`§);
                  loop5:
                  while(_loc6_ || param1)
                  {
                     loop6:
                     do
                     {
                        this.§?<§();
                        addr34:
                        addr84:
                        while(true)
                        {
                           if(_loc6_)
                           {
                              continue loop4;
                           }
                           continue loop5;
                        }
                        addr95:
                        while(true)
                        {
                           if(_loc6_ || this)
                           {
                              this.§;=§ = param3;
                              break loop5;
                           }
                           break;
                           addr43:
                           if(_loc7_ && param3)
                           {
                              continue;
                           }
                           _loc4_ = 0;
                           if(!_loc7_)
                           {
                              continue loop6;
                           }
                           §§goto(addr34);
                        }
                        while(true)
                        {
                           this.§=!V§ = param1;
                           §§goto(addr84);
                        }
                     }
                     while(false);
                     
                     while(_loc4_ < param2.§<!5§)
                     {
                        _loc5_ = param2.§6+§(_loc4_);
                        if(!_loc7_)
                        {
                           this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
                           if(!_loc6_)
                           {
                              continue;
                           }
                        }
                        _loc4_++;
                     }
                     if(!_loc7_)
                     {
                        this.§8v§ = this.§`!_§();
                        if(!(_loc7_ && param3))
                        {
                           this.§3!@§ = 0;
                           loop9:
                           while(true)
                           {
                              if(this.§2!A§.length > 0)
                              {
                                 this.§%&§(§8!M§);
                                 loop10:
                                 while(true)
                                 {
                                    addr226:
                                    while(true)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          this.§3`§ = 0;
                                          loop13:
                                          while(true)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                if(_loc6_ || param3)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         this.§^!K§();
                                                         loop14:
                                                         do
                                                         {
                                                            this.update(0,true);
                                                            while(true)
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  this.§<!H§();
                                                                  while(!_loc7_)
                                                                  {
                                                                     this.§+9§(0);
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               addr231:
                                                               while(true)
                                                               {
                                                                  this.§%&§(§5H§);
                                                                  addr221:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(_loc7_ && param1);
                                                         
                                                         if(!_loc7_)
                                                         {
                                                            return;
                                                         }
                                                         continue;
                                                      }
                                                      addr250:
                                                      addr250:
                                                      while(true)
                                                      {
                                                         §§push(§4,§);
                                                         §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§"!d§);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop() + " ");
                                                            if(!(_loc7_ && param3))
                                                            {
                                                               addr276:
                                                               §§push(§§pop() + this.§,!W§);
                                                            }
                                                            §§pop().log(§§pop());
                                                            while(true)
                                                            {
                                                               this.§%&§(§5H§);
                                                               break loop13;
                                                            }
                                                            addr280:
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                   }
                                                   §§goto(addr280);
                                                }
                                                break;
                                             }
                                             §§goto(addr221);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr250);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr226);
                        }
                     }
                     §§goto(addr250);
                  }
                  while(true)
                  {
                     if(!param2)
                     {
                        §4,§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                     }
                     continue loop4;
                     §§goto(addr67);
                  }
                  addr67:
                  §§goto(addr231);
               }
            }
         }
         §§goto(addr95);
      }
      
      public function get sprite() : Sprite
      {
         return this.§;=§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§"_§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§3!@§ < this.§2!A§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§2!A§.length > 0)
            {
               this.§%!e§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§2!A§ = null;
               loop2:
               while(true)
               {
                  §§push(this.§;=§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           addr96:
                           this.§;=§.dispose();
                        }
                        while(true)
                        {
                           this.§;=§ = null;
                           addr78:
                           while(true)
                           {
                           }
                           loop7:
                           while(!(_loc1_ && _loc2_))
                           {
                              this.§[!M§ = null;
                              if(_loc1_)
                              {
                                 continue;
                              }
                              addr28:
                              if(_loc2_ || this)
                              {
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 continue loop2;
                              }
                              while(_loc2_)
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    this.§-!9§ = null;
                                    continue loop7;
                                 }
                                 continue loop1;
                                 §§goto(addr28);
                              }
                              §§goto(addr78);
                              addr64:
                           }
                        }
                     }
                     while(true)
                     {
                        this.§=U§ = null;
                        §§goto(addr64);
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr96);
               }
               continue loop0;
            }
         }
      }
      
      public function §+!G§(param1:String, param2:Number, param3:Number, param4:int = -1) : §94§
      {
         var _loc5_:§94§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§>!'§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §94§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§94§ = new §94§(this,new Sprite(),param1,param2,param3);
         if(!(_loc6_ && param1))
         {
            if(param4 < 0)
            {
               if(_loc7_)
               {
                  this.§2!A§.push(_loc5_);
               }
               while(true)
               {
                  §§goto(addr50);
               }
               addr90:
            }
            else
            {
               this.§2!A§.splice(param4,0,_loc5_);
            }
            while(true)
            {
               if(!_loc6_)
               {
                  §§goto(addr70);
               }
               else
               {
                  §§goto(addr90);
               }
               §§goto(addr58);
            }
         }
         addr58:
         do
         {
            this.§=U§.addChild(_loc5_.sprite);
         }
         while(!_loc7_);
         
         return _loc5_;
      }
      
      public function §%&§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§8!M§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     for(; !_loc2_; while(_loc3_ || _loc2_)
                     {
                        §§push(STATE_BIRD_IS_READY);
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           loop7:
                           while(true)
                           {
                              §§push(§5H§);
                              addr246:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr249);
                           }
                        }
                        §§goto(addr275);
                     })
                     {
                        §§push(§+P§);
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           continue loop3;
                           if(!(_loc3_ || param1))
                           {
                              continue;
                           }
                           if(§§pop() == §§pop())
                           {
                              loop17:
                              while(true)
                              {
                                 if(!this.mDragging)
                                 {
                                    this.§7!0§();
                                    addr62:
                                    loop10:
                                    while(true)
                                    {
                                       this.mDragging = false;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   break;
                                                }
                                                addr304:
                                                loop11:
                                                for(; _loc3_; this.mDragging = false)
                                                {
                                                   this.§9!d§ = false;
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               this.§7!0§();
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     this.§2!A§[this.§3!@§].setPosition(this.§;R§ - this.§2!A§[this.§3!@§].radius * Math.cos(this.§5M§ / (180 / Math.PI)),this.§"!c§ + this.§2!A§[this.§3!@§].radius * Math.sin(this.§5M§ / (180 / Math.PI)));
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc2_ && param1))
                                                                        {
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              addr311:
                                                                              addr309:
                                                                              if(_loc2_)
                                                                              {
                                                                                 break loop2;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                           addr211:
                                                                        }
                                                                     }
                                                                     addr255:
                                                                     continue loop10;
                                                                     addr255:
                                                                     addr108:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr275:
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr285:
                                                                        if(!(_loc3_ || param1))
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        continue loop10;
                                                                        addr292:
                                                                     }
                                                                     this.§'!C§ = 10000;
                                                                  }
                                                                  this.§9!d§ = false;
                                                                  this.§7!0§();
                                                                  §§goto(addr255);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         loop13:
                                                         while(true)
                                                         {
                                                            this.§'!C§ = 2000;
                                                            addr223:
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  break loop13;
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                   this.§'!C§ = 1000;
                                                   §§goto(addr309);
                                                }
                                                while(true)
                                                {
                                                   this.§'!C§ = 0;
                                                   §§goto(addr285);
                                                   break loop4;
                                                }
                                                §§goto(addr292);
                                             }
                                             §§goto(addr126);
                                          }
                                          §§goto(addr108);
                                       }
                                       else
                                       {
                                          §§goto(addr62);
                                       }
                                    }
                                    return;
                                    addr29:
                                 }
                                 §§goto(addr211);
                              }
                           }
                           §§goto(addr29);
                        }
                        this.§7!0§();
                        §§goto(addr304);
                     }
                     continue loop1;
                  }
                  this.§7!0§();
                  §§goto(addr329);
               }
            }
         }
         §§goto(addr311);
      }
      
      public function get §<!6§() : §^!2§
      {
         return this.§=!V§;
      }
      
      public function §@!§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mSlingShotState == §5H§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr58:
                     §§pop();
                     return this.§'!C§ <= 0;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      private function §?<§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§!x§ = this.§!§();
         var _loc2_:§8!!§ = _loc1_.getFrame(0);
         var _loc3_:§8!!§ = _loc1_.getFrame(1);
         if(!(_loc4_ && this))
         {
            this.§ !§ = new §7!f§(_loc2_.texture);
            while(true)
            {
               §§push(this.§ !§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr266:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
               if(!(_loc5_ || _loc1_))
               {
                  continue;
               }
               §§push(this.§%@§);
               loop6:
               while(true)
               {
                  §§push(_loc3_.scale);
                  addr216:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop6;
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      protected function §!§() : §!x§
      {
         return this.§=!V§.§?!O§.§!5§("SLINGSHOT");
      }
      
      public function §#'§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(!_loc2_)
         {
            this.§ !&§ = this.§"!d§;
         }
         loop0:
         while(true)
         {
            addr52:
            addr80:
            while(true)
            {
               this.§8H§ = this.§,!W§;
               continue loop0;
            }
            _loc1_ = null;
            return;
         }
      }
      
      protected function §'!U§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(_loc4_ || _loc3_)
         {
            if(!§48§)
            {
               if(!_loc3_)
               {
                  addr31:
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc4_ || this)
                  {
                     §48§ = this.§=!V§.textureManager.§=!Z§(_loc2_);
                     addr53:
                     this.§!!;§ = new Sprite();
                  }
                  §§goto(addr53);
               }
               var _loc1_:§7!f§ = new §7!f§(§48§);
               if(_loc4_)
               {
                  _loc1_.rotation = Math.PI;
                  loop0:
                  while(true)
                  {
                     _loc1_.x = _loc1_.width / 2;
                     while(true)
                     {
                        _loc1_.y = _loc1_.height / 2;
                        while(_loc4_)
                        {
                           loop5:
                           while(!(_loc3_ && _loc1_))
                           {
                              this.§>!?§ = new §7?§(2,2,§"!_§);
                              loop6:
                              while(true)
                              {
                                 this.§0!Y§.addChild(this.§>!?§);
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       this.§`!#§ = new Sprite();
                                       loop8:
                                       for(; _loc4_; if(!(_loc3_ && _loc2_))
                                       {
                                          return;
                                       })
                                       {
                                          this.§>!b§ = new §7?§(2,2,§"!_§);
                                          while(!(_loc3_ && _loc1_))
                                          {
                                             if(_loc4_)
                                             {
                                                this.§`!#§.addChild(this.§>!b§);
                                                if(_loc4_ || this)
                                                {
                                                   continue loop8;
                                                }
                                                continue;
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             this.§0!Y§ = new Sprite();
                                             break loop7;
                                             §§goto(addr108);
                                          }
                                          addr108:
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§!!;§.addChild(_loc1_);
                  §§goto(addr164);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr31);
      }
      
      public function §+9§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§"!c§);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() / §^!2§.§3!S§);
            if(!_loc7_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§;R§);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() / §^!2§.§3!S§);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(3.5);
            if(_loc6_ || this)
            {
               §§push(8);
               §§push(this.§0!O§);
               if(_loc6_ || _loc3_)
               {
                  §§push(this.§9A§);
                  if(_loc6_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc6_)
                     {
                        addr75:
                        §§push(§§pop() / this.§0!O§);
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc6_)
                     {
                        addr80:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     if(_loc6_ || this)
                     {
                        §§push(this.§!!;§);
                        while(true)
                        {
                           §§push(_loc3_);
                           while(true)
                           {
                              §§pop().x = §§pop();
                              while(true)
                              {
                                 §§push(this.§!!;§);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr537:
                                    addr618:
                                    while(true)
                                    {
                                       §§pop().y = §§pop();
                                       if(!(_loc6_ || this))
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    addr618:
                                    do
                                    {
                                       this.§^b§ = false;
                                    }
                                    while(!(_loc6_ || this));
                                    
                                    addr605:
                                    if(!_loc6_)
                                    {
                                       addr645:
                                       while(true)
                                       {
                                          addr609:
                                          §§push(this.§>!?§);
                                          §§push(-this.§>!?§.height);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() / 2);
                                          }
                                          §§pop().y = §§pop();
                                          §§goto(addr618);
                                       }
                                       addr645:
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr645);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr80);
         }
         §§goto(addr30);
      }
      
      public function §[![§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            if(this.§2!A§.length <= 0)
            {
               loop1:
               while(_loc2_ || _loc2_)
               {
                  this.§6!F§();
                  loop2:
                  do
                  {
                     this.addSlingshotObject("BIRD_SARDINE",this.§"!d§,this.§,!W§);
                     while(!(_loc1_ && _loc1_))
                     {
                        this.§%&§(STATE_BIRD_IS_READY);
                        if(!(_loc1_ && _loc1_))
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc1_ && _loc2_);
                  
                  return;
               }
            }
            else
            {
               this.§%!e§(0,true);
            }
         }
      }
      
      protected function §6!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&M§.§6!#§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%&§(§-!U§);
         }
      }
      
      public function §7!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§ !&§);
            §§push(this.§8H§);
            if(_loc2_)
            {
               §§push(this.§0!O§);
               if(!(_loc1_ && _loc2_))
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
      
      protected function §4?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §&M§.§6!#§("SlingshotStreched");
         }
      }
      
      public function applyGravity(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§"!d§);
            §§push(this.§,!W§);
            if(_loc2_)
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
         if(!(_loc7_ && param3))
         {
            §§push(§§pop() - this.§"!d§);
            if(!(_loc7_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!(_loc7_ && param3))
         {
            this.§"!d§ = param1;
         }
         §§push(param2);
         if(!(_loc7_ && param2))
         {
            §§push(§§pop() - this.§,!W§);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc6_)
         {
            this.§,!W§ = param2;
         }
         loop0:
         while(true)
         {
            §§push(this);
            §§push(this.§0P§);
            if(!_loc7_)
            {
               §§push(§§pop() + _loc5_);
            }
            §§pop().§0P§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§8H§);
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§8H§ = §§pop();
               loop2:
               while(true)
               {
                  §§push(this);
                  §§push(this.§"!c§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§"!c§ = §§pop();
                  loop3:
                  while(!_loc7_)
                  {
                     §§push(this);
                     §§push(this.§ !&§);
                     if(!(_loc7_ && param3))
                     {
                        §§push(§§pop() + _loc4_);
                     }
                     §§pop().§ !&§ = §§pop();
                     while(true)
                     {
                        if(_loc6_)
                        {
                           continue loop2;
                        }
                        continue loop3;
                        addr81:
                        if(_loc6_ || param1)
                        {
                           return;
                        }
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
               if(_loc7_ && param2)
               {
                  continue;
               }
               §§goto(addr68);
            }
         }
      }
      
      public function §^!%§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§94§ = null;
         _loc2_ = this.§2!A§[this.§3!@§];
         §§push(this.§9A§);
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop() / this.§0!O§);
            if(_loc5_)
            {
               addr44:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               if(_loc2_ != null)
               {
                  if(_loc5_)
                  {
                     if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                     {
                        if(!_loc4_)
                        {
                           addr75:
                           §§push(§9§.§;!]§);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr105:
                                 §§push(Number(§§pop()));
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    §§goto(addr113);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr105);
                           }
                        }
                        §§goto(addr113);
                     }
                     else
                     {
                        §§push(§9§.BIRD_LAUNCH_FORCE);
                        if(!(_loc4_ && this))
                        {
                           §§push(Number(§§pop()));
                           if(!_loc4_)
                           {
                              §§goto(addr105);
                           }
                           §§goto(addr113);
                        }
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr75);
               }
            }
            addr113:
            _loc1_ = §§pop();
            §§push(_loc1_);
            if(!(_loc4_ && _loc1_))
            {
               addr132:
               return §§pop() * _loc3_;
            }
         }
         §§goto(addr44);
      }
      
      public function §?!W§() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§94§ = null;
         if(!_loc3_)
         {
            if(this.§2!A§.length <= this.§3!@§)
            {
               return null;
            }
            if(_loc2_ || _loc3_)
            {
               _loc1_ = this.§2!A§[this.§3!@§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §[!Z§() : Point
      {
         return new Point(this.§ !&§,this.§8H§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§94§ = null;
         if(!_loc4_)
         {
            this.updateGroundControl(param1);
            loop0:
            while(true)
            {
               if(this.§^b§)
               {
                  loop1:
                  while(true)
                  {
                     this.§+9§(param1);
                     addr100:
                     addr60:
                     while(true)
                     {
                     }
                     while(true)
                     {
                        if(!(_loc4_ && param2))
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                     §§goto(addr100);
                  }
                  addr97:
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§'!C§);
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§'!C§ = §§pop();
                  loop4:
                  while(true)
                  {
                     while(true)
                     {
                        if(this.§'!C§ >= 0)
                        {
                           loop7:
                           while(true)
                           {
                              if(this.mSlingShotState == §5H§)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr60);
                                 }
                              }
                              else
                              {
                                 this.§,R§(param1,param2);
                              }
                              if(_loc5_)
                              {
                                 break;
                              }
                              addr77:
                              while(true)
                              {
                                 continue loop7;
                              }
                           }
                           if(true)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr60);
                     }
                     _loc3_ = null;
                     if(_loc5_ || this)
                     {
                        if(this.§2!A§.length > 0)
                        {
                           if(_loc5_ || param1)
                           {
                              _loc3_ = this.§2!A§[this.§3!@§];
                              addr134:
                              if(_loc3_)
                              {
                                 if(_loc5_)
                                 {
                                    _loc3_.§'!,§(param1);
                                    if(_loc5_ || this)
                                    {
                                       addr355:
                                       if(_loc3_)
                                       {
                                          addr333:
                                          if(this.mSlingShotState != §8!M§)
                                          {
                                             addr289:
                                             §§push(this.mSlingShotState);
                                             §§push(§+P§);
                                             if(_loc5_ || param2)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   §§push(this.mSlingShotState);
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(STATE_BIRD_IS_READY);
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr289);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            addr228:
                                                            §§push(_loc3_);
                                                            §§push(this.§;R§);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               §§push(_loc3_.radius);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() * Math.cos(this.§5M§ / (180 / Math.PI)));
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     addr260:
                                                                     §§push(§§pop() - §§pop());
                                                                     §§push(this.§"!c§);
                                                                     if(_loc5_)
                                                                     {
                                                                        addr264:
                                                                        §§push(_loc3_.radius);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() * Math.sin(this.§5M§ / (180 / Math.PI)));
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§pop().setPosition(§§pop(),§§pop());
                                                                     addr280:
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(this.§9!d§);
                                                                        if(_loc5_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§9A§);
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       §§push(this.§0!O§);
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          addr194:
                                                                                          §§push(§§pop() / §§pop());
                                                                                          §§push(this.§5M§);
                                                                                       }
                                                                                       §§pop().§<0§(§§pop(),§§pop());
                                                                                       addr197:
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§goto(addr228);
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             addr208:
                                                                                             if(false)
                                                                                             {
                                                                                                addr361:
                                                                                                return;
                                                                                                addr210:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr304:
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!(_loc4_ && param1))
                                                                                                {
                                                                                                   this.§%&§(STATE_BIRD_IS_READY);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr361);
                                                                                                   addr360:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr335:
                                                                                                if(this.§'!C§ <= 0)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      this.§%&§(§+P§);
                                                                                                      _loc3_.§<!<§();
                                                                                                      addr354:
                                                                                                      if(_loc4_ && this)
                                                                                                      {
                                                                                                         addr357:
                                                                                                         this.§%&§(§5H§);
                                                                                                         §§goto(addr360);
                                                                                                      }
                                                                                                      §§goto(addr361);
                                                                                                      addr354:
                                                                                                   }
                                                                                                   §§goto(addr354);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                       §§goto(addr210);
                                                                                    }
                                                                                    §§goto(addr194);
                                                                                 }
                                                                                 §§goto(addr280);
                                                                              }
                                                                              §§goto(addr197);
                                                                           }
                                                                           §§goto(addr361);
                                                                        }
                                                                        addr303:
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr304);
                                                                        }
                                                                        §§goto(addr361);
                                                                        addr282:
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr361);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   §§goto(addr289);
                                                }
                                                if(!_loc4_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr303);
                                                      §§push(_loc3_.§]]§);
                                                   }
                                                   §§goto(addr354);
                                                }
                                                §§goto(addr304);
                                             }
                                             §§goto(addr333);
                                          }
                                          §§goto(addr335);
                                       }
                                       §§goto(addr357);
                                    }
                                    §§goto(addr335);
                                 }
                                 §§goto(addr282);
                              }
                              §§goto(addr355);
                           }
                           §§goto(addr354);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr208);
                  }
                  §§goto(addr97);
                  §§goto(addr100);
               }
               §§goto(addr361);
            }
         }
         while(true)
         {
            this.§'!C§ = 0;
            §§goto(addr77);
         }
      }
      
      public function §8q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§94§ = null;
         if(_loc6_ || param3)
         {
            if(this.§2!A§.length > 0)
            {
               if(_loc6_)
               {
                  _loc5_ = this.§2!A§[this.§3!@§];
                  addr50:
                  if(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr54);
                     }
                  }
                  _loc5_.setPosition(param1,param2);
                  do
                  {
                     this.§<0§(param3,param4);
                  }
                  while(_loc7_ && param3);
                  
                  return;
                  addr33:
               }
               addr54:
               return;
            }
            §§goto(addr50);
         }
         §§goto(addr33);
      }
      
      protected function §<0§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§94§ = null;
         if(_loc4_)
         {
            this.§5b§ = §!,§;
            if(!(_loc5_ && _loc3_))
            {
               this.§>!;§ = §]"§;
               if(!(_loc5_ && this))
               {
                  if(this.§2!A§.length > 0)
                  {
                     if(_loc4_ || param2)
                     {
                        _loc3_ = this.§2!A§[this.§3!@§];
                        addr60:
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              return;
                           }
                           addr67:
                        }
                        this.mDragging = false;
                        loop4:
                        while(true)
                        {
                           this.§9!d§ = false;
                           loop5:
                           while(true)
                           {
                              this.§"_§ = new Date().time;
                              while(true)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue loop5;
                                 }
                                 addr169:
                                 while(true)
                                 {
                                    this.§=!V§.§+!b§(_loc3_,param1,param2);
                                    loop1:
                                    while(true)
                                    {
                                       this.§%!e§(this.§3!@§,_loc3_.§;1§ > 0);
                                       loop2:
                                       while(true)
                                       {
                                          this.§6!7§();
                                          loop3:
                                          while(true)
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      if(this.§3!@§ >= this.§2!A§.length)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            this.§%&§(§5H§);
                                                            break;
                                                         }
                                                         continue loop3;
                                                      }
                                                      this.§%&§(§8!M§);
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr68:
                                                   return;
                                                   addr137:
                                                   addr119:
                                                }
                                                continue loop4;
                                             }
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    §§goto(addr169);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr60);
               }
               §§goto(addr137);
            }
            §§goto(addr67);
         }
         §§goto(addr119);
      }
      
      protected function §6!7§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!(_loc2_ && _loc2_))
         {
            §&M§.§6!#§("BirdShot" + _loc1_);
         }
      }
      
      public function §,R§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§3!@§);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(§§pop() >= this.§2!A§.length)
               {
                  if(_loc5_ && param1)
                  {
                     continue;
                  }
                  if(_loc5_ && this)
                  {
                     addr90:
                     if(_loc5_)
                     {
                        addr109:
                        this.§2!A§[_loc4_].update(param1,true,param2);
                        addr117:
                     }
                     _loc4_++;
                     continue;
                  }
                  if(!(_loc5_ && _loc3_))
                  {
                     break;
                  }
                  §§goto(addr117);
               }
               else
               {
                  addr97:
                  if(this.mSlingShotState != §-!U§)
                  {
                     this.§2!A§[_loc4_].update(param1,false,param2);
                     §§goto(addr90);
                  }
                  §§goto(addr109);
               }
            }
            §§goto(addr97);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§94§ = null;
         var _loc2_:* = 0;
         if(!(_loc6_ && _loc1_))
         {
            this.mDragging = false;
            loop0:
            while(true)
            {
               addr49:
               while(true)
               {
                  this.§7!0§();
                  continue loop0;
               }
            }
         }
         while(this.§!!_§ >= this.§2!A§.length)
         {
            if(_loc5_ || _loc2_)
            {
               return false;
            }
            if(_loc5_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr49);
            }
            §§goto(addr52);
         }
         _loc1_ = this.§2!A§[this.§!!_§];
         if(_loc5_)
         {
            §§push(§`>§.§<!>§(_loc1_.name).score);
            if(!(_loc6_ && _loc1_))
            {
               §§push(int(§§pop()));
            }
            _loc2_ = §§pop();
            loop4:
            while(true)
            {
               addr100:
               while(true)
               {
                  §§push(this.§=!V§);
                  §§push(_loc2_);
                  §§push(§ !;§.§<!A§);
                  §§push(true);
                  §§push(_loc1_.x);
                  §§push(_loc1_.y);
                  if(!_loc6_)
                  {
                     §§push(3);
                     if(!_loc6_)
                     {
                        addr117:
                        §§push(§§pop() - §§pop());
                        §§push(§!U§.§03§(_loc1_.name));
                     }
                     §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     continue loop4;
                  }
                  §§goto(addr117);
               }
            }
         }
         return true;
      }
      
      public function §`!_§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§94§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§2!A§)
         {
            if(_loc5_ || _loc2_)
            {
               §§push(_loc1_);
               if(!(_loc6_ && _loc1_))
               {
                  §§push(int(§§pop() + §`>§.§<!>§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §^$§() : int
      {
         return this.§8v§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§3`§);
            loop0:
            while(true)
            {
               §§push(0);
               addr227:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     addr27:
                     return;
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§3`§);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§3`§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr164);
      }
      
      public function §<!H§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         loop0:
         while(true)
         {
            §§push(this.§=!V§.objects.§7J§(this.§ !&§,this.§0P§));
            while(true)
            {
               §§push(int(§§pop()));
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
                              this.applyGravity(0.1);
                              loop6:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() - 1);
                                       if(!_loc4_)
                                       {
                                          addr76:
                                          if(§§pop() > §§pop())
                                          {
                                             continue loop0;
                                          }
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             this.§3`§ = -1;
                                             continue loop6;
                                             addr104:
                                             while(true)
                                             {
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                    if(_loc4_ || _loc1_)
                                    {
                                       _loc1_ = §§pop();
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                           §§goto(addr104);
                        }
                     }
                  }
               }
               if(_loc3_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr76);
               §§push(0);
            }
         }
      }
      
      public function §+!+§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§;=§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr79:
               while(true)
               {
                  §§push(-§§pop());
                  addr80:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.mSlingShotState == STATE_BIRD_IS_READY);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop4:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           §§push(true);
                        }
                        else
                        {
                           if(_loc3_ || _loc3_)
                           {
                              while(true)
                              {
                                 addr25:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break loop4;
                                       }
                                       addr104:
                                       addr55:
                                       while(!(_loc2_ && this))
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                       }
                                    }
                                    §§goto(addr79);
                                 }
                              }
                              addr97:
                           }
                           while(true)
                           {
                              §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr55);
                              §§push(Boolean(§§pop()));
                           }
                        }
                        addr79:
                        return §§pop();
                     }
                     §§goto(addr25);
                  }
                  return §§pop();
                  addr69:
               }
               §§goto(addr104);
            }
         }
         §§goto(addr97);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.mSlingShotState == STATE_BIRD_IS_READY);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr44:
                     §§pop();
                     §§push(this.§9A§);
                     §§push(this.§0!O§);
                     if(_loc2_)
                     {
                        §§push(§§pop() * §;&§);
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
         if(_loc3_)
         {
            this.mDragging = false;
            if(!_loc2_)
            {
               this.§%&§(STATE_BIRD_IS_READY);
            }
         }
         var _loc1_:§94§ = this.§2!A§[this.§3!@§];
         if(_loc3_)
         {
            _loc1_.§6_§(§!k§.§7b§);
         }
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.mDragging = true;
         }
         var _loc1_:§94§ = this.§2!A§[this.§3!@§];
         if(!_loc2_)
         {
            _loc1_.§6_§(§!k§.§]!§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9!d§ = true;
         }
      }
      
      protected function §%!e§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§94§ = null;
         if(_loc4_ || this)
         {
            if(param1 < 0)
            {
               if(!_loc5_)
               {
                  §§goto(addr31);
               }
            }
            if(this.§2!A§[param1])
            {
               if(!(_loc5_ && this))
               {
                  _loc3_ = this.§2!A§[param1];
                  if(!(_loc5_ && this))
                  {
                     this.§=U§.removeChild(_loc3_.sprite);
                     loop0:
                     while(true)
                     {
                        if(param2)
                        {
                           while(true)
                           {
                              this.§;!c§(this.§2!A§[param1]);
                              addr107:
                              while(!_loc5_)
                              {
                              }
                              continue loop0;
                           }
                           addr101:
                        }
                        addr92:
                        while(true)
                        {
                           _loc3_.dispose();
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 this.§2!A§[param1] = null;
                                 if(!(_loc4_ || this))
                                 {
                                    continue;
                                 }
                                 if(_loc5_ && param1)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr101);
                              }
                           }
                           §§goto(addr107);
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr92);
                  }
                  addr126:
                  this.§2!A§.splice(param1,1);
               }
               return;
            }
            §§goto(addr126);
         }
         addr31:
      }
      
      public function §;!c§(param1:§94§) : void
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
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(_loc10_)
               {
                  if(!(_loc9_ && param1))
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        if(_loc10_)
                        {
                           §§push(this.§=!V§);
                           if(_loc10_ || _loc3_)
                           {
                              §§push(§§pop().particles);
                              if(!(_loc9_ && this))
                              {
                                 §§push(§!U§.§5!Y§);
                                 if(!_loc9_)
                                 {
                                    §§push(§?F§.§<G§);
                                    if(_loc10_)
                                    {
                                       §§push(§!U§.§"R§);
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(param1.x);
                                          if(_loc10_)
                                          {
                                             §§push(param1.y);
                                             if(!_loc9_)
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   §§push(1000);
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      §§push("");
                                                      if(!_loc9_)
                                                      {
                                                         §§push(0);
                                                         if(_loc10_)
                                                         {
                                                            §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                            addr132:
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr167:
                                                         §§push(§!U§.§9Z§(param1.name));
                                                      }
                                                      §§push(_loc2_);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() * Math.cos(_loc6_));
                                                      }
                                                      §§push(_loc2_);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            addr189:
                                                            §§push(§§pop() * Math.sin(_loc6_));
                                                         }
                                                         §§push(5);
                                                         §§push(_loc2_);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() * 20);
                                                         }
                                                         §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                         _loc5_++;
                                                         continue;
                                                         addr200:
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   else
                                                   {
                                                      addr166:
                                                      §§push("");
                                                   }
                                                   §§goto(addr167);
                                                }
                                                else
                                                {
                                                   addr165:
                                                   §§push(§§pop() + _loc8_);
                                                   §§push(1500);
                                                }
                                                §§goto(addr166);
                                             }
                                             §§goto(addr165);
                                          }
                                          else
                                          {
                                             addr161:
                                             §§push(param1.y);
                                          }
                                          §§goto(addr165);
                                       }
                                       else
                                       {
                                          addr148:
                                          §§push(param1.x);
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             §§push(_loc7_);
                                             if(!_loc9_)
                                             {
                                                §§goto(addr161);
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr165);
                                          }
                                       }
                                       §§goto(addr161);
                                    }
                                    else
                                    {
                                       addr146:
                                       §§push(§!U§.§"R§);
                                    }
                                    §§goto(addr148);
                                 }
                                 else
                                 {
                                    addr144:
                                    §§push(§?F§.§<G§);
                                 }
                                 §§goto(addr146);
                              }
                              else
                              {
                                 addr142:
                                 §§push(§!U§.§&§);
                              }
                              §§goto(addr144);
                           }
                           else
                           {
                              addr141:
                              §§push(§§pop().particles);
                           }
                           §§goto(addr142);
                        }
                        else
                        {
                           loop1:
                           while(true)
                           {
                              §§push(param1.sprite);
                              if(_loc10_ || param1)
                              {
                                 §§push(-§§pop().height);
                                 if(_loc10_ || _loc3_)
                                 {
                                    if(!_loc9_)
                                    {
                                       if(_loc10_)
                                       {
                                          §§push(§^!2§.§3!S§);
                                          if(!_loc9_)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc10_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc9_ && this))
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  addr270:
                                                                  if(!_loc9_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        if(_loc10_ || _loc2_)
                                                                        {
                                                                           §§push(Math.random() * -_loc8_);
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              §§push(2);
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 addr308:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          addr320:
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(_loc10_ || param1)
                                                                                                   {
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         addr351:
                                                                                                         _loc8_ = Number(§§pop());
                                                                                                         while(_loc9_)
                                                                                                         {
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.sprite);
                                                                                                               addr358:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(-§§pop().width);
                                                                                                                  addr360:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(§^!2§.§3!S§);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr368:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr369:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    addr370:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc10_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(Math.random() * -_loc7_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(2);
                                                                                                                                             addr383:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                addr384:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   addr385:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr386:
                                                                                                                                                      while(_loc9_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr382:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          loop6:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             addr417:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc4_ = §§pop();
                                                                                                                                                continue loop6;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr406:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(180 / Math.PI);
                                                                                                                                          addr422:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr367:
                                                                                                                        }
                                                                                                                        §§goto(addr369);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr424:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr141);
                                                                                                         §§push(this.§=!V§);
                                                                                                         addr352:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Math.random() * (720 / _loc3_));
                                                                                                            addr404:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr405:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr398:
                                                                                                      }
                                                                                                      §§goto(addr406);
                                                                                                   }
                                                                                                   §§goto(addr405);
                                                                                                }
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             §§goto(addr367);
                                                                                          }
                                                                                          §§goto(addr370);
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 §§goto(addr382);
                                                                              }
                                                                              §§goto(addr383);
                                                                           }
                                                                           §§goto(addr308);
                                                                        }
                                                                        §§goto(addr368);
                                                                     }
                                                                     §§goto(addr351);
                                                                  }
                                                                  §§goto(addr369);
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                            §§goto(addr385);
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                      §§goto(addr351);
                                                   }
                                                   §§goto(addr404);
                                                }
                                                §§goto(addr422);
                                             }
                                             §§goto(addr384);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr424);
                                    }
                                    §§goto(addr386);
                                 }
                                 §§goto(addr320);
                              }
                              §§goto(addr358);
                           }
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr352);
                  }
                  §§goto(addr200);
               }
               §§goto(addr132);
            }
            else
            {
               §§push(_loc4_);
            }
            §§goto(addr398);
         }
      }
      
      public function §4!P§(param1:§94§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§%!e§(this.§2!A§.indexOf(param1));
         }
      }
      
      public function §^!K§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§94§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§94§ = null;
         var _loc1_:* = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc6_ && this))
            {
               if(§§pop() >= this.§2!A§.length - 1)
               {
                  if(_loc7_ || _loc1_)
                  {
                     addr253:
                     if(this.§=U§.numChildren > 0)
                     {
                        §§push(this.§=U§);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§pop().removeChildAt(0);
                           if(!(_loc6_ && _loc1_))
                           {
                              §§goto(addr253);
                           }
                           addr260:
                           §§push(0);
                           if(_loc7_)
                           {
                              break;
                           }
                           addr306:
                           if(§§pop() < this.§2!A§.length)
                           {
                              _loc2_ = this.§2!A§[_loc1_];
                              if(_loc7_ || _loc1_)
                              {
                                 this.§=U§.addChildAt(_loc2_.sprite,0);
                                 if(_loc7_ || _loc2_)
                                 {
                                    addr304:
                                    _loc1_++;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr306);
                                 }
                                 addr310:
                                 return;
                                 addr305:
                              }
                              §§goto(addr304);
                           }
                           §§goto(addr310);
                        }
                        §§goto(addr253);
                     }
                     addr233:
                     if(!_loc6_)
                     {
                        §§goto(addr260);
                     }
                     §§goto(addr310);
                     addr233:
                  }
                  §§goto(addr260);
               }
               else
               {
                  §§push(Number(Math.sqrt((this.§"!d§ - this.§2!A§[_loc1_].x) * (this.§"!d§ - this.§2!A§[_loc1_].x) + (this.§,!W§ - this.§2!A§[_loc1_].y) * (this.§,!W§ - this.§2!A§[_loc1_].y))));
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc3_ = §§pop();
                     if(!(_loc6_ && _loc1_))
                     {
                        §§push(Number(Math.sqrt((this.§"!d§ - this.§2!A§[_loc1_ + 1].x) * (this.§"!d§ - this.§2!A§[_loc1_ + 1].x) + (this.§,!W§ - this.§2!A§[_loc1_ + 1].y) * (this.§,!W§ - this.§2!A§[_loc1_ + 1].y))));
                        if(_loc7_ || _loc3_)
                        {
                           addr137:
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              _loc4_ = §§pop();
                              addr141:
                              §§push(_loc3_);
                           }
                           if(§§pop() >= §§pop())
                           {
                              continue;
                           }
                           if(_loc7_ || this)
                           {
                              _loc5_ = this.§2!A§[_loc1_];
                              if(_loc7_)
                              {
                                 this.§2!A§.splice(_loc1_,1);
                                 loop1:
                                 while(true)
                                 {
                                    addr189:
                                    while(true)
                                    {
                                       this.§2!A§.splice(_loc1_ + 1,0,_loc5_);
                                       continue loop1;
                                    }
                                 }
                                 addr204:
                              }
                              while(true)
                              {
                                 _loc1_ = int(Math.max(-1,_loc1_ - 2));
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 if(_loc7_ || _loc2_)
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
                              continue;
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr253);
                  }
                  §§goto(addr137);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(!_loc6_)
         {
            §§goto(addr305);
         }
         §§goto(addr310);
      }
      
      public function §=!B§(param1:Number, param2:Number) : §94§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= this.§2!A§.length)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(!(_loc5_ && this))
               {
                  if(!_loc5_)
                  {
                     return null;
                  }
                  addr67:
                  if(this.§2!A§[_loc3_].isInCoordinates(param1,param2))
                  {
                     break;
                  }
               }
            }
            else if(this.§2!A§[_loc3_])
            {
               §§goto(addr67);
            }
            _loc3_++;
         }
         while(_loc4_ || _loc3_);
         
         return this.§2!A§[_loc3_];
      }
      
      public function §`7§(param1:Number, param2:Number) : §9§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§"!d§);
               if(!_loc4_)
               {
                  §§push(this.§0!O§);
                  loop1:
                  while(true)
                  {
                     §§push(4);
                     addr212:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr213:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                        }
                     }
                     loop11:
                     while(true)
                     {
                        if(!(_loc3_ || param1))
                        {
                           continue loop1;
                        }
                        §§push(4);
                        loop12:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              §§push(§§pop() / §§pop());
                              loop13:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr179:
                                 while(true)
                                 {
                                    §§push(§§pop() <= §§pop());
                                    loop15:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop17:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr193:
                                                         while(true)
                                                         {
                                                            §§push(param2);
                                                            addr113:
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(this.§,!W§);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(this.§0!O§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(4);
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(_loc4_ && this)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               addr137:
                                                               while(_loc3_)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                               }
                                                               addr214:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                                  break loop15;
                                                               }
                                                               addr160:
                                                               while(true)
                                                               {
                                                                  §§push(this.§,!W§);
                                                                  if(!(_loc3_ || param2))
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr163:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§"!d§);
                                                                     addr165:
                                                                     while(true)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr192:
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop17;
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr217);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr216);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr212);
                           }
                        }
                        §§goto(addr213);
                     }
                  }
               }
               §§goto(addr214);
            }
         }
         §§goto(addr214);
      }
      
      public function §,A§(param1:§&!E§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§94§ = null;
         var _loc4_:§3-§ = null;
         if(!(_loc5_ && _loc2_))
         {
            param1.§84§ = this.§"!d§;
            if(_loc6_)
            {
               addr36:
               param1.§6!`§ = this.§,!W§;
            }
            var _loc2_:* = Number(0);
            loop0:
            while(_loc2_ < this.§2!A§.length)
            {
               _loc3_ = this.§2!A§[_loc2_];
               (_loc4_ = new §3-§()).x = _loc3_.x;
               if(_loc6_)
               {
                  _loc4_.y = _loc3_.y;
                  loop1:
                  while(true)
                  {
                     _loc4_.id = _loc3_.name;
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           param1.§>M§(_loc4_);
                           do
                           {
                              §§push(_loc2_);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() + 1);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              _loc2_ = §§pop();
                           }
                           while(!(_loc6_ || param1));
                           
                           if(!(_loc6_ || _loc2_))
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              while(false)
                              {
                                 continue loop3;
                              }
                              continue loop0;
                              addr107:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr107);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §^=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§2!A§.length > 0)
         {
            this.§4!P§(this.§2!A§[0]);
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §'g§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(!(_loc6_ && this))
            {
               if(§§pop() >= this.§2!A§.length)
               {
                  if(!_loc6_)
                  {
                     if(!(_loc5_ || param1))
                     {
                        continue loop0;
                     }
                     if(!_loc6_)
                     {
                        §§push(this.§"!d§);
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
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       addr163:
                                       loop16:
                                       while(true)
                                       {
                                          §§push(this.§"!d§);
                                          loop17:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop2;
                                             }
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() < param2.x);
                                                while(true)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(this.§,!W§);
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop() > param1.y);
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc5_ || param2))
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr45:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             _loc3_.push(this);
                                                                                          }
                                                                                          if(_loc6_ && this)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr196:
                                                                                             _loc3_.push(this.§2!A§[_loc4_]);
                                                                                             §§push(_loc4_);
                                                                                             break loop1;
                                                                                             addr202:
                                                                                          }
                                                                                       }
                                                                                       addr24:
                                                                                       return _loc3_;
                                                                                    }
                                                                                    addr43:
                                                                                 }
                                                                              }
                                                                              continue loop4;
                                                                              addr76:
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop11;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop16;
                                                                        addr88:
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr76);
                                                      }
                                                   }
                                                }
                                                addr126:
                                             }
                                             §§goto(addr168);
                                             §§push(Number(§§pop()));
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr126);
                              }
                           }
                        }
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr163);
               }
               else if(this.§2!A§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr196);
               }
               §§goto(addr196);
            }
            §§goto(addr167);
         }
      }
      
      public function §1<§() : Array
      {
         return [this.§%@§,this.§ !§];
      }
      
      public function §%![§(param1:String, param2:Number, param3:Number) : §94§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§94§ = this.addSlingshotObject(param1,param2,param3);
         if(!_loc5_)
         {
            this.§^!K§();
         }
         return _loc4_;
      }
      
      public function §%!W§() : Number
      {
         return this.§2!A§.length;
      }
   }
}
