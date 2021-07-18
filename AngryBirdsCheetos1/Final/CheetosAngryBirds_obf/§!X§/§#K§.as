package §!X§
{
   import § !G§.§ #§;
   import § `§.§6!=§;
   import § `§.§^1§;
   import §%J§.§#^§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §]!B§.Texture;
   import §]!F§.§&!]§;
   import §]@§.§9!<§;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import §`!K§.§!!>§;
   import §default§.§!A§;
   import §default§.§%<§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#K§
   {
      
      public static const §8! §:int = 0;
      
      public static const §?7§:int = 1;
      
      public static const §-I§:int = 2;
      
      public static const § !^§:int = 3;
      
      public static const § !P§:int = 5;
      
      public static const §60§:int = 3151368;
      
      protected static const §@!5§:int = 8;
      
      protected static const §2%§:int = 0;
      
      public static const §3u§:Number = 46.25;
      
      public static const § true§:Number = 52.5;
      
      protected static const §?J§:Number = -0.7;
      
      protected static const §4!Z§:Number = 0;
      
      protected static var §;F§:Texture;
      
      public static const §1L§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8! § = 0;
            while(true)
            {
               §?7§ = 1;
               addr142:
               addr76:
               while(true)
               {
                  §-I§ = 2;
                  addr137:
                  while(true)
                  {
                     § !^§ = 3;
                  }
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §?J§ = -0.7;
               loop10:
               while(!_loc1_)
               {
                  §4!Z§ = 0;
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue loop10;
                     }
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr142);
                           }
                           while(true)
                           {
                              §60§ = 3151368;
                              loop5:
                              while(true)
                              {
                                 §@!5§ = 8;
                                 while(true)
                                 {
                                    §2%§ = 0;
                                    addr95:
                                    while(_loc2_ || _loc1_)
                                    {
                                       §3u§ = 46.25;
                                       while(_loc2_)
                                       {
                                          § true§ = 52.5;
                                          break loop10;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           addr117:
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr137);
               }
               loop9:
               while(true)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr76);
                  }
                  addr122:
                  while(true)
                  {
                     § !P§ = 5;
                     §§goto(addr117);
                     continue loop9;
                  }
               }
               §§goto(addr142);
            }
         }
         §§goto(addr122);
      }
      
      public var §>`§:§86§;
      
      public var §<!Y§:Number;
      
      public var § l§:Number;
      
      public var §<!?§:Number;
      
      protected var §?!M§:Number;
      
      protected var § !>§:Number;
      
      protected var §>!,§:Number;
      
      protected var § <§:Number;
      
      public var §5H§:Number;
      
      public var §0!I§:Boolean = false;
      
      protected var §0![§:Number;
      
      public var §8k§:Vector.<§9k§>;
      
      public var §'J§:int;
      
      public var §=O§:int;
      
      public var §^!,§:Number;
      
      public var §3,§:Sprite;
      
      public var §3!L§:int = 0;
      
      public var §?g§:Number = 0;
      
      public var §1!§:Array;
      
      public var §?&§:Array;
      
      public var mSlingShotState:int;
      
      public var §,!G§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §%R§:Boolean = false;
      
      public var §-!-§:Number;
      
      protected var §?!N§:Sprite;
      
      protected var §#a§:§9!<§;
      
      protected var §8!P§:§9!<§;
      
      protected var §-!"§:Sprite;
      
      protected var §0?§:Sprite;
      
      protected var §7l§:Sprite;
      
      protected var §'!_§:§`!C§;
      
      protected var §7'§:§`!C§;
      
      private var §2"§:Number = 0;
      
      private var §6D§:int = 0;
      
      protected var §%@§:Number = -0.7;
      
      protected var §]e§:Number = 0;
      
      public function §#K§(param1:§86§, param2:§&!]§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§#^§ = null;
         if(_loc6_ || param1)
         {
            this.§8k§ = new Vector.<§9k§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§>`§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§?!N§ = param3;
                     loop3:
                     while(true)
                     {
                        if(!param2)
                        {
                           § #§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                        }
                        continue loop2;
                        addr46:
                        if(!(_loc6_ || this))
                        {
                           continue;
                        }
                        if(false)
                        {
                           loop6:
                           while(true)
                           {
                              this.§+i§();
                              loop7:
                              while(!_loc7_)
                              {
                                 while(true)
                                 {
                                    _loc4_ = 0;
                                    if(!(_loc6_ || this))
                                    {
                                       continue loop7;
                                    }
                                    addr39:
                                    if(!(_loc6_ || param2))
                                    {
                                       while(!_loc7_)
                                       {
                                          continue loop6;
                                          §§goto(addr39);
                                       }
                                       continue loop0;
                                       addr84:
                                    }
                                    §§goto(addr46);
                                 }
                                 loop19:
                                 while(true)
                                 {
                                    §§push(§ #§);
                                    §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§<!Y§);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + " ");
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + this.§ l§);
                                       }
                                    }
                                    §§pop().log(§§pop());
                                    addr285:
                                    loop20:
                                    while(true)
                                    {
                                       this.setSlingShotState(§ !^§);
                                       loop21:
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                this.§-!-§ = 0;
                                                loop14:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop19;
                                                   }
                                                   this.§;!P§();
                                                   while(!_loc7_)
                                                   {
                                                      this.update(0,true);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop21;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               this.§9§();
                                                               while(!_loc7_)
                                                               {
                                                                  this.§,!9§(0);
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                               }
                                                               continue loop14;
                                                            }
                                                            addr289:
                                                            while(true)
                                                            {
                                                               if(this.§8k§.length > 0)
                                                               {
                                                                  this.setSlingShotState(§8! §);
                                                               }
                                                               continue loop19;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr233:
                                                            while(true)
                                                            {
                                                               continue loop13;
                                                            }
                                                            addr233:
                                                         }
                                                      }
                                                      continue loop21;
                                                      if(_loc6_ || this)
                                                      {
                                                         if(_loc6_ || param3)
                                                         {
                                                            break loop13;
                                                         }
                                                         break loop3;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop12;
                                                   }
                                                }
                                                continue loop20;
                                             }
                                             return;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop2;
                           }
                        }
                        while(_loc4_ < param2.§3]§)
                        {
                           _loc5_ = param2.§!!J§(_loc4_);
                           if(_loc6_ || param1)
                           {
                              this.addSlingshotObject(_loc5_.id,_loc5_.x,_loc5_.y);
                              if(_loc6_)
                              {
                                 _loc4_++;
                              }
                           }
                        }
                        if(_loc6_ || param2)
                        {
                           this.§6D§ = this.§=!^§();
                           if(!(_loc7_ && param1))
                           {
                              this.§'J§ = 0;
                              §§goto(addr289);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr260);
                     }
                     if(!_loc7_)
                     {
                        this.setSlingShotState(§ !^§);
                        §§goto(addr233);
                     }
                     §§goto(addr285);
                  }
                  if(_loc7_ && param3)
                  {
                     continue;
                  }
                  this.setPosition(param2.§^!E§,param2.§0!;§);
                  §§goto(addr84);
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!N§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§2"§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§'J§ < this.§8k§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§8k§.length > 0)
            {
               this.§'2§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§8k§ = null;
               loop2:
               while(true)
               {
                  §§push(this.§?!N§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§?!N§);
                           addr95:
                           while(true)
                           {
                              §§pop().dispose();
                              loop9:
                              while(true)
                              {
                                 this.§?!N§ = null;
                                 addr82:
                                 addr84:
                                 while(!_loc1_)
                                 {
                                    continue loop9;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        addr93:
                     }
                     while(true)
                     {
                        this.§3,§ = null;
                        loop5:
                        while(!(_loc2_ && _loc2_))
                        {
                           if(_loc1_)
                           {
                              this.§1!§ = null;
                              while(true)
                              {
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue loop5;
                                 }
                                 if(_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr93);
                                 addr63:
                                 this.§?&§ = null;
                                 if(_loc1_ || this)
                                 {
                                    return;
                                 }
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                        §§goto(addr82);
                        §§goto(addr84);
                     }
                     continue loop1;
                  }
                  §§goto(addr95);
               }
            }
         }
      }
      
      public function §>l§(param1:String, param2:Number, param3:Number, param4:int = -1) : §9k§
      {
         var _loc5_:§9k§;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,param4)).§'T§();
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §9k§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§9k§ = new §9k§(this,new Sprite(),param1,param2,param3);
         if(!(_loc7_ && param2))
         {
            if(param4 >= 0)
            {
               this.§8k§.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  if(!(_loc7_ && this))
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                     addr95:
                     while(true)
                     {
                        this.§8k§.push(_loc5_);
                     }
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return _loc5_;
               addr62:
            }
            §§goto(addr95);
         }
         §§goto(addr62);
      }
      
      public function setSlingShotState(param1:int) : void
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
                  §§push(§8! §);
                  addr310:
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     while(true)
                     {
                        §§push(§?7§);
                        addr287:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           continue loop1;
                        }
                        addr288:
                        addr290:
                        addr280:
                        this.§^c§();
                        this.§^!,§ = 0;
                        addr236:
                        loop11:
                        while(true)
                        {
                           this.mDragging = false;
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc2_ || param1)
                                    {
                                       return;
                                    }
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break loop11;
                                          }
                                          §§goto(addr288);
                                       }
                                       addr275:
                                       this.§%R§ = false;
                                    }
                                    §§goto(addr290);
                                 }
                                 else
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       this.mDragging = false;
                                       addr177:
                                       loop15:
                                       for(; _loc2_ || _loc2_; continue loop12)
                                       {
                                          if(!_loc3_)
                                          {
                                             this.§%R§ = false;
                                             while(_loc2_ || _loc3_)
                                             {
                                                this.§^c§();
                                                loop17:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      this.§8k§[this.§'J§].setPosition(this.§>!,§ - this.§8k§[this.§'J§].radius * Math.cos(this.§?g§ / (180 / Math.PI)),this.§ <§ + this.§8k§[this.§'J§].radius * Math.sin(this.§?g§ / (180 / Math.PI)));
                                                      break;
                                                   }
                                                   addr162:
                                                   while(_loc2_ || _loc2_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(this.mDragging)
                                                         {
                                                            continue loop15;
                                                         }
                                                         this.§^c§();
                                                         continue loop17;
                                                      }
                                                      addr313:
                                                      addr295:
                                                      this.§^!,§ = 1000;
                                                      continue loop11;
                                                   }
                                                   §§goto(addr280);
                                                }
                                                continue loop11;
                                                if(_loc3_ && this)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc3_ && this))
                                                {
                                                   §§goto(addr64);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break loop2;
                                                      }
                                                      this.§^c§();
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            this.§^!,§ = 2000;
                                                            break loop15;
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr217:
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop11;
                                                §§goto(addr121);
                                             }
                                             addr121:
                                             addr227:
                                          }
                                          §§goto(addr221);
                                       }
                                       if(!(_loc3_ && param1))
                                       {
                                          continue loop11;
                                       }
                                       addr258:
                                       this.§^!,§ = 10000;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(!(_loc2_ || param1))
                                       {
                                          break;
                                       }
                                       §§goto(addr275);
                                    }
                                    §§goto(addr290);
                                 }
                                 §§goto(addr295);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr46);
                        }
                        while(true)
                        {
                           this.§^c§();
                           §§goto(addr227);
                        }
                     }
                  }
                  this.§^c§();
                  §§goto(addr313);
               }
            }
         }
         §§goto(addr236);
      }
      
      public function get §5D§() : §86§
      {
         return this.§>`§;
      }
      
      public function §5#§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mSlingShotState == § !^§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr53:
                     §§pop();
                     return this.§^!,§ <= 0;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      private function §+i§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§^1§ = this.§>`§.§true§.§>f§("SLINGSHOT");
         var _loc2_:§6!=§ = _loc1_.getFrame(0);
         var _loc3_:§6!=§ = _loc1_.getFrame(1);
         if(!_loc4_)
         {
            this.§'!_§ = new §`!C§(_loc2_.texture);
            while(true)
            {
               §§push(this.§'!_§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr259:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr188);
      }
      
      public function §>!L§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc3_ || _loc2_)
         {
            this.§?!M§ = this.§<!Y§;
            loop0:
            while(true)
            {
               addr59:
               while(true)
               {
                  this.§ !>§ = this.§ l§;
                  continue loop0;
               }
            }
            addr79:
         }
         while(true)
         {
            this.§0![§ = §!j§.§"!§;
            if(_loc2_ && _loc3_)
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
               §§goto(addr79);
            }
            §§goto(addr59);
         }
         _loc1_ = null;
      }
      
      protected function §3!Y§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(_loc3_)
         {
            if(!§;F§)
            {
               if(_loc3_)
               {
                  addr25:
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(!(_loc4_ && _loc1_))
                  {
                     §;F§ = this.§>`§.§=]§.§1u§(_loc2_);
                     addr47:
                     this.§7l§ = new Sprite();
                  }
                  §§goto(addr47);
               }
               var _loc1_:§`!C§ = new §`!C§(§;F§);
               if(!_loc4_)
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
                           this.§7l§.addChild(_loc1_);
                           loop3:
                           while(true)
                           {
                              this.§-!"§ = new Sprite();
                              while(!_loc4_)
                              {
                                 continue loop1;
                                 loop7:
                                 for(; _loc3_ || this; if(!(_loc4_ && _loc2_))
                                 {
                                    addr83:
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          this.§-!"§.addChild(this.§#a§);
                                          §§goto(addr140);
                                          §§goto(addr83);
                                       }
                                       addr149:
                                    }
                                    return;
                                 })
                                 {
                                    this.§8!P§ = new §9!<§(2,2,§60§);
                                    while(true)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       addr140:
                                       addr120:
                                       while(true)
                                       {
                                          this.§0?§ = new Sprite();
                                          continue loop7;
                                       }
                                       this.§0?§.addChild(this.§8!P§);
                                       if(_loc3_ || _loc3_)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               §§goto(addr149);
            }
            §§goto(addr47);
         }
         §§goto(addr25);
      }
      
      public function §,!9§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§ <§);
         if(_loc6_)
         {
            §§push(§§pop() / §86§.§7!4§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§>!,§);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() / §86§.§7!4§);
            if(_loc6_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(3.5);
         if(!_loc7_)
         {
            §§push(8);
            §§push(this.§0![§);
            if(_loc6_ || _loc2_)
            {
               §§push(this.§5H§);
               if(!_loc7_)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc7_)
                  {
                     addr70:
                     §§push(§§pop() / this.§0![§);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(_loc6_ || _loc3_)
                  {
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  if(_loc6_)
                  {
                     §§push(this.§7l§);
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
                              §§push(this.§7l§);
                              loop3:
                              for(; _loc6_; §§push(this.§7l§),if(_loc7_)
                              {
                                 continue;
                              },§§push(this.§?g§),if(_loc6_)
                              {
                                 §§push(-§§pop());
                                 if(_loc6_)
                                 {
                                    addr448:
                                    if(!_loc7_)
                                    {
                                       if(_loc7_ && this)
                                       {
                                          continue loop1;
                                       }
                                       addr462:
                                       §§pop().rotation = §§pop() / (180 / Math.PI);
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§push(this.§'!_§);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.§<!Y§);
                                             if(_loc6_)
                                             {
                                                §§push(§86§.§7!4§);
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                }
                                                addr431:
                                             }
                                             addr432:
                                             while(true)
                                             {
                                                §§push(3);
                                                addr433:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr434:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr585);
                                    }
                                    §§goto(addr477);
                                 }
                                 §§goto(addr462);
                              },§§goto(addr448))
                              {
                                 §§push(_loc2_);
                                 while(true)
                                 {
                                    §§pop().y = §§pop();
                                    addr478:
                                    addr585:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    addr585:
                                    §§push(this.§#a§);
                                    §§push(-this.§#a§.height);
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§push(§§pop() / 2);
                                    }
                                    addr558:
                                    §§pop().y = §§pop();
                                    this.§,!G§ = false;
                                    if(!(_loc7_ && param1))
                                    {
                                       if(_loc7_ && _loc2_)
                                       {
                                          §§goto(addr585);
                                       }
                                       return;
                                       addr540:
                                    }
                                    §§goto(addr558);
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr118);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr80);
      }
      
      public function §9K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§8k§.length > 0)
            {
               this.§'2§(0,true);
               continue;
            }
            if(_loc2_)
            {
               this.§1f§();
            }
            loop1:
            while(true)
            {
               this.addSlingshotObject("BIRD_SARDINE",this.§<!Y§,this.§ l§);
               while(true)
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(!(_loc2_ || _loc1_))
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      protected function §1f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §!!>§.playSound("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.setSlingShotState(§ !P§);
         }
      }
      
      public function §^c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this.§?!M§);
            §§push(this.§ !>§);
            if(_loc2_)
            {
               §§push(this.§0![§);
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
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!_loc10_)
         {
            §§push(this.§>!,§);
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
                              while(true)
                              {
                                 §§push(this.§ <§);
                                 while(true)
                                 {
                                    §§push(param2);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!_loc10_)
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§5H§ = Math.sqrt((param2 - this.§ !>§) * (param2 - this.§ !>§) + (param1 - this.§?!M§) * (param1 - this.§?!M§));
                                                   while(true)
                                                   {
                                                      §§push(this.§5H§);
                                                      while(true)
                                                      {
                                                         §§push(this.§0![§);
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param3);
                                                                  while(!§§pop())
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§?!M§);
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§0![§);
                                                                           while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§?!M§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§5H§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() / §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1 = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§ !>§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§0![§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param2);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§ !>§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§5H§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 while(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       param2 = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§5H§ = this.§0![§;
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             loop47:
                                                                                                                                             for(; !(_loc10_ && param1); if(!(_loc9_ || this))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             },if(_loc9_)
                                                                                                                                             {
                                                                                                                                                this.§0!I§ = true;
                                                                                                                                                §§goto(addr327);
                                                                                                                                             },§§goto(addr1215))
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(param2);
                                                                                                                                                if(!(_loc10_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + this.§]e§);
                                                                                                                                                }
                                                                                                                                                §§pop().§ <§ = §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§?g§ = -160;
                                                                                                                                                   loop49:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         addr1346:
                                                                                                                                                         §§push(true);
                                                                                                                                                         break loop7;
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
                                                                                                                                                               while(!(_loc10_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(5);
                                                                                                                                                                  loop54:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     addr1105:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                        continue loop54;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || param2)
                                                                                                                                                         {
                                                                                                                                                            continue loop47;
                                                                                                                                                         }
                                                                                                                                                         continue loop49;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1215);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop25;
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
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr1284:
                                                                  this.§5H§ = Math.sqrt((this.§ <§ - this.§ !>§) * (this.§ <§ - this.§ !>§) + (this.§>!,§ - this.§?!M§) * (this.§>!,§ - this.§?!M§));
                                                                  §§goto(addr1311);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               this.§>!,§ = param1;
                                                               §§goto(addr1222);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr1346);
                                          }
                                          addr1344:
                                       }
                                       break;
                                    }
                                    return §§pop();
                                 }
                              }
                           }
                        }
                        §§goto(addr1344);
                     }
                  }
               }
            }
         }
         §§goto(addr1284);
      }
      
      protected function §%!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §!!>§.playSound("SlingshotStreched");
         }
      }
      
      public function applyGravity(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.§<!Y§);
            §§push(this.§ l§);
            if(_loc3_)
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
         if(!_loc6_)
         {
            §§push(§§pop() - this.§<!Y§);
            if(!(_loc6_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            this.§<!Y§ = param1;
         }
         §§push(param2);
         if(_loc7_ || param1)
         {
            §§push(§§pop() - this.§ l§);
            if(_loc7_ || param2)
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && param3))
            {
               this.§ l§ = param2;
               while(true)
               {
                  §§push(this);
                  §§push(this.§<!?§);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§<!?§ = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§ !>§);
                     if(!(_loc6_ && param2))
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§ !>§ = §§pop();
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§ <§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§ <§ = §§pop();
                        while(_loc7_)
                        {
                           continue loop1;
                           while(_loc7_ || this)
                           {
                              §§push(this);
                              §§push(this.§>!,§);
                              if(!(_loc6_ && param3))
                              {
                                 §§push(§§pop() + _loc4_);
                              }
                              §§pop().§>!,§ = §§pop();
                              loop5:
                              while(!(_loc6_ && param3))
                              {
                                 loop6:
                                 while(param3)
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop5;
                                       }
                                       this.§,!9§(0);
                                    }
                                    while(true)
                                    {
                                       break loop6;
                                    }
                                    return;
                                 }
                                 while(true)
                                 {
                                    this.§,!G§ = true;
                                    if(!(_loc7_ || param1))
                                    {
                                       continue;
                                    }
                                    §§goto(addr80);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr128);
         }
         §§goto(addr55);
      }
      
      public function §7!Y§() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§9k§ = null;
         _loc2_ = this.§8k§[this.§'J§];
         §§push(this.§5H§);
         if(_loc4_)
         {
            §§push(§§pop() / this.§0![§);
            if(_loc4_)
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && this))
            {
               if(_loc2_ != null)
               {
                  if(!_loc5_)
                  {
                     if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                     {
                        if(!(_loc5_ && this))
                        {
                           addr74:
                           §§push(§#K§.§ true§);
                           if(!(_loc5_ && this))
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_ || _loc3_)
                              {
                                 addr104:
                                 §§push(Number(§§pop()));
                                 if(!_loc5_)
                                 {
                                    addr107:
                                    _loc1_ = §§pop();
                                    addr108:
                                    §§push(_loc1_);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(§§pop() * _loc3_);
                                    }
                                 }
                                 addr91:
                              }
                              else
                              {
                                 addr96:
                                 §§push(Number(§§pop()));
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    §§goto(addr104);
                                 }
                              }
                              return §§pop();
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr108);
                     }
                     else
                     {
                        §§push(§#K§.§3u§);
                        if(_loc4_)
                        {
                           §§goto(addr96);
                        }
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr107);
         }
         §§goto(addr38);
      }
      
      public function §@!+§() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9k§ = null;
         if(!_loc3_)
         {
            if(this.§8k§.length <= this.§'J§)
            {
               return null;
            }
            if(!(_loc3_ && this))
            {
               _loc1_ = this.§8k§[this.§'J§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §#!5§() : Point
      {
         return new Point(this.§?!M§,this.§ !>§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§9k§ = null;
         if(_loc4_)
         {
            this.updateGroundControl(param1);
            loop0:
            while(true)
            {
               if(this.§,!G§)
               {
                  while(true)
                  {
                     this.§,!9§(param1);
                     addr94:
                     while(true)
                     {
                     }
                     addr47:
                     if(_loc4_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
               loop3:
               while(true)
               {
                  §§push(this);
                  §§push(this.§^!,§);
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§^!,§ = §§pop();
                  loop4:
                  while(true)
                  {
                     addr63:
                     loop5:
                     while(true)
                     {
                        if(this.§^!,§ < 0)
                        {
                           while(true)
                           {
                              this.§^!,§ = 0;
                              addr71:
                              while(true)
                              {
                              }
                           }
                           addr68:
                        }
                        while(true)
                        {
                           if(this.mSlingShotState == § !^§)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr68);
                              }
                              else
                              {
                                 addr41:
                                 if(_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    if(!_loc4_)
                                    {
                                       break loop5;
                                    }
                                    §§goto(addr47);
                                 }
                              }
                              §§goto(addr71);
                           }
                           else
                           {
                              this.§[r§(param1,param2);
                           }
                           §§goto(addr41);
                        }
                     }
                     continue loop3;
                  }
               }
            }
         }
         §§goto(addr360);
      }
      
      public function §9!B§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§9k§ = null;
         if(_loc6_)
         {
            if(this.§8k§.length > 0)
            {
               if(!(_loc7_ && this))
               {
                  _loc5_ = this.§8k§[this.§'J§];
                  addr50:
                  if(!_loc5_)
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr54);
                     }
                  }
                  _loc5_.setPosition(param1,param2);
                  do
                  {
                     this.§?!L§(param3,param4);
                  }
                  while(!_loc6_);
                  
                  return;
                  addr84:
               }
               addr54:
               return;
            }
            §§goto(addr50);
         }
         §§goto(addr84);
      }
      
      protected function §?!L§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§9k§ = null;
         if(!_loc4_)
         {
            this.§%@§ = §?J§;
            if(_loc5_ || _loc3_)
            {
               this.§]e§ = §4!Z§;
               if(!(_loc4_ && param2))
               {
                  if(this.§8k§.length > 0)
                  {
                     if(_loc5_)
                     {
                        _loc3_ = this.§8k§[this.§'J§];
                        addr56:
                        if(!_loc3_)
                        {
                           if(_loc5_ || param2)
                           {
                              return;
                           }
                        }
                        else
                        {
                           this.mDragging = false;
                        }
                        while(true)
                        {
                           this.§%R§ = false;
                           addr185:
                           while(true)
                           {
                              this.§2"§ = new Date().time;
                           }
                        }
                        addr189:
                     }
                     loop0:
                     while(true)
                     {
                        this.§>`§.§7_§(_loc3_,param1,param2);
                        loop1:
                        while(true)
                        {
                           this.§'2§(this.§'J§,_loc3_.§2v§ > 0);
                           loop2:
                           for(; !_loc4_; if(_loc5_ || this)
                           {
                              continue loop1;
                           })
                           {
                              while(true)
                              {
                                 this.§3!<§();
                                 do
                                 {
                                    if(this.§'J§ < this.§8k§.length)
                                    {
                                       this.setSlingShotState(§8! §);
                                       if(!(_loc5_ || _loc3_))
                                       {
                                          return;
                                       }
                                       addr139:
                                       addr74:
                                       addr139:
                                       if(!(_loc4_ && param2))
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 while(_loc4_);
                                 
                                 this.setSlingShotState(§ !^§);
                                 §§goto(addr139);
                              }
                              §§goto(addr74);
                           }
                           §§goto(addr185);
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                           if(!_loc4_)
                           {
                              §§goto(addr126);
                           }
                           else
                           {
                              §§goto(addr189);
                           }
                        }
                     }
                  }
                  §§goto(addr56);
               }
               §§goto(addr139);
            }
            §§goto(addr185);
         }
         §§goto(addr155);
      }
      
      protected function §3!<§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!(_loc3_ && this))
         {
            §!!>§.playSound("BirdShot" + _loc1_);
         }
      }
      
      public function §[r§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§'J§);
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc5_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(§§pop() >= this.§8k§.length)
               {
                  if(_loc6_)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        if(!(_loc5_ && param2))
                        {
                           break;
                        }
                        addr114:
                        this.§8k§[_loc4_].update(param1,true,param2);
                     }
                     loop1:
                     while(true)
                     {
                        _loc4_++;
                        addr97:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     addr76:
                  }
                  while(_loc5_ && this)
                  {
                     §§goto(addr76);
                  }
                  continue;
               }
               addr102:
               if(this.mSlingShotState == § !P§)
               {
                  §§goto(addr114);
               }
               else
               {
                  this.§8k§[_loc4_].update(param1,false,param2);
               }
               §§goto(addr97);
            }
            §§goto(addr102);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§9k§ = null;
         var _loc2_:* = 0;
         if(!(_loc6_ && _loc2_))
         {
            this.mDragging = false;
            loop0:
            while(true)
            {
               addr44:
               while(true)
               {
                  this.§^c§();
                  addr47:
                  while(_loc5_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(this.§=O§ >= this.§8k§.length)
         {
            if(!_loc6_)
            {
               return false;
            }
            if(_loc5_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr44);
            }
            §§goto(addr47);
         }
         _loc1_ = this.§8k§[this.§=O§];
         if(_loc5_)
         {
            §§push(§%<§.§<<§(_loc1_.name).score);
            if(!(_loc6_ && this))
            {
               §§push(int(§§pop()));
            }
            _loc2_ = §§pop();
            if(!(_loc6_ && _loc1_))
            {
               loop4:
               while(true)
               {
                  §§push(this.§>`§);
                  §§push(_loc2_);
                  §§push(§7@§.§3A§);
                  §§push(true);
                  §§push(_loc1_.x);
                  §§push(_loc1_.y);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(3);
                     if(!(_loc6_ && _loc1_))
                     {
                        addr115:
                        §§push(§§pop() - §§pop());
                        §§push(§7o§.§=F§(_loc1_.name));
                     }
                     §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     if(_loc5_)
                     {
                        _loc1_.§+-§(-1,true);
                        if(!(_loc6_ && _loc3_))
                        {
                           while(true)
                           {
                              if(true)
                              {
                                 var _loc3_:*;
                                 §§push((_loc3_ = this).§=O§);
                                 if(_loc5_ || this)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc4_:* = §§pop();
                              }
                              continue loop4;
                              if(_loc5_)
                              {
                                 _loc3_.§=O§ = _loc4_;
                              }
                              break loop4;
                           }
                           addr76:
                        }
                        break;
                     }
                     break;
                  }
                  §§goto(addr115);
               }
            }
            return true;
         }
         §§goto(addr76);
      }
      
      public function §=!^§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§9k§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§8k§)
         {
            if(_loc6_)
            {
               §§push(_loc1_);
               if(!_loc5_)
               {
                  §§push(int(§§pop() + §%<§.§<<§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §9D§() : int
      {
         return this.§6D§;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§-!-§);
            loop0:
            while(true)
            {
               §§push(0);
               addr211:
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
                     §§push(this.§-!-§);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§-!-§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      public function §9§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 1000;
         loop0:
         while(true)
         {
            §§push(this.§>`§.objects.§0K§(this.§?!M§,this.§<!?§));
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
                        addr90:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(!_loc4_)
                              {
                                 while(true)
                                 {
                                    this.§-!-§ = -1;
                                    addr77:
                                    while(!(_loc3_ || _loc2_))
                                    {
                                    }
                                    if(!_loc4_)
                                    {
                                       return;
                                    }
                                    continue loop3;
                                 }
                                 addr73:
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
                                 continue loop4;
                              }
                              addr65:
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                              if(§§pop() > 0)
                              {
                                 break;
                              }
                              if(!_loc4_)
                              {
                                 §§goto(addr73);
                              }
                              §§goto(addr77);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §<!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§?!N§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!_loc3_)
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
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.mSlingShotState == §-I§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr109:
                     loop3:
                     while(true)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || param1)
                                    {
                                       §§push(true);
                                       break;
                                    }
                                    if(!(_loc2_ || this))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 §§push(false);
                                 if(_loc3_ && this)
                                 {
                                    break;
                                 }
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       return §§pop();
                                    }
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr73);
            }
         }
         §§goto(addr109);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.mSlingShotState == §-I§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§pop();
                     addr49:
                     §§push(this.§5H§);
                     §§push(this.§0![§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() * §1L§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mDragging = false;
            if(!(_loc3_ && _loc2_))
            {
               this.setSlingShotState(§-I§);
            }
         }
         var _loc1_:§9k§ = this.§8k§[this.§'J§];
         if(_loc2_)
         {
            _loc1_.§+-§(§!A§.§"!T§);
         }
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mDragging = true;
         }
         var _loc1_:§9k§ = this.§8k§[this.§'J§];
         if(_loc3_ || _loc1_)
         {
            _loc1_.§+-§(§!A§.§,G§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§%R§ = true;
         }
      }
      
      protected function §'2§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§9k§ = null;
         if(!_loc4_)
         {
            if(param1 < 0)
            {
               if(_loc5_)
               {
                  return;
               }
               addr37:
               _loc3_ = this.§8k§[param1];
               if(_loc5_ || param1)
               {
                  this.§3,§.removeChild(_loc3_.sprite);
                  loop0:
                  while(true)
                  {
                     if(param2)
                     {
                        if(!(_loc4_ && this))
                        {
                           this.§;b§(this.§8k§[param1]);
                        }
                        loop1:
                        while(true)
                        {
                           addr80:
                           loop2:
                           while(true)
                           {
                              _loc3_.dispose();
                              do
                              {
                                 this.§8k§[param1] = null;
                              }
                              while(!_loc5_);
                              
                              if(_loc5_ || param2)
                              {
                                 if(!_loc4_)
                                 {
                                    while(false)
                                    {
                                       continue loop2;
                                    }
                                    addr117:
                                    this.§8k§.splice(param1,1);
                                    addr122:
                                    return;
                                    addr78:
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr80);
                  }
               }
               §§goto(addr78);
            }
            else if(this.§8k§[param1])
            {
               if(_loc5_)
               {
                  §§goto(addr37);
               }
               §§goto(addr122);
            }
         }
         §§goto(addr117);
      }
      
      public function §;b§(param1:§9k§) : void
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
                  if(!_loc9_)
                  {
                     if(!_loc9_)
                     {
                        §§push(this.§>`§);
                        if(!_loc9_)
                        {
                           §§push(§§pop().particles);
                           if(_loc10_)
                           {
                              §§push(§7o§.§39§);
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(§<2§.§]!X§);
                                 if(_loc10_)
                                 {
                                    §§push(§7o§.§%u§);
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§push(param1.x);
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(param1.y);
                                          if(!_loc9_)
                                          {
                                             if(_loc10_ || param1)
                                             {
                                                §§push(1000);
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push("");
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      §§push(0);
                                                      if(!_loc9_)
                                                      {
                                                         §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                         break;
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            §§push(§§pop() * Math.cos(_loc6_));
                                                         }
                                                         §§push(_loc2_);
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            addr318:
                                                            §§push(-§§pop());
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               addr197:
                                                               §§push(§§pop() * Math.sin(_loc6_));
                                                            }
                                                            §§push(5);
                                                            §§push(_loc2_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() * 20);
                                                            }
                                                            §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                            loop18:
                                                            while(!(_loc9_ && _loc2_))
                                                            {
                                                               _loc5_++;
                                                               while(!_loc10_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               continue loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§>`§);
                                                               addr139:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().particles);
                                                                  addr140:
                                                                  while(true)
                                                                  {
                                                                     §§push(§7o§.§8!I§);
                                                                     addr142:
                                                                     while(true)
                                                                     {
                                                                        §§push(§<2§.§]!X§);
                                                                        addr144:
                                                                        while(true)
                                                                        {
                                                                           §§push(§7o§.§%u§);
                                                                           addr146:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.x);
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr159:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.y);
                                                                                       addr161:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + _loc8_);
                                                                                          addr163:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(1500);
                                                                                             addr164:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push("");
                                                                                                continue loop17;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr159:
                                                                                 }
                                                                                 §§goto(addr163);
                                                                              }
                                                                              §§goto(addr159);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr318:
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      addr169:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr169);
                                                   }
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr139);
                     }
                     else
                     {
                        loop15:
                        while(true)
                        {
                           if(_loc10_ || this)
                           {
                              addr380:
                              §§push(param1.sprite);
                              if(_loc10_)
                              {
                                 §§push(-§§pop().height);
                                 if(!_loc9_)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(§86§.§7!4§);
                                       if(!_loc9_)
                                       {
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc10_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc10_ || param1)
                                                {
                                                }
                                                addr310:
                                                if(_loc10_ || _loc3_)
                                                {
                                                   _loc8_ = §§pop();
                                                   §§goto(addr318);
                                                }
                                                else
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         _loc7_ = §§pop();
                                                         continue loop15;
                                                      }
                                                      addr393:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               addr412:
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  addr413:
                                                                  while(true)
                                                                  {
                                                                     §§push(180 / Math.PI);
                                                                     addr417:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        addr418:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr401:
                                                         }
                                                         addr419:
                                                         loop3:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr420:
                                                            while(true)
                                                            {
                                                               §§push(param1.sprite);
                                                               addr322:
                                                               while(true)
                                                               {
                                                                  §§push(-§§pop().width);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(§86§.§7!4§);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        break loop12;
                                                                        addr292:
                                                                        if(_loc9_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           addr307:
                                                                           if(!_loc10_)
                                                                           {
                                                                              break loop12;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                  }
                                                                  addr337:
                                                                  while(!_loc9_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_ && param1)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(Math.random() * -_loc7_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(2);
                                                                                    addr360:
                                                                                    addr285:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr361:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr285:
                                                                                    if(!(_loc10_ || _loc2_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                 }
                                                                              }
                                                                              addr347:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           addr364:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr412);
                                                                        }
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  §§goto(addr413);
                                                                  §§goto(addr380);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         §§goto(addr337);
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   §§goto(addr419);
                                                }
                                             }
                                             §§push(§§pop());
                                             if(_loc10_)
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   _loc8_ = §§pop();
                                                   if(_loc10_)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         §§push(Math.random() * -_loc8_);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(2);
                                                            if(_loc10_ || this)
                                                            {
                                                               §§goto(addr285);
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                      §§goto(addr364);
                                                   }
                                                   §§goto(addr307);
                                                }
                                                §§goto(addr361);
                                             }
                                             §§goto(addr285);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr392:
                                          }
                                          §§goto(addr393);
                                       }
                                       §§goto(addr285);
                                    }
                                    §§goto(addr418);
                                 }
                                 §§goto(addr310);
                              }
                              §§goto(addr322);
                           }
                           §§goto(addr420);
                        }
                     }
                     §§goto(addr318);
                  }
                  §§goto(addr133);
               }
               break;
            }
            §§push(_loc4_);
            if(!_loc9_)
            {
               §§goto(addr392);
               §§push(Math.random() * (720 / _loc3_));
            }
            §§goto(addr401);
         }
      }
      
      public function §"!>§(param1:§9k§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§'2§(this.§8k§.indexOf(param1));
         }
      }
      
      public function §;!P§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§9k§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§9k§ = null;
         var _loc1_:* = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc7_ || _loc2_)
            {
               if(§§pop() >= this.§8k§.length - 1)
               {
                  if(_loc7_ || _loc2_)
                  {
                     addr243:
                     if(this.§3,§.numChildren > 0)
                     {
                        §§push(this.§3,§);
                        if(!_loc6_)
                        {
                           §§pop().removeChildAt(0);
                           if(_loc7_ || _loc2_)
                           {
                              §§goto(addr243);
                           }
                           addr266:
                           §§push(_loc1_);
                           break;
                           addr266:
                        }
                        §§goto(addr243);
                     }
                     if(!(_loc6_ && this))
                     {
                        addr255:
                        §§push(0);
                        if(!(_loc6_ && _loc3_))
                        {
                           _loc1_ = §§pop();
                           if(_loc7_)
                           {
                              §§goto(addr266);
                           }
                        }
                        break;
                     }
                  }
                  §§goto(addr300);
               }
               §§push(Number(Math.sqrt((this.§<!Y§ - this.§8k§[_loc1_].x) * (this.§<!Y§ - this.§8k§[_loc1_].x) + (this.§ l§ - this.§8k§[_loc1_].y) * (this.§ l§ - this.§8k§[_loc1_].y))));
               if(!_loc6_)
               {
                  _loc3_ = §§pop();
                  if(!(_loc6_ && this))
                  {
                     §§push(Number(Math.sqrt((this.§<!Y§ - this.§8k§[_loc1_ + 1].x) * (this.§<!Y§ - this.§8k§[_loc1_ + 1].x) + (this.§ l§ - this.§8k§[_loc1_ + 1].y) * (this.§ l§ - this.§8k§[_loc1_ + 1].y))));
                     if(_loc7_)
                     {
                        addr127:
                        §§push(§§pop());
                        if(!(_loc6_ && this))
                        {
                           _loc4_ = §§pop();
                           addr136:
                           §§push(_loc3_);
                        }
                        if(§§pop() < §§pop())
                        {
                           if(!(_loc6_ && this))
                           {
                              _loc5_ = this.§8k§[_loc1_];
                              if(_loc7_)
                              {
                                 this.§8k§.splice(_loc1_,1);
                              }
                              loop1:
                              while(true)
                              {
                                 addr182:
                                 while(true)
                                 {
                                    this.§8k§.splice(_loc1_ + 1,0,_loc5_);
                                    continue loop1;
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr255);
                           }
                           §§goto(addr266);
                        }
                        _loc1_++;
                        if(!_loc6_)
                        {
                           continue;
                        }
                        §§goto(addr266);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr255);
               }
               §§goto(addr127);
               §§goto(addr266);
            }
            break;
         }
         while(§§pop() < this.§8k§.length)
         {
            _loc2_ = this.§8k§[_loc1_];
            if(_loc7_)
            {
               this.§3,§.addChildAt(_loc2_.sprite,0);
               if(_loc7_)
               {
                  _loc1_++;
               }
            }
            §§goto(addr266);
         }
         addr300:
      }
      
      public function §5q§(param1:Number, param2:Number) : §9k§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§8k§.length)
            {
               if(!_loc5_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  return null;
               }
               addr91:
            }
            else if(this.§8k§[_loc3_])
            {
               if(_loc4_ && this)
               {
                  break;
               }
               if(this.§8k§[_loc3_].isInCoordinates(param1,param2))
               {
                  if(!(_loc4_ && param2))
                  {
                     break;
                  }
                  §§goto(addr91);
               }
               addr34:
               _loc3_++;
               continue;
            }
            §§goto(addr34);
         }
         return this.§8k§[_loc3_];
      }
      
      public function §'o§(param1:Number, param2:Number) : §#K§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§<!Y§);
               if(!(_loc4_ && param1))
               {
                  §§push(this.§0![§);
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
                     addr87:
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     addr94:
                     §§push(4);
                     if(!(_loc4_ && param2))
                     {
                        addr113:
                        §§push(§§pop() - §§pop() / §§pop());
                        loop16:
                        while(true)
                        {
                           §§push(§§pop() >= §§pop());
                           if(_loc3_ || _loc3_)
                           {
                              if(_loc3_)
                              {
                                 loop17:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       break;
                                    }
                                    loop21:
                                    while(true)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop17;
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             §§pop();
                                             loop14:
                                             while(true)
                                             {
                                                §§push(param2);
                                                loop15:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(this.§ l§);
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§push(this.§0![§);
                                                            if(!(_loc4_ && this))
                                                            {
                                                               addr80:
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  §§goto(addr87);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  break loop15;
                                                                  §§goto(addr80);
                                                               }
                                                               addr171:
                                                            }
                                                            §§goto(addr113);
                                                         }
                                                         break;
                                                      }
                                                      continue loop16;
                                                   }
                                                   addr138:
                                                   addr214:
                                                   addr135:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§<!Y§);
                                                         if(_loc3_ || param1)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(this.§0![§);
                                                               if(_loc3_ || param2)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(4);
                                                                     while(_loc3_ || param1)
                                                                     {
                                                                        §§goto(addr171);
                                                                        §§push(§§pop() / §§pop());
                                                                        §§goto(addr94);
                                                                     }
                                                                     §§goto(addr212);
                                                                     addr163:
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                               §§goto(addr80);
                                                            }
                                                            break;
                                                         }
                                                         break loop15;
                                                      }
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      addr215:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                   }
                                                   loop22:
                                                   while(true)
                                                   {
                                                      §§push(this.§ l§);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this.§<!?§);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() <= §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  while(§§pop())
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop22;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        return this;
                                                                     }
                                                                     addr218:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr138);
                                                                     }
                                                                  }
                                                                  return null;
                                                                  addr43:
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop16;
                                                      }
                                                      continue loop15;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop21;
                                                   }
                                                }
                                                §§goto(addr215);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             break loop16;
                                          }
                                          §§goto(addr177);
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr134);
                                 }
                                 §§goto(addr43);
                              }
                              break;
                           }
                           §§goto(addr134);
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr218);
                        }
                     }
                     §§goto(addr163);
                  }
               }
               §§goto(addr214);
            }
         }
         §§goto(addr135);
      }
      
      public function §-N§(param1:§&!]§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§9k§ = null;
         var _loc4_:§#^§ = null;
         if(!_loc5_)
         {
            param1.§^!E§ = this.§<!Y§;
            if(_loc6_ || _loc3_)
            {
               addr36:
               param1.§0!;§ = this.§ l§;
            }
            var _loc2_:* = Number(0);
            loop0:
            while(_loc2_ < this.§8k§.length)
            {
               _loc3_ = this.§8k§[_loc2_];
               (_loc4_ = new §#^§()).x = _loc3_.x;
               if(!_loc5_)
               {
                  _loc4_.y = _loc3_.y;
                  while(true)
                  {
                     _loc4_.id = _loc3_.name;
                     loop2:
                     while(true)
                     {
                        addr102:
                        while(true)
                        {
                           param1.§"L§(_loc4_);
                           addr106:
                           while(!_loc5_)
                           {
                           }
                           continue loop2;
                        }
                     }
                     addr93:
                     if(_loc5_ && _loc3_)
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr102);
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc6_ || _loc3_)
                     {
                        addr84:
                        §§push(Number(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(!(_loc5_ && this))
                     {
                        §§goto(addr93);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr84);
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §var§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§8k§.length > 0)
         {
            this.§"!>§(this.§8k§[0]);
            if(!(_loc2_ || this))
            {
               break;
            }
         }
      }
      
      public function §'!A§(param1:Point, param2:Point) : Array
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
               if(§§pop() < this.§8k§.length)
               {
                  if(this.§8k§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr237);
                  }
                  break;
               }
               loop2:
               while(true)
               {
                  §§push(this.§<!Y§);
                  loop3:
                  while(_loc6_ || _loc3_)
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
                                    §§push(this.§<!Y§);
                                    loop8:
                                    while(_loc6_ || this)
                                    {
                                       §§push(§§pop() < param2.x);
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc5_ && param1)
                                          {
                                             continue loop6;
                                          }
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop11:
                                             for(; !(_loc5_ && _loc3_); while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc6_ || param2))
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   continue loop9;
                                                }
                                                addr49:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               _loc3_.push(this);
                                                               addr75:
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§goto(addr25);
                                                               }
                                                               addr135:
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     addr237:
                                                                     _loc3_.push(this.§8k§[_loc4_]);
                                                                     break;
                                                                  }
                                                                  §§goto(addr137);
                                                                  §§goto(addr75);
                                                               }
                                                            }
                                                            break loop1;
                                                         }
                                                         §§goto(addr171);
                                                         §§goto(addr86);
                                                      }
                                                      §§goto(addr75);
                                                   }
                                                   addr25:
                                                   return _loc3_;
                                                }
                                             })
                                             {
                                                if(!§§pop())
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr171:
                                                   while(!_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(this.§ l§);
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     if(_loc5_ && param2)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() > param1.y);
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§push(this.§ l§);
                                                               addr137:
                                                               continue loop3;
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§push(§§pop() < param2.y);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr49);
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  §§goto(addr127);
                                                                  continue loop8;
                                                               }
                                                            }
                                                            addr207:
                                                            §§push(§§pop() + 1);
                                                            break loop3;
                                                            addr86:
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    addr209:
                                    _loc4_ = §§pop();
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr160);
                        }
                     }
                  }
                  §§goto(addr209);
               }
               §§goto(addr237);
            }
            §§goto(addr207);
         }
      }
      
      public function §,!$§() : Array
      {
         return [this.§7'§,this.§'!_§];
      }
      
      public function §58§(param1:String, param2:Number, param3:Number) : §9k§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§9k§ = this.addSlingshotObject(param1,param2,param3);
         if(_loc6_ || param1)
         {
            this.§;!P§();
         }
         return _loc4_;
      }
      
      public function §&!_§() : Number
      {
         return this.§8k§.length;
      }
   }
}
