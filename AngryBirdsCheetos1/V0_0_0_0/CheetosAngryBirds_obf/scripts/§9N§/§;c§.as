package §9N§
{
   import §%!$§.§=m§;
   import §,u§.§8O§;
   import §2!-§.Texture;
   import §4W§.§2f§;
   import §4W§.§>c§;
   import §<!+§.§with§;
   import §?7§.§&!5§;
   import §?7§.§=!5§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §@,§.§4h§;
   import §`a§.§>?§;
   import §`a§.§?!N§;
   import §`a§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;c§
   {
      
      public static const §6!&§:int = 0;
      
      public static const §0'§:int = 1;
      
      public static const §?!S§:int = 2;
      
      public static const §"!R§:int = 3;
      
      public static const §<b§:int = 5;
      
      public static const §9!5§:int = 3151368;
      
      protected static const §&8§:int = 8;
      
      protected static const §^z§:int = 0;
      
      public static const §1p§:Number = 46.25;
      
      public static const §-O§:Number = 52.5;
      
      protected static var §-W§:Texture;
      
      public static const §`!7§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6!&§ = 0;
            while(true)
            {
               §0'§ = 1;
               while(true)
               {
                  §?!S§ = 2;
                  addr123:
                  while(true)
                  {
                     §"!R§ = 3;
                  }
                  loop4:
                  while(!(_loc1_ && _loc1_))
                  {
                     §9!5§ = 3151368;
                     loop5:
                     while(!_loc1_)
                     {
                        §&8§ = 8;
                        loop6:
                        while(true)
                        {
                           §^z§ = 0;
                           addr75:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §1p§ = 46.25;
                                 continue loop6;
                              }
                              continue loop5;
                           }
                           continue loop4;
                        }
                     }
                     §§goto(addr123);
                  }
               }
               if(!(_loc2_ || §;c§))
               {
                  continue;
               }
               §§goto(addr46);
            }
         }
         §§goto(addr108);
      }
      
      public var §8@§:§9!%§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §=j§:Number;
      
      protected var §9j§:Number;
      
      protected var §-"§:Number;
      
      protected var §`!<§:Number;
      
      protected var §9!=§:Number;
      
      public var §1+§:Number;
      
      public var §+!D§:Boolean = false;
      
      protected var § !J§:Number;
      
      public var §`4§:Vector.<§8'§>;
      
      public var §'!E§:int;
      
      public var §'n§:int;
      
      public var §1j§:Number;
      
      public var §67§:Sprite;
      
      public var §+U§:int = 0;
      
      public var §8!;§:Number = 0;
      
      public var §@&§:Array;
      
      public var §!Z§:Array;
      
      public var mSlingShotState:int;
      
      public var §?!J§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §@Y§:Boolean = false;
      
      public var §;!W§:Number;
      
      protected var §9!A§:Sprite;
      
      protected var §3;§:§?!N§;
      
      protected var §-!@§:§?!N§;
      
      protected var §4!X§:Sprite;
      
      protected var §[-§:Sprite;
      
      protected var §7!P§:Sprite;
      
      protected var §>;§:§>?§;
      
      protected var §17§:§>?§;
      
      private var §<!G§:Number = 0;
      
      public function §;c§(param1:§9!%§, param2:§with§, param3:Sprite)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§8O§ = null;
         if(_loc7_)
         {
            this.§`4§ = new Vector.<§8'§>();
            loop0:
            while(true)
            {
               super();
               addr72:
               while(true)
               {
                  this.§8@§ = param1;
                  continue loop0;
               }
            }
         }
         §§goto(addr49);
      }
      
      public function get sprite() : Sprite
      {
         return this.§9!A§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§<!G§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§'!E§ < this.§`4§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§`4§.length > 0)
            {
               this.§#@§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§`4§ = null;
               loop2:
               while(_loc2_ || _loc2_)
               {
                  §§push(this.§9!A§);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr99:
                           this.§9!A§.dispose();
                        }
                        loop3:
                        while(true)
                        {
                           this.§9!A§ = null;
                           addr88:
                           while(true)
                           {
                              addr33:
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(_loc2_)
                                 {
                                    addr42:
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       return;
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        this.§67§ = null;
                        loop6:
                        while(true)
                        {
                           this.§@&§ = null;
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop6;
                           }
                           continue loop2;
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr42);
                  }
                  §§goto(addr99);
               }
               continue loop0;
            }
         }
      }
      
      public function §^c§(param1:String, param2:Number, param3:Number, param4:int = -1) : §8'§
      {
         var _loc5_:§8'§;
         (_loc5_ = this.§<!§(param1,param2,param3,param4)).§[D§();
         return _loc5_;
      }
      
      protected function §<!§(param1:String, param2:Number, param3:Number, param4:int = -1) : §8'§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§8'§ = new §8'§(this,new Sprite(),param1,param2,param3);
         if(_loc6_)
         {
            if(param4 >= 0)
            {
               this.§`4§.splice(param4,0,_loc5_);
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
         }
         while(true)
         {
            this.§`4§.push(_loc5_);
            §§goto(addr89);
         }
      }
      
      public function §&O§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§6!&§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     while(true)
                     {
                        §§push(§0'§);
                        addr296:
                        addr297:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           continue loop1;
                        }
                        while(true)
                        {
                           this.§&e§();
                           while(true)
                           {
                              if(!(_loc2_ && param1))
                              {
                                 this.§1j§ = 0;
                                 while(true)
                                 {
                                    §§goto(addr29);
                                 }
                              }
                              addr329:
                              while(true)
                              {
                                 this.§1j§ = 1000;
                                 §§goto(addr311);
                              }
                           }
                        }
                        addr215:
                        if(_loc2_ && param1)
                        {
                           continue;
                        }
                        §§push(§"!R§);
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 addr154:
                                 §§push(this.mSlingShotState);
                                 if(_loc3_)
                                 {
                                    §§push(§<b§);
                                    if(!_loc2_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             if(!this.mDragging)
                                             {
                                                this.§&e§();
                                                §§goto(addr53);
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr190);
                                       }
                                       addr29:
                                    }
                                    continue;
                                    loop12:
                                    while(true)
                                    {
                                       this.mDragging = false;
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          while(true)
                                          {
                                             if(!(_loc3_ || param1))
                                             {
                                                continue loop0;
                                             }
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             loop16:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      addr135:
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         continue loop20;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         break loop2;
                                                      }
                                                      this.§&e§();
                                                      while(true)
                                                      {
                                                         this.§`4§[this.§'!E§].setPosition(this.§`!<§ - this.§`4§[this.§'!E§].radius * Math.cos(this.§8!;§ / (180 / Math.PI)),this.§9!=§ + this.§`4§[this.§'!E§].radius * Math.sin(this.§8!;§ / (180 / Math.PI)));
                                                         continue loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ || param1))
                                                         {
                                                            while(true)
                                                            {
                                                               this.§1j§ = 2000;
                                                               continue loop18;
                                                            }
                                                            addr235:
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr178:
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         this.mDragging = false;
                                                         continue;
                                                      }
                                                      addr284:
                                                      addr239:
                                                      addr284:
                                                      while(_loc3_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         continue loop19;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§@Y§ = false;
                                                         break loop16;
                                                      }
                                                      addr284:
                                                   }
                                                   else
                                                   {
                                                      addr226:
                                                      if(!(_loc2_ && this))
                                                      {
                                                         this.§&e§();
                                                      }
                                                      else
                                                      {
                                                         addr279:
                                                         if(_loc3_)
                                                         {
                                                            this.§1j§ = 10000;
                                                            §§goto(addr284);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop12;
                                                            }
                                                            addr311:
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr284);
                                                }
                                                §§goto(addr235);
                                             }
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop23;
                                                }
                                                this.§&e§();
                                                §§goto(addr239);
                                                §§goto(addr135);
                                             }
                                          }
                                          continue;
                                          addr53:
                                       }
                                       if(_loc3_ || _loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr119);
                                    }
                                    return;
                                 }
                                 addr208:
                                 while(true)
                                 {
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr215);
                                    §§goto(addr154);
                                 }
                                 continue loop3;
                                 addr208:
                              }
                              break;
                           }
                           addr264:
                           while(true)
                           {
                              if(!(_loc2_ && this))
                              {
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    break;
                                 }
                                 §§goto(addr208);
                                 §§push(this.mSlingShotState);
                              }
                              else
                              {
                                 §§goto(addr296);
                              }
                           }
                           §§goto(addr279);
                           §§goto(addr297);
                        }
                        §§goto(addr226);
                     }
                  }
                  this.§&e§();
                  §§goto(addr329);
               }
            }
         }
         §§goto(addr284);
      }
      
      public function get §5q§() : §9!%§
      {
         return this.§8@§;
      }
      
      public function §&C§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.mSlingShotState == §"!R§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr59:
                     §§pop();
                     return this.§1j§ <= 0;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      private function §!!D§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§2f§ = this.§8@§.§"B§.§2!'§("SLINGSHOT");
         var _loc2_:§>c§ = _loc1_.getFrame(0);
         var _loc3_:§>c§ = _loc1_.getFrame(1);
         if(_loc4_)
         {
            this.§>;§ = new §>?§(_loc2_.texture);
            while(true)
            {
               §§push(this.§>;§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr268:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
               while(_loc4_ || _loc2_)
               {
                  this.§67§ = new Sprite();
                  §§goto(addr172);
                  §§goto(addr83);
               }
            }
         }
         §§goto(addr101);
      }
      
      public function §?+§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc3_)
         {
            this.§9j§ = this.mX;
            loop0:
            while(true)
            {
               addr59:
               while(true)
               {
                  this.§-"§ = this.mY;
                  continue loop0;
               }
            }
            addr79:
         }
         while(true)
         {
            this.§ !J§ = §&!V§.§2v§;
            if(_loc2_ && _loc1_)
            {
               continue;
            }
            if(!(_loc2_ && _loc2_))
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
      
      protected function §,!J§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(_loc4_ || _loc1_)
         {
            if(!§-W§)
            {
               if(!(_loc3_ && _loc1_))
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc4_)
                  {
                     §-W§ = this.§8@§.§#G§.§8E§(_loc2_);
                  }
               }
               addr57:
               var _loc1_:§>?§ = new §>?§(§-W§);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.rotation = Math.PI;
                  loop0:
                  while(true)
                  {
                     _loc1_.x = _loc1_.width / 2;
                     while(true)
                     {
                        _loc1_.y = _loc1_.height / 2;
                        while(!(_loc3_ && _loc1_))
                        {
                           this.§7!P§.addChild(_loc1_);
                           loop3:
                           while(_loc4_)
                           {
                              this.§4!X§ = new Sprite();
                              loop4:
                              while(true)
                              {
                                 this.§3;§ = new §?!N§(2,2,§9!5§);
                                 while(!_loc3_)
                                 {
                                    continue loop0;
                                    addr115:
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       this.§[-§.addChild(this.§-!@§);
                                       addr122:
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          return;
                                          addr135:
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             addr108:
                                             if(_loc3_ && _loc1_)
                                             {
                                                break;
                                             }
                                             §§goto(addr115);
                                          }
                                          addr128:
                                          while(true)
                                          {
                                             this.§-!@§ = new §?!N§(2,2,§9!5§);
                                             continue loop9;
                                          }
                                       }
                                       while(_loc4_)
                                       {
                                          this.§[-§ = new Sprite();
                                          §§goto(addr128);
                                          §§goto(addr108);
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§4!X§.addChild(this.§3;§);
                  §§goto(addr135);
               }
            }
            this.§7!P§ = new Sprite();
         }
         §§goto(addr57);
      }
      
      public function §=<§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§9!=§);
         if(!(_loc7_ && this))
         {
            §§push(§§pop() / §9!%§.§catch§);
            if(_loc6_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§`!<§);
         if(_loc6_)
         {
            §§push(§§pop() / §9!%§.§catch§);
            if(!(_loc7_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(3.5);
         if(_loc6_)
         {
            §§push(8);
            §§push(this.§ !J§);
            if(_loc6_)
            {
               §§push(this.§1+§);
               if(_loc6_)
               {
                  addr71:
                  §§push(§§pop() - §§pop());
                  if(!_loc7_)
                  {
                     §§push(this.§ !J§);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc7_)
                  {
                     addr76:
                     var _loc4_:Number = §§pop();
                     if(_loc6_)
                     {
                        §§push(this.§7!P§);
                        while(true)
                        {
                           §§push(_loc3_);
                           addr519:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              addr520:
                              while(true)
                              {
                                 §§push(this.§7!P§);
                                 addr513:
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr514:
                                    while(true)
                                    {
                                       §§pop().y = §§pop();
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           addr480:
                           if(_loc7_ && this)
                           {
                              continue;
                           }
                           §§push(this.§8!;§);
                           if(!_loc7_)
                           {
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(-§§pop());
                                 if(!_loc7_)
                                 {
                                    addr501:
                                    if(!_loc7_)
                                    {
                                       addr508:
                                       §§pop().rotation = §§pop() / (180 / Math.PI);
                                       while(true)
                                       {
                                          §§push(this.§>;§);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.mX);
                                             addr468:
                                             while(true)
                                             {
                                                §§push(§9!%§.§catch§);
                                                addr470:
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   addr471:
                                                   while(true)
                                                   {
                                                      §§push(3);
                                                      addr472:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr473:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop7;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          if(_loc7_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc6_)
                                          {
                                             §§goto(addr332);
                                          }
                                          §§goto(addr520);
                                       }
                                    }
                                    §§goto(addr514);
                                 }
                                 §§goto(addr508);
                              }
                              §§goto(addr519);
                           }
                           §§goto(addr501);
                        }
                     }
                     §§goto(addr515);
                  }
                  §§goto(addr76);
               }
               §§push(§§pop() / §§pop());
            }
            §§goto(addr71);
         }
         §§goto(addr76);
      }
      
      public function §6!A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            if(this.§`4§.length <= 0)
            {
               if(_loc1_ || this)
               {
                  this.§@!>§();
               }
               while(_loc1_)
               {
                  this.§<!§("BIRD_SARDINE",this.mX,this.mY);
                  do
                  {
                     this.§&O§(§?!S§);
                  }
                  while(_loc2_);
                  
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
            else
            {
               this.§#@§(0,true);
            }
         }
      }
      
      protected function §@!>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §=m§.playSound("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&O§(§<b§);
         }
      }
      
      public function §&e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this.§9j§);
            §§push(this.§-"§);
            if(!_loc1_)
            {
               §§push(this.§ !J§);
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
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function §,!S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=m§.playSound("SlingshotStreched");
         }
      }
      
      public function § #§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.mX);
            §§push(this.mY);
            if(_loc2_ || this)
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
         if(_loc7_ || this)
         {
            §§push(§§pop() - this.mX);
            if(!(_loc6_ && param3))
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc7_ || this)
            {
               this.mX = param1;
            }
            §§push(param2);
            if(_loc7_)
            {
               §§push(§§pop() - this.mY);
               if(!_loc6_)
               {
                  addr55:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc7_)
               {
                  this.mY = param2;
                  loop0:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§=j§);
                     if(_loc7_)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§=j§ = §§pop();
                     loop1:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§-"§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§-"§ = §§pop();
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§9!=§);
                           if(_loc7_ || this)
                           {
                              §§push(§§pop() + _loc5_);
                           }
                           §§pop().§9!=§ = §§pop();
                           loop3:
                           while(!(_loc6_ && param2))
                           {
                              §§push(this);
                              §§push(this.§9j§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + _loc4_);
                              }
                              §§pop().§9j§ = §§pop();
                              loop4:
                              do
                              {
                                 if(_loc6_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(this);
                                 §§push(this.§`!<§);
                                 if(_loc7_ || param1)
                                 {
                                    §§push(§§pop() + _loc4_);
                                 }
                                 §§pop().§`!<§ = §§pop();
                                 loop5:
                                 while(param3)
                                 {
                                    if(_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       continue;
                                    }
                                    addr95:
                                    addr95:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          break loop5;
                                       }
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    this.§?!J§ = true;
                                    if(!_loc6_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr95);
                                 }
                              }
                              while(_loc6_);
                              
                              return;
                           }
                        }
                     }
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr55);
         }
         §§goto(addr35);
      }
      
      public function §"N§() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§8'§ = null;
         _loc2_ = this.§`4§[this.§'!E§];
         §§push(this.§1+§);
         if(!_loc5_)
         {
            §§push(§§pop() / this.§ !J§);
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
                  if(_loc4_ || this)
                  {
                     if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                     {
                        if(_loc4_)
                        {
                           addr74:
                           §§push(§;c§.§-O§);
                           if(!(_loc5_ && _loc1_))
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc5_ && _loc1_))
                              {
                                 addr109:
                                 §§push(Number(§§pop()));
                                 if(_loc4_ || _loc2_)
                                 {
                                    _loc1_ = §§pop();
                                    §§goto(addr118);
                                 }
                              }
                              §§push(§§pop() * _loc3_);
                           }
                           else
                           {
                              addr101:
                              §§push(Number(§§pop()));
                              if(_loc4_ || _loc2_)
                              {
                                 §§goto(addr109);
                              }
                           }
                        }
                        §§goto(addr118);
                     }
                     else
                     {
                        §§push(§;c§.§1p§);
                        if(_loc4_ || _loc1_)
                        {
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr118);
                  }
               }
               addr118:
               §§push(_loc1_);
               if(_loc5_ && _loc3_)
               {
               }
               return §§pop();
            }
            §§goto(addr74);
         }
         §§goto(addr38);
      }
      
      public function §+0§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§8'§ = null;
         if(!_loc2_)
         {
            if(this.§`4§.length <= this.§'!E§)
            {
               return null;
            }
            if(_loc3_ || _loc3_)
            {
               _loc1_ = this.§`4§[this.§'!E§];
            }
         }
         return new Point(_loc1_.mX,_loc1_.mY);
      }
      
      public function §]!F§() : Point
      {
         return new Point(this.§9j§,this.§-"§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§8'§ = null;
         if(!_loc5_)
         {
            this.§'!Y§(param1);
            loop0:
            while(true)
            {
               if(this.§?!J§)
               {
                  while(true)
                  {
                     this.§=<§(param1);
                     addr89:
                     while(true)
                     {
                     }
                  }
                  addr86:
               }
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§1j§);
                  if(_loc4_ || this)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§1j§ = §§pop();
                  loop2:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        do
                        {
                           if(this.§1j§ < 0)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 this.§1j§ = 0;
                              }
                              while(_loc4_)
                              {
                              }
                              continue loop1;
                              addr62:
                           }
                           while(true)
                           {
                              if(this.mSlingShotState == §"!R§)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(!_loc5_)
                                    {
                                       break loop1;
                                    }
                                    continue loop2;
                                 }
                              }
                              else
                              {
                                 this.§,6§(param1,param2);
                              }
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr62);
                           }
                        }
                        while(false);
                        
                        _loc3_ = null;
                        if(_loc4_)
                        {
                           if(this.§`4§.length > 0)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 _loc3_ = this.§`4§[this.§'!E§];
                                 addr118:
                                 if(_loc3_)
                                 {
                                    if(!_loc5_)
                                    {
                                       _loc3_.§>'§(param1);
                                       if(!(_loc5_ && param1))
                                       {
                                          addr344:
                                          if(_loc3_)
                                          {
                                             addr322:
                                             if(this.mSlingShotState != §6!&§)
                                             {
                                                addr294:
                                                §§push(this.mSlingShotState);
                                                §§push(§0'§);
                                                if(_loc4_)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      §§push(this.mSlingShotState);
                                                      if(!_loc5_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§?!S§);
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr294);
                                                            }
                                                            if(§§pop() == §§pop())
                                                            {
                                                               addr226:
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  §§push(this.§`!<§);
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     §§push(_loc3_.radius);
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§push(§§pop() * Math.cos(this.§8!;§ / (180 / Math.PI)));
                                                                        if(_loc4_)
                                                                        {
                                                                           addr259:
                                                                           §§push(§§pop() - §§pop());
                                                                           §§push(this.§9!=§);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(_loc3_.radius);
                                                                              if(!(_loc5_ && param2))
                                                                              {
                                                                                 §§push(§§pop() * Math.sin(this.§8!;§ / (180 / Math.PI)));
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                        §§pop().setPosition(§§pop(),§§pop());
                                                                        addr285:
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this.§@Y§);
                                                                           if(!(_loc5_ && param2))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr164:
                                                                                                §§push(this);
                                                                                                §§push(this.§1+§);
                                                                                                if(_loc4_ || param1)
                                                                                                {
                                                                                                   §§push(this.§ !J§);
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      addr194:
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      §§push(this.§8!;§);
                                                                                                   }
                                                                                                   §§pop().§0!M§(§§pop(),§§pop());
                                                                                                   addr197:
                                                                                                   if(!(_loc4_ || param1))
                                                                                                   {
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr350);
                                                                                                   }
                                                                                                   addr299:
                                                                                                   if(_loc3_.§6A§)
                                                                                                   {
                                                                                                      addr300:
                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                      {
                                                                                                         addr307:
                                                                                                         this.§&O§(§?!S§);
                                                                                                         addr310:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         _loc3_.§&!?§();
                                                                                                         addr343:
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr324:
                                                                                                            if(this.§1j§ <= 0)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  this.§&O§(§0'§);
                                                                                                               }
                                                                                                               §§goto(addr343);
                                                                                                            }
                                                                                                            §§goto(addr288);
                                                                                                         }
                                                                                                         addr288:
                                                                                                         §§goto(addr350);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr350);
                                                                                                }
                                                                                                §§goto(addr194);
                                                                                             }
                                                                                             addr346:
                                                                                             this.§&O§(§"!R§);
                                                                                             addr350:
                                                                                             return;
                                                                                             addr349:
                                                                                          }
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    §§goto(addr226);
                                                                                 }
                                                                                 §§goto(addr197);
                                                                              }
                                                                              §§goto(addr350);
                                                                           }
                                                                           §§goto(addr299);
                                                                        }
                                                                        §§goto(addr349);
                                                                     }
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            §§goto(addr350);
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   §§goto(addr299);
                                                }
                                                §§goto(addr322);
                                             }
                                             §§goto(addr324);
                                          }
                                          §§goto(addr346);
                                       }
                                       §§goto(addr307);
                                    }
                                    §§goto(addr343);
                                 }
                                 §§goto(addr344);
                              }
                              §§goto(addr299);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr164);
                     }
                  }
               }
               §§goto(addr350);
            }
         }
         §§goto(addr86);
      }
      
      public function §<!N§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§8'§ = null;
         if(_loc6_ || param1)
         {
            if(this.§`4§.length > 0)
            {
               if(_loc6_)
               {
                  _loc5_ = this.§`4§[this.§'!E§];
                  addr50:
                  if(!_loc5_)
                  {
                     if(_loc6_ || this)
                     {
                        return;
                     }
                     return;
                     addr84:
                  }
                  else
                  {
                     _loc5_.setPosition(param1,param2);
                  }
                  §§goto(addr84);
               }
               do
               {
                  this.§0!M§(param3,param4);
               }
               while(!_loc6_);
               
               §§goto(addr84);
            }
            §§goto(addr50);
         }
         §§goto(addr84);
      }
      
      protected function §0!M§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§8'§ = null;
         if(!(_loc4_ && param2))
         {
            if(this.§`4§.length > 0)
            {
               if(!(_loc4_ && param2))
               {
                  _loc3_ = this.§`4§[this.§'!E§];
                  §§goto(addr46);
               }
               §§goto(addr171);
            }
            addr46:
            if(!_loc3_)
            {
               if(!(_loc4_ && this))
               {
                  return;
               }
               addr88:
            }
            else
            {
               addr171:
               this.mDragging = false;
               loop0:
               while(true)
               {
                  this.§@Y§ = false;
                  addr170:
                  loop1:
                  while(true)
                  {
                     this.§<!G§ = new Date().time;
                     loop2:
                     do
                     {
                        this.§8@§.§8!"§(_loc3_,param1,param2);
                        loop3:
                        while(_loc5_)
                        {
                           this.§#@§(this.§'!E§,_loc3_.§1;§ > 0);
                           do
                           {
                              if(!_loc4_)
                              {
                                 this.§#4§();
                                 do
                                 {
                                    if(this.§'!E§ >= this.§`4§.length)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          continue loop1;
                                       }
                                    }
                                    else
                                    {
                                       this.§&O§(§6!&§);
                                       if(_loc5_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 while(!_loc5_);
                                 
                                 continue;
                              }
                              continue loop3;
                           }
                           while(!(_loc5_ || this));
                           
                        }
                        continue loop0;
                     }
                     while(!_loc5_);
                     
                     §§goto(addr88);
                  }
               }
            }
            return;
         }
         §§goto(addr170);
      }
      
      protected function §#4§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc2_)
         {
            §=m§.playSound("BirdShot" + _loc1_);
         }
      }
      
      public function §,6§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§'!E§);
         if(!(_loc5_ && this))
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
            if(!_loc5_)
            {
               if(§§pop() >= this.§`4§.length)
               {
                  if(_loc6_ || param2)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        if(_loc6_ || this)
                        {
                           break;
                        }
                        addr114:
                        this.§`4§[_loc4_].update(param1,true,param2);
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
                     addr81:
                  }
                  while(!_loc6_)
                  {
                     §§goto(addr81);
                  }
                  continue;
               }
               addr102:
               if(this.mSlingShotState == §<b§)
               {
                  §§goto(addr114);
               }
               else
               {
                  this.§`4§[_loc4_].update(param1,false,param2);
               }
               §§goto(addr97);
            }
            §§goto(addr102);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§8'§ = null;
         var _loc2_:* = 0;
         if(!(_loc5_ && _loc1_))
         {
            this.mDragging = false;
            loop0:
            while(true)
            {
               addr57:
               while(true)
               {
                  this.§&e§();
                  while(this.§'n§ >= this.§`4§.length)
                  {
                     if(!(_loc6_ || this))
                     {
                        continue loop0;
                     }
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  addr65:
                  _loc1_ = this.§`4§[this.§'n§];
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§&!5§.§;@§(_loc1_.name).score);
                     if(!_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(this.§8@§);
                           §§push(_loc2_);
                           §§push(§^_§.§3B§);
                           §§push(true);
                           §§push(_loc1_.mX);
                           §§push(_loc1_.mY);
                           if(_loc6_ || this)
                           {
                              §§push(3);
                              if(_loc6_ || this)
                              {
                                 addr133:
                                 §§push(§§pop() - §§pop());
                                 §§push(§-&§.§7!W§(_loc1_.name));
                              }
                              §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    _loc1_.§+^§(-1,true);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr133);
                        }
                     }
                  }
                  addr181:
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §[!%§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§8'§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§`4§)
         {
            if(!_loc6_)
            {
               §§push(_loc1_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + §&!5§.§;@§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §'!Y§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(!_loc4_)
         {
            §§push(this.§;!W§);
            loop0:
            while(true)
            {
               §§push(0);
               addr204:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     return;
                  }
                  addr21:
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(this.§;!W§);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§;!W§ = §§pop();
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §;f§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         loop0:
         while(true)
         {
            §§push(this.§8@§.objects.§+m§(this.§9j§,this.§=j§));
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
                     for(; !_loc3_; if(_loc3_ && _loc1_)
                     {
                        continue;
                     },§§push(§§pop()),if(_loc4_ || this)
                     {
                        §§push(§§pop() - 1);
                        if(_loc4_ || this)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr93);
                           }
                           _loc1_ = §§pop();
                           continue loop1;
                        }
                     },if(§§pop() > §§pop())
                     {
                        continue loop0;
                     },if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue loop3;
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr94);
                     },§§goto(addr85))
                     {
                        §§push(-1);
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              while(true)
                              {
                                 addr81:
                                 while(true)
                                 {
                                    this.§;!W§ = -1;
                                    addr85:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          return;
                                       }
                                    }
                                 }
                              }
                              addr94:
                           }
                           else
                           {
                              this.§ #§(0.1);
                           }
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!_loc3_)
                              {
                                 continue loop4;
                              }
                              continue loop1;
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
      
      public function §<R§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§9!A§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr69:
               while(true)
               {
                  §§push(-§§pop());
                  addr70:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.mSlingShotState == §?!S§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr90:
                     while(true)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        addr49:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr50:
                           while(_loc3_ || param1)
                           {
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               loop5:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              §§push(true);
                              break loop5;
                           }
                           addr68:
                        }
                        else
                        {
                           §§goto(addr90);
                        }
                     }
                     else
                     {
                        addr20:
                        §§push(false);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                           §§goto(addr49);
                        }
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr20);
               }
               while(true)
               {
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return §§pop();
         }
         §§goto(addr68);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.mSlingShotState == §?!S§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     addr53:
                     §§pop();
                     §§push(this.§1+§);
                     §§push(this.§ !J§);
                     if(_loc1_ || this)
                     {
                        §§push(§§pop() * §`!7§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr53);
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
               addr34:
               this.§&O§(§?!S§);
            }
            var _loc1_:§8'§ = this.§`4§[this.§'!E§];
            if(_loc3_ || this)
            {
               _loc1_.§+^§(§=!5§.§#!1§);
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.mDragging = true;
         }
         var _loc1_:§8'§ = this.§`4§[this.§'!E§];
         if(_loc2_ || _loc3_)
         {
            _loc1_.§+^§(§=!5§.§&g§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§@Y§ = true;
         }
      }
      
      protected function §#@§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§8'§ = null;
         if(_loc4_)
         {
            if(param1 < 0)
            {
               if(!(_loc5_ && _loc3_))
               {
                  return;
               }
            }
            if(this.§`4§[param1])
            {
               if(_loc4_ || param1)
               {
                  addr46:
                  _loc3_ = this.§`4§[param1];
                  if(!_loc5_)
                  {
                     this.§67§.removeChild(_loc3_.sprite);
                     loop0:
                     while(true)
                     {
                        if(!param2)
                        {
                           loop3:
                           while(true)
                           {
                              _loc3_.dispose();
                              while(_loc4_)
                              {
                                 this.§`4§[param1] = null;
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc5_ && param2))
                                 {
                                    while(false)
                                    {
                                       continue loop3;
                                    }
                                    addr121:
                                    this.§`4§.splice(param1,1);
                                    addr126:
                                    return;
                                    addr80:
                                 }
                              }
                              continue loop0;
                           }
                           addr82:
                        }
                        while(true)
                        {
                           this.§5F§(this.§`4§[param1]);
                           continue loop0;
                           §§goto(addr73);
                        }
                     }
                  }
                  §§goto(addr80);
               }
               §§goto(addr126);
            }
            §§goto(addr121);
         }
         §§goto(addr46);
      }
      
      public function §5F§(param1:§8'§) : void
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
                  if(_loc10_ || this)
                  {
                     §§push(this.§8@§);
                     if(!(_loc9_ && this))
                     {
                        §§push(§§pop().particles);
                        if(!_loc9_)
                        {
                           §§push(§-&§.§1U§);
                           if(_loc10_ || this)
                           {
                              §§push(§,v§.§-!;§);
                              if(_loc10_)
                              {
                                 §§push(§-&§.§ ,§);
                                 if(!_loc9_)
                                 {
                                    §§push(param1.mX);
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§push(param1.mY);
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
                                                   if(!_loc9_)
                                                   {
                                                      §§push(0);
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                         addr120:
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(param1.sprite);
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(-§§pop().width);
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(§9!%§.§catch§);
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc10_ || _loc2_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Math.random() * -_loc7_);
                                                                                    }
                                                                                    addr368:
                                                                                 }
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(2);
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                addr378:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.sprite);
                                                                                                   if(!(_loc10_ || this))
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   §§push(-§§pop().height);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(_loc9_ && param1)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      §§push(§9!%§.§catch§);
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         if(_loc9_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           addr285:
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 addr290:
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 if(_loc9_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                                 §§push(Math.random() * -_loc8_);
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    addr308:
                                                                                                                                    if(_loc10_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(2);
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       addr319:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc10_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          addr332:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             continue loop13;
                                                                                                                                          }
                                                                                                                                          if(!(_loc9_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr341:
                                                                                                                                             if(!(_loc9_ && this))
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             addr398:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                §§goto(addr341);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             addr400:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc4_ = §§pop();
                                                                                                                                                if(_loc10_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(180 / Math.PI);
                                                                                                                                                }
                                                                                                                                                addr423:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr424:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc6_ = §§pop();
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr332);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr423);
                                                                                                                                       §§goto(addr308);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr319);
                                                                                                                              }
                                                                                                                              §§goto(addr332);
                                                                                                                           }
                                                                                                                           §§goto(addr400);
                                                                                                                        }
                                                                                                                        §§goto(addr319);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr368);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr332);
                                                                                                               }
                                                                                                               §§goto(addr423);
                                                                                                            }
                                                                                                            §§goto(addr424);
                                                                                                         }
                                                                                                         §§goto(addr290);
                                                                                                      }
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                   §§goto(addr332);
                                                                                                   continue loop19;
                                                                                                }
                                                                                                _loc8_ = §§pop();
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
                                                            addr157:
                                                            §§push(this.§8@§.particles);
                                                            §§push(§-&§.§+H§);
                                                            §§push(§,v§.§-!;§);
                                                            §§push(§-&§.§ ,§);
                                                            §§push(param1.mX);
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               addr168:
                                                               §§push(§§pop() + _loc7_);
                                                               §§push(param1.mY + _loc8_);
                                                               §§push(1500);
                                                               §§push("");
                                                               §§push(§-&§.§%6§(param1.name));
                                                               §§push(_loc2_);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§§pop() * Math.cos(_loc6_));
                                                               }
                                                               §§push(_loc2_);
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  §§push(-§§pop());
                                                                  if(_loc10_)
                                                                  {
                                                                     addr196:
                                                                     §§push(§§pop() * Math.sin(_loc6_));
                                                                  }
                                                                  §§push(5);
                                                                  §§push(_loc2_);
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     §§push(§§pop() * 20);
                                                                  }
                                                                  §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     _loc5_++;
                                                                     addr139:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr196);
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         §§goto(addr139);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr168);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr378);
               }
               §§goto(addr120);
            }
            else
            {
               §§push(_loc4_);
               if(!_loc9_)
               {
                  §§push(Math.random() * (720 / _loc3_));
                  if(_loc10_ || _loc2_)
                  {
                     §§goto(addr398);
                     §§push(§§pop() + §§pop());
                  }
                  §§goto(addr400);
               }
            }
            §§goto(addr424);
         }
      }
      
      public function §3!K§(param1:§8'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#@§(this.§`4§.indexOf(param1));
         }
      }
      
      public function §;M§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§8'§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§8'§ = null;
         var _loc1_:* = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc7_)
            {
               if(§§pop() >= this.§`4§.length - 1)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     addr233:
                     if(this.§67§.numChildren > 0)
                     {
                        §§push(this.§67§);
                        if(_loc7_)
                        {
                           §§pop().removeChildAt(0);
                           if(_loc7_ || _loc2_)
                           {
                              §§goto(addr233);
                           }
                           §§goto(addr295);
                        }
                        §§goto(addr233);
                     }
                     if(_loc7_)
                     {
                        addr240:
                        §§push(0);
                        if(!(_loc6_ && _loc3_))
                        {
                           _loc1_ = §§pop();
                           if(_loc7_ || _loc3_)
                           {
                           }
                           §§goto(addr295);
                        }
                        break;
                     }
                     addr290:
                     §§push(_loc1_);
                     break;
                  }
                  §§goto(addr295);
               }
               else
               {
                  §§push(Number(Math.sqrt((this.mX - this.§`4§[_loc1_].mX) * (this.mX - this.§`4§[_loc1_].mX) + (this.mY - this.§`4§[_loc1_].mY) * (this.mY - this.§`4§[_loc1_].mY))));
                  if(!_loc6_)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_)
                     {
                        §§push(Number(Math.sqrt((this.mX - this.§`4§[_loc1_ + 1].mX) * (this.mX - this.§`4§[_loc1_ + 1].mX) + (this.mY - this.§`4§[_loc1_ + 1].mY) * (this.mY - this.§`4§[_loc1_ + 1].mY))));
                        if(!(_loc6_ && _loc2_))
                        {
                           addr127:
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              _loc4_ = §§pop();
                              addr131:
                              §§push(_loc3_);
                           }
                           if(§§pop() >= §§pop())
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              _loc5_ = this.§`4§[_loc1_];
                              if(_loc7_)
                              {
                                 this.§`4§.splice(_loc1_,1);
                                 loop1:
                                 while(true)
                                 {
                                    addr179:
                                    while(true)
                                    {
                                       this.§`4§.splice(_loc1_ + 1,0,_loc5_);
                                       continue loop1;
                                    }
                                 }
                                 addr194:
                              }
                              while(true)
                              {
                                 _loc1_ = int(Math.max(-1,_loc1_ - 2));
                                 if(_loc6_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr194);
                                 }
                                 §§goto(addr179);
                              }
                              continue;
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr295);
                  }
                  §§goto(addr127);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() >= this.§`4§.length)
            {
               addr295:
            }
            _loc2_ = this.§`4§[_loc1_];
            if(_loc7_ || this)
            {
               this.§67§.addChildAt(_loc2_.sprite,0);
               if(_loc6_)
               {
                  continue;
               }
            }
            _loc1_++;
            continue;
            return;
         }
      }
      
      public function §7l§(param1:Number, param2:Number) : §8'§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§`4§.length)
            {
               if(!(_loc5_ && param1))
               {
                  if(_loc4_)
                  {
                     return null;
                  }
                  addr60:
                  if(this.§`4§[_loc3_].isInCoordinates(param1,param2))
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     while(true)
                     {
                        addr48:
                        while(true)
                        {
                           _loc3_++;
                        }
                     }
                     addr85:
                  }
                  §§goto(addr48);
               }
               while(!_loc4_)
               {
                  §§goto(addr85);
               }
               continue;
            }
            if(this.§`4§[_loc3_])
            {
               §§goto(addr60);
            }
            §§goto(addr48);
         }
         return this.§`4§[_loc3_];
      }
      
      public function §@7§(param1:Number, param2:Number) : §;c§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.mX);
               loop1:
               while(true)
               {
                  §§push(this.§ !J§);
                  if(!_loc3_)
                  {
                     §§push(4);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        loop24:
                        while(true)
                        {
                           if(_loc3_ && param1)
                           {
                              continue loop2;
                           }
                           §§push(§§pop() / §§pop());
                           loop25:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              loop26:
                              while(true)
                              {
                                 §§push(§§pop() <= §§pop());
                                 loop8:
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop10:
                                       while(!_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§pop();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      loop13:
                                                      while(!_loc3_)
                                                      {
                                                         §§push(this.mY);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop26;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               §§push(this.§ !J§);
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     continue loop25;
                                                                  }
                                                                  §§push(4);
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() >= §§pop());
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     addr154:
                                                                     addr154:
                                                                     while(_loc4_ || param2)
                                                                     {
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ || param1))
                                                                           {
                                                                              break loop11;
                                                                           }
                                                                           continue loop13;
                                                                           addr66:
                                                                           §§push(this.mY);
                                                                           if(!(_loc4_ || _loc3_))
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr37);
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§goto(addr20);
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§push(this.§ !J§);
                                                                        }
                                                                     }
                                                                     addr37:
                                                                     §§push(this.§=j§);
                                                                     continue loop9;
                                                                     if(!(_loc4_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       return this;
                                                                                    }
                                                                                    §§goto(addr66);
                                                                                 }
                                                                                 addr20:
                                                                                 return null;
                                                                              }
                                                                              addr60:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              break loop10;
                                                                           }
                                                                           addr226:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr154);
                                                                        }
                                                                        §§goto(addr162);
                                                                     }
                                                                     §§goto(addr174);
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc4_ || param2)
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  addr224:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr226);
                                                            }
                                                         }
                                                         continue loop26;
                                                      }
                                                      addr172:
                                                      while(true)
                                                      {
                                                         §§goto(addr174);
                                                      }
                                                   }
                                                }
                                                addr228:
                                                while(true)
                                                {
                                                   §§pop();
                                                   break loop11;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr172);
                                             }
                                             addr229:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc4_ || param1))
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr154);
                                             }
                                             §§goto(addr60);
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop8;
                                          }
                                          §§goto(addr228);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr224);
               }
            }
         }
         §§goto(addr229);
      }
      
      public function § "§(param1:§with§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§8'§ = null;
         var _loc4_:§8O§ = null;
         if(_loc5_)
         {
            param1.§4Y§ = this.mX;
            if(_loc5_ || param1)
            {
               param1.§%!&§ = this.mY;
            }
         }
         var _loc2_:* = Number(0);
         loop0:
         while(_loc2_ < this.§`4§.length)
         {
            _loc3_ = this.§`4§[_loc2_];
            (_loc4_ = new §8O§()).x = _loc3_.mX;
            if(!(_loc6_ && _loc3_))
            {
               _loc4_.y = _loc3_.mY;
               while(true)
               {
                  _loc4_.id = _loc3_.name;
                  loop2:
                  for(; !(_loc6_ && _loc2_); loop4:
                  while(!(_loc6_ && _loc3_))
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                           if(_loc5_ || param1)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc2_ = §§pop();
                        if(_loc6_)
                        {
                           continue loop4;
                        }
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr99);
                     }
                     continue loop0;
                  })
                  {
                     while(true)
                     {
                        param1.§`4§.push(_loc4_);
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr111);
         }
      }
      
      public function §4!=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§`4§.length > 0)
         {
            this.§3!K§(this.§`4§[0]);
            if(!(_loc2_ || _loc1_))
            {
               break;
            }
         }
      }
      
      public function §2!&§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               if(§§pop() >= this.§`4§.length)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.mX);
                     addr181:
                     loop2:
                     while(!_loc6_)
                     {
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop() > param1.x);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop10:
                                       while(true)
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             if(§§pop())
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr170:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(this.mY);
                                                      loop13:
                                                      for(; _loc5_ || this; §§push(this.mY),if(!(_loc5_ || param2))
                                                      {
                                                         continue;
                                                      },§§goto(addr39))
                                                      {
                                                         §§push(§§pop() > param1.y);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(_loc6_ && this)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  break loop14;
                                                               }
                                                               addr195:
                                                            }
                                                         }
                                                         loop6:
                                                         while(!(_loc6_ && _loc3_))
                                                         {
                                                            §§push(this.mX);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() < param2.x);
                                                                  break loop10;
                                                               }
                                                               break;
                                                               addr39:
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() < param2.y);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr90);
                                                                     }
                                                                     while(§§pop())
                                                                     {
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!(_loc5_ || param1))
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              _loc3_.push(this);
                                                                              addr74:
                                                                              addr122:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc5_ || this))
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              addr236:
                                                                              _loc3_.push(this.§`4§[_loc4_]);
                                                                           }
                                                                           continue loop13;
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr204:
                                                                           §§push(_loc4_);
                                                                           break loop7;
                                                                        }
                                                                        §§goto(addr74);
                                                                     }
                                                                     return _loc3_;
                                                                     addr53:
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                            §§push(Number(§§pop() + 1));
                                                            break loop2;
                                                         }
                                                         addr90:
                                                         continue loop0;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   §§goto(addr102);
                                                }
                                                §§goto(addr53);
                                             }
                                             continue;
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                    addr159:
                                 }
                                 §§goto(addr195);
                              }
                           }
                        }
                        §§goto(addr207);
                     }
                     _loc4_ = §§pop();
                     continue loop0;
                  }
               }
               else if(this.§`4§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr236);
               }
               §§goto(addr204);
            }
            §§goto(addr181);
         }
      }
      
      public function §&!-§() : Array
      {
         return [this.§17§,this.§>;§];
      }
      
      public function §`v§(param1:String, param2:Number, param3:Number) : §8'§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§8'§ = this.§<!§(param1,param2,param3);
         if(_loc6_)
         {
            this.§;M§();
         }
         return _loc4_;
      }
      
      public function §8c§() : Number
      {
         return this.§`4§.length;
      }
   }
}
