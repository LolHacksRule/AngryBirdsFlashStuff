package §6A§
{
   import §#X§.§,!F§;
   import §&o§.§<3§;
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §0! §.Texture;
   import §1!-§.§@Z§;
   import §3a§.§7!+§;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §9K§.§!?§;
   import §9K§.§,z§;
   import §^!L§.§%h§;
   import §^!L§.§6<§;
   import §^G§.§#H§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!C§
   {
      
      public static const §-!5§:int = 0;
      
      public static const §&!E§:int = 1;
      
      public static const §?f§:int = 2;
      
      public static const §45§:int = 3;
      
      public static const §?!>§:int = 5;
      
      public static const §1v§:int = 3151368;
      
      protected static const §"!J§:int = 8;
      
      protected static const §%!7§:int = 0;
      
      public static const §,!N§:Number = 46.25;
      
      public static const §?1§:Number = 52.5;
      
      protected static const §@!,§:Number = -0.7;
      
      protected static const §`u§:Number = 0;
      
      protected static var §-9§:Texture;
      
      public static const §,i§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §-!5§ = 0;
         }
         if(_loc1_ || _loc1_)
         {
            §1v§ = 3151368;
            §"!J§ = 8;
            §%!7§ = 0;
            §,!N§ = 46.25;
            §?1§ = 52.5;
            if(_loc1_)
            {
               §@!,§ = -0.7;
            }
         }
      }
      
      public var §?V§:§ !§;
      
      public var §-`§:Number;
      
      public var §4J§:Number;
      
      public var §%!4§:Number;
      
      protected var §!G§:Number;
      
      protected var §8O§:Number;
      
      protected var §`F§:Number;
      
      protected var §-!E§:Number;
      
      public var §1r§:Number;
      
      public var §9!B§:Boolean = false;
      
      protected var §5=§:Number;
      
      public var §,B§:Vector.<§!!'§>;
      
      public var §>!;§:int;
      
      public var §];§:int;
      
      public var §&!,§:Number;
      
      public var §-!!§:Sprite;
      
      public var §=b§:int = 0;
      
      public var §[8§:Number = 0;
      
      public var §>3§:Array;
      
      public var §;@§:Array;
      
      public var mSlingShotState:int;
      
      public var §!g§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §!o§:Boolean = false;
      
      public var §3!,§:Number;
      
      protected var §>#§:Boolean = false;
      
      protected var §,!7§:Sprite;
      
      protected var §+@§:§<3§;
      
      protected var §"^§:§<3§;
      
      protected var § ,§:Sprite;
      
      protected var §+Y§:Sprite;
      
      protected var §-q§:Sprite;
      
      protected var §4&§:§?T§;
      
      protected var §-!>§:§?T§;
      
      private var §9n§:Number = 0;
      
      private var §?L§:int = 0;
      
      protected var §8J§:Number = -0.7;
      
      protected var §3!@§:Number = 0;
      
      public function §4!C§(param1:§ !§, param2:§@Z§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§#H§ = null;
         this.§,B§ = new Vector.<§!!'§>();
         if(!(_loc7_ && param3))
         {
            super();
            if(!(_loc7_ && param2))
            {
               this.§?V§ = param1;
               this.§,!7§ = param3;
               if(param2)
               {
                  if(!(_loc7_ && this))
                  {
                     this.setPosition(param2.§!N§,param2.§#!4§);
                  }
                  §§goto(addr64);
               }
               else
               {
                  §7!+§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                  if(_loc6_)
                  {
                     this.§ i§(§45§);
                     if(!_loc7_)
                     {
                        §§goto(addr201);
                     }
                  }
               }
               §§goto(addr219);
            }
            addr64:
            this.§3H§();
            _loc4_ = 0;
            §§goto(addr68);
         }
         addr68:
         while(_loc4_ < param2.§]U§)
         {
            _loc5_ = param2.§4w§(_loc4_);
            if(_loc6_)
            {
               this.§0!%§(_loc5_.id,_loc5_.x,_loc5_.y);
               if(!(_loc6_ || param2))
               {
                  continue;
               }
            }
            _loc4_++;
         }
         this.§?L§ = this.§+v§();
         if(!(_loc7_ && param2))
         {
            this.§>!;§ = 0;
         }
         if(this.§,B§.length <= 0)
         {
            if(!(_loc7_ && this))
            {
               §§push(§7!+§);
               §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
               if(_loc6_)
               {
                  §§push(this.§-`§);
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc6_ || param2)
                     {
                     }
                     §§goto(addr161);
                  }
                  §§push(§§pop() + §§pop());
               }
               addr161:
               §§push(§§pop() + " ");
               if(_loc6_)
               {
                  §§push(this.§4J§);
               }
               §§pop().log(§§pop());
               if(!_loc7_)
               {
                  this.§ i§(§45§);
                  if(!_loc7_)
                  {
                     addr201:
                     this.§3!,§ = 0;
                     if(_loc6_ || param1)
                     {
                        §§goto(addr211);
                     }
                     addr180:
                  }
                  §§goto(addr223);
               }
               addr211:
               this.§5B§();
               §§goto(addr213);
            }
            §§goto(addr201);
         }
         else
         {
            this.§ i§(§-!5§);
            if(_loc6_ || param3)
            {
               §§goto(addr180);
            }
         }
         addr213:
         this.update(0,true);
         if(!_loc7_)
         {
            addr219:
            this.§4§();
            if(!_loc7_)
            {
               addr223:
               this.§'P§(0);
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§,!7§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§9n§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§>!;§ < this.§,B§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         do
         {
            if(this.§,B§.length <= 0)
            {
               if(!(_loc1_ && _loc1_))
               {
                  this.§,B§ = null;
                  §§push(this.§,!7§);
                  if(!(_loc1_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           addr78:
                           this.§,!7§.dispose();
                           break;
                        }
                        break;
                     }
                     addr84:
                     this.§-!!§ = null;
                     this.§>3§ = null;
                     this.§;@§ = null;
                     §§goto(addr93);
                  }
                  §§goto(addr78);
               }
               addr93:
               return;
            }
            continue;
         }
         while(this.§'h§(0), _loc2_ || _loc1_);
         
         this.§,!7§ = null;
         if(!_loc2_)
         {
         }
         §§goto(addr84);
      }
      
      public function §<!1§(param1:String, param2:Number, param3:Number, param4:int = -1) : §!!'§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§!!'§;
         (_loc5_ = this.§0!%§(param1,param2,param3,param4)).§4!K§();
         if(_loc7_ || param3)
         {
            this.§ i§(§?f§);
         }
         return _loc5_;
      }
      
      protected function §0!%§(param1:String, param2:Number, param3:Number, param4:int = -1) : §!!'§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§!!'§ = new §!!'§(this,new Sprite(),param1,param2,param3);
         if(_loc7_ || param1)
         {
            if(param4 < 0)
            {
               if(_loc7_ || param2)
               {
                  this.§,B§.push(_loc5_);
                  if(_loc6_ && param1)
                  {
                  }
               }
               §§goto(addr89);
            }
            else
            {
               this.§,B§.splice(param4,0,_loc5_);
               if(_loc7_ || this)
               {
                  §§goto(addr89);
               }
            }
            §§goto(addr89);
         }
         addr89:
         this.§-!!§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function § i§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.mSlingShotState = param1;
         if(_loc2_ || this)
         {
            §§push(this.mSlingShotState);
            if(_loc2_)
            {
               §§push(§-!5§);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr46:
                        this.§8!2§();
                        this.§&!,§ = 1000;
                        if(_loc3_)
                        {
                           addr134:
                           this.§8!2§();
                           this.§&!,§ = 2000;
                           if(_loc2_ || param1)
                           {
                              addr146:
                           }
                        }
                     }
                     else
                     {
                        addr106:
                        this.§8!2§();
                        addr108:
                     }
                  }
                  else
                  {
                     §§push(this.mSlingShotState);
                     if(!_loc3_)
                     {
                        addr58:
                        §§push(§&!E§);
                        if(_loc2_)
                        {
                           addr61:
                           if(§§pop() == §§pop())
                           {
                              this.§8!2§();
                              if(!_loc3_)
                              {
                                 this.§&!,§ = 0;
                                 §§goto(addr219);
                              }
                              else
                              {
                                 §§goto(addr108);
                              }
                           }
                           else
                           {
                              §§push(this.mSlingShotState);
                              if(_loc2_)
                              {
                                 §§push(§?f§);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          this.§&!,§ = 10000;
                                          this.§!o§ = false;
                                          §§goto(addr106);
                                       }
                                       else
                                       {
                                          §§goto(addr146);
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.mSlingShotState);
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr118:
                                          §§push(§45§);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr126:
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   §§goto(addr134);
                                                }
                                                §§goto(addr146);
                                             }
                                             else
                                             {
                                                addr149:
                                                §§push(this.mSlingShotState);
                                                §§push(§?!>§);
                                             }
                                             §§goto(addr219);
                                          }
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr219);
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(this.mDragging)
                                    {
                                       this.mDragging = false;
                                       this.§!o§ = false;
                                       this.§8!2§();
                                       this.§,B§[this.§>!;§].setPosition(this.§`F§ - this.§,B§[this.§>!;§].radius * Math.cos(this.§[8§ / (180 / Math.PI)),this.§-!E§ + this.§,B§[this.§>!;§].radius * Math.sin(this.§[8§ / (180 / Math.PI)));
                                    }
                                    else
                                    {
                                       this.§8!2§();
                                    }
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr118);
                  }
                  addr219:
                  this.mDragging = false;
                  return;
               }
               §§goto(addr61);
            }
            §§goto(addr58);
         }
         §§goto(addr46);
      }
      
      public function get §;s§() : § !§
      {
         return this.§?V§;
      }
      
      public function §;§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.mSlingShotState == §45§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr44:
                     §§pop();
                     §§push(this.§&!,§ <= 0);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr44);
      }
      
      private function §3H§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§!?§ = this.§%X§();
         var _loc2_:§,z§ = _loc1_.getFrame(0);
         var _loc3_:§,z§ = _loc1_.getFrame(1);
         if(!_loc4_)
         {
            this.§4&§ = new §?T§(_loc2_.texture);
            §§push(this.§4&§);
            if(!_loc4_)
            {
               §§push(_loc2_.scale);
               if(!_loc4_)
               {
                  §§pop().scaleX = §§pop();
                  if(!_loc4_)
                  {
                     §§goto(addr54);
                  }
                  §§goto(addr115);
               }
               §§goto(addr54);
            }
            addr54:
            this.§4&§.scaleY = _loc2_.scale;
            this.§-!>§ = new §?T§(_loc3_.texture);
            if(_loc5_)
            {
               addr63:
               §§push(this.§-!>§);
               if(!(_loc4_ && _loc1_))
               {
                  §§push(_loc3_.scale);
                  if(!(_loc4_ && this))
                  {
                     §§pop().scaleX = §§pop();
                     §§goto(addr221);
                  }
                  §§pop().scaleY = §§pop();
                  if(!_loc4_)
                  {
                     this.§<!$§();
                     if(_loc5_ || _loc1_)
                     {
                        addr115:
                        this.§ A§();
                        §§goto(addr117);
                     }
                     §§goto(addr182);
                  }
                  addr117:
                  this.§-!!§ = new Sprite();
                  if(!_loc4_)
                  {
                     §§push(this.§,!7§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop().addChild(this.§4&§);
                        §§push(this.§,!7§);
                        if(_loc5_ || _loc1_)
                        {
                           §§pop().addChild(this.§ ,§);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr154);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr194);
                  }
                  addr154:
                  §§push(this.§,!7§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§pop().addChild(this.§-!!§);
                     if(_loc5_ || _loc1_)
                     {
                        §§push(this.§,!7§);
                        if(!(_loc4_ && _loc1_))
                        {
                           addr182:
                           §§pop().addChild(this.§-q§);
                           addr185:
                           §§push(this.§,!7§);
                           if(_loc5_ || _loc3_)
                           {
                              §§pop().addChild(this.§+Y§);
                              addr194:
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr214:
                                 §§push(this.§,!7§);
                              }
                              §§goto(addr221);
                           }
                        }
                     }
                     §§goto(addr185);
                  }
                  §§pop().addChild(this.§-!>§);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr221);
               }
               §§goto(addr91);
            }
            addr221:
            if(_loc5_ || _loc2_)
            {
               addr91:
               §§push(this.§-!>§);
               §§push(_loc3_.scale);
            }
            §§push(this);
            §§push(this.§4J§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() + 8.5);
            }
            §§pop().§%!4§ = §§pop();
            return;
         }
         §§goto(addr63);
      }
      
      protected function §%X§() : §!?§
      {
         return this.§?V§.§;!L§.§8!0§("SLINGSHOT");
      }
      
      public function §<!$§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc2_ || _loc3_)
         {
            this.§!G§ = this.§-`§;
            if(_loc2_)
            {
               this.§8O§ = this.§4J§;
               if(!_loc2_)
               {
               }
               §§goto(addr67);
            }
            this.§5=§ = §#!E§.§+B§;
         }
         addr67:
         _loc1_ = null;
      }
      
      protected function § A§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(!(_loc3_ && _loc3_))
         {
            if(!§-9§)
            {
               if(_loc4_ || _loc2_)
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc4_)
                  {
                     §-9§ = this.§?V§.textureManager.§<o§(_loc2_);
                  }
               }
               var _loc1_:§?T§ = new §?T§(§-9§);
               _loc1_.rotation = Math.PI;
               §§goto(addr57);
            }
            this.§-q§ = new Sprite();
         }
         addr57:
         if(!_loc3_)
         {
            _loc1_.x = _loc1_.width / 2;
            if(!_loc3_)
            {
               _loc1_.y = _loc1_.height / 2;
               this.§-q§.addChild(_loc1_);
               if(_loc4_ || _loc2_)
               {
                  this.§ ,§ = new Sprite();
               }
               §§goto(addr124);
            }
            this.§+@§ = new §<3§(2,2,§1v§);
         }
         addr124:
         this.§ ,§.addChild(this.§+@§);
         this.§+Y§ = new Sprite();
         this.§"^§ = new §<3§(2,2,§1v§);
         this.§+Y§.addChild(this.§"^§);
      }
      
      public function §'P§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§-!E§);
         if(_loc7_)
         {
            §§push(§§pop() / § !§.§`J§);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§`F§);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() / § !§.§`J§);
            if(_loc7_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(3.5);
         if(!_loc6_)
         {
            §§push(8);
            §§push(this.§5=§);
            if(_loc7_ || param1)
            {
               §§push(this.§1r§);
               if(_loc7_)
               {
                  addr72:
                  §§push(§§pop() - §§pop());
                  if(!_loc6_)
                  {
                     §§push(this.§5=§);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(_loc7_)
                  {
                     addr76:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  if(_loc7_ || param1)
                  {
                     §§push(this.§-q§);
                     if(!_loc6_)
                     {
                        §§push(_loc3_);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§pop().x = §§pop();
                           if(!_loc6_)
                           {
                              §§push(this.§-q§);
                              if(!(_loc6_ && this))
                              {
                                 §§push(_loc2_);
                                 if(_loc7_ || param1)
                                 {
                                    §§pop().y = §§pop();
                                    if(_loc7_)
                                    {
                                       addr122:
                                       §§push(this.§-q§);
                                       §§push(this.§[8§);
                                       if(!_loc6_)
                                       {
                                          addr126:
                                          §§push(-§§pop());
                                          if(!(_loc6_ && param1))
                                          {
                                             addr134:
                                             §§push(§§pop() / (180 / Math.PI));
                                          }
                                          §§pop().rotation = §§pop();
                                       }
                                       §§goto(addr134);
                                    }
                                    §§push(this.§4&§);
                                    if(_loc7_)
                                    {
                                       §§push(this.§-`§);
                                       if(_loc7_)
                                       {
                                          §§push(§ !§.§`J§);
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc7_)
                                             {
                                                §§push(3);
                                                if(_loc7_ || _loc2_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr174:
                                                      §§push(this.§4&§);
                                                      §§push(this.§4J§);
                                                      if(!_loc6_)
                                                      {
                                                         addr178:
                                                         §§push(§§pop() / § !§.§`J§);
                                                         if(!_loc6_)
                                                         {
                                                            addr184:
                                                            §§push(§§pop() - 30);
                                                         }
                                                      }
                                                      §§pop().y = §§pop();
                                                      §§push(this.§-!>§);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(this.§-`§);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§ !§.§`J§);
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  addr206:
                                                                  §§push(30);
                                                                  if(_loc7_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr217);
                                                                     }
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                               addr217:
                                                               §§pop().x = §§pop();
                                                               if(_loc7_)
                                                               {
                                                                  addr222:
                                                                  §§push(this.§-!>§);
                                                                  §§push(this.§4J§);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr233:
                                                                     §§push(§§pop() / § !§.§`J§);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        addr243:
                                                                        §§pop().y = §§pop() - 30;
                                                                        §§push(this.§+Y§);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           §§push(this.§-`§);
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              §§push(§ !§.§`J§);
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(17);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc7_ || param1)
                                                                                       {
                                                                                          addr295:
                                                                                          §§pop().x = §§pop();
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(this.§+Y§);
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                addr307:
                                                                                                §§push(this.§4J§);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr313:
                                                                                                   §§push(§§pop() / § !§.§`J§);
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      §§goto(addr323);
                                                                                                   }
                                                                                                   addr323:
                                                                                                   §§pop().y = §§pop() + 5;
                                                                                                   §§goto(addr321);
                                                                                                }
                                                                                                addr321:
                                                                                                §§goto(addr531);
                                                                                             }
                                                                                             §§pop().rotation = Math.atan2(_loc2_ - this.§+Y§.y,_loc3_ - this.§+Y§.x);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(this.§ ,§);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(this.§-`§);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(§ !§.§`J§);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(§§pop() + 22);
                                                                                                            if(_loc7_ || _loc3_)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               addr373:
                                                                                                               §§push(this.§ ,§);
                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                               {
                                                                                                                  addr382:
                                                                                                                  §§push(this.§4J§);
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     addr394:
                                                                                                                     §§pop().y = §§pop() / § !§.§`J§;
                                                                                                                     §§push(this.§ ,§);
                                                                                                                  }
                                                                                                                  §§goto(addr394);
                                                                                                               }
                                                                                                               §§pop().rotation = Math.atan2(_loc2_ - this.§ ,§.y,_loc3_ - this.§ ,§.x);
                                                                                                               §§push(this.§"^§);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§+Y§.x,2) + Math.pow(_loc2_ - this.§+Y§.y,2));
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     §§push(this.§+@§);
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§ ,§.x,2) + Math.pow(_loc2_ - this.§ ,§.y,2));
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§goto(addr472);
                                                                                                                        }
                                                                                                                        §§goto(addr323);
                                                                                                                     }
                                                                                                                     §§goto(addr533);
                                                                                                                  }
                                                                                                                  §§goto(addr323);
                                                                                                               }
                                                                                                               §§goto(addr481);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr394);
                                                                                                }
                                                                                                §§goto(addr382);
                                                                                             }
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr323);
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                              §§goto(addr313);
                                                                           }
                                                                           §§goto(addr323);
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                               addr472:
                                                               §§push(this.§"^§);
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  addr481:
                                                                  §§push(this.§+@§);
                                                                  §§push(_loc4_);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() * 2);
                                                                  }
                                                                  §§push(§§pop().height = §§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§pop().height = §§pop();
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        §§goto(addr505);
                                                                     }
                                                                     §§goto(addr323);
                                                                  }
                                                                  §§goto(addr526);
                                                               }
                                                               addr505:
                                                               §§push(this.§"^§);
                                                               §§push(-this.§"^§.height);
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  addr526:
                                                                  §§push(§§pop() / 2);
                                                               }
                                                               §§pop().y = §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  addr531:
                                                                  addr533:
                                                                  addr322:
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(this.§+Y§);
                                                                  }
                                                                  §§push(this.§+@§);
                                                                  §§push(-this.§+@§.height);
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     §§push(§§pop() / 2);
                                                                  }
                                                                  §§pop().y = §§pop();
                                                                  §§goto(addr547);
                                                               }
                                                               addr547:
                                                               this.§!g§ = false;
                                                               return;
                                                            }
                                                            §§goto(addr233);
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr178);
                                                }
                                             }
                                             §§goto(addr184);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr134);
                              }
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr323);
               }
               §§push(§§pop() / §§pop());
            }
            §§goto(addr72);
         }
         §§goto(addr76);
      }
      
      public function §9!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         do
         {
            if(this.§,B§.length <= 0)
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr61);
            }
            this.§'h§(0,true);
         }
         while(!_loc1_);
         
         this.§0w§();
         if(!(_loc1_ && this))
         {
            §§goto(addr61);
         }
         addr61:
         this.§0!%§("BIRD_SARDINE",this.§-`§,this.§4J§);
         if(_loc2_ || _loc2_)
         {
            this.§ i§(§?f§);
         }
      }
      
      protected function §0w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,!F§.§;v§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§ i§(§?!>§);
         }
      }
      
      public function §8!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§!G§);
            §§push(this.§8O§);
            if(_loc2_ || this)
            {
               §§push(this.§5=§);
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
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         §§push(this.§`F§ == param1);
         §§push(this.§`F§ == param1);
         if(_loc9_)
         {
            if(§§pop())
            {
               if(_loc9_)
               {
                  §§pop();
                  §§push(this.§-!E§);
                  if(_loc9_)
                  {
                     §§push(param2);
                     if(!_loc10_)
                     {
                        addr45:
                        if(§§pop() == §§pop())
                        {
                           §§push(true);
                           if(!(_loc10_ && this))
                           {
                              §§goto(addr54);
                           }
                           else
                           {
                              addr613:
                              §§pop();
                              if(_loc9_ || this)
                              {
                                 addr625:
                                 §§push(this.§[8§);
                                 §§push(-90 + _loc4_);
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc10_ && param2))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc10_)
                                       {
                                          addr644:
                                          §§push(_loc5_);
                                          if(_loc9_ || param3)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc9_)
                                             {
                                                addr656:
                                                if(§§pop() < §§pop())
                                                {
                                                   addr657:
                                                   §§push(_loc7_);
                                                   §§push(this.§5=§);
                                                   §§push(_loc7_);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      §§push(Math.abs(this.§[8§ - -90 - _loc5_) - _loc4_);
                                                      if(!_loc10_)
                                                      {
                                                         addr676:
                                                         §§push(§§pop() * §§pop());
                                                         §§push(_loc6_);
                                                         if(!_loc10_)
                                                         {
                                                            addr681:
                                                            §§push(§§pop() + §§pop() / §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  addr693:
                                                                  §§push(this.§!G§);
                                                                  if(_loc9_)
                                                                  {
                                                                     addr698:
                                                                     §§push(_loc8_);
                                                                     §§push(param1);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(this.§!G§);
                                                                        if(!(_loc10_ && param3))
                                                                        {
                                                                           addr710:
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc10_ && param2))
                                                                              {
                                                                                 addr728:
                                                                                 §§push(§§pop() + §§pop() / this.§1r§);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr733:
                                                                                    param1 = Number(§§pop());
                                                                                    §§push(this.§8O§);
                                                                                    §§push(_loc8_);
                                                                                    §§push(param2);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr742:
                                                                                       §§push(§§pop() - this.§8O§);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr745:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr748:
                                                                                             §§push(this.§1r§);
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                addr757:
                                                                                                §§push(§§pop() + §§pop() / §§pop());
                                                                                                if(!(_loc10_ && param3))
                                                                                                {
                                                                                                   addr766:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr790:
                                                                                                   if(§§pop() <= this.§5=§ * 0.45)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr797:
                                                                                                         this.§9!B§ = true;
                                                                                                         if(_loc10_ && param2)
                                                                                                         {
                                                                                                            addr841:
                                                                                                            this.§#!$§();
                                                                                                            this.§9!B§ = false;
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr807:
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr831:
                                                                                                         §§push(this.§1r§);
                                                                                                         §§push(this.§5=§);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr838:
                                                                                                            §§push(§§pop() * 0.8);
                                                                                                         }
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            §§goto(addr841);
                                                                                                         }
                                                                                                      }
                                                                                                      addr846:
                                                                                                      this.§!g§ = true;
                                                                                                      §§goto(addr850);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr810:
                                                                                                      §§push(Boolean(this.§9!B§));
                                                                                                      if(Boolean(this.§9!B§))
                                                                                                      {
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            §§goto(addr831);
                                                                                                         }
                                                                                                         §§goto(addr850);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr831);
                                                                                                }
                                                                                                param2 = §§pop();
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   this.§1r§ = _loc8_;
                                                                                                   addr775:
                                                                                                   this.§`F§ = param1;
                                                                                                   addr778:
                                                                                                   this.§-!E§ = param2;
                                                                                                   addr781:
                                                                                                   §§push(this.§1r§);
                                                                                                   if(_loc9_ || param2)
                                                                                                   {
                                                                                                      §§goto(addr790);
                                                                                                   }
                                                                                                   §§goto(addr831);
                                                                                                }
                                                                                                §§goto(addr797);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr790);
                                                                                       }
                                                                                       §§goto(addr838);
                                                                                    }
                                                                                    §§goto(addr745);
                                                                                 }
                                                                                 §§goto(addr766);
                                                                              }
                                                                              §§goto(addr748);
                                                                           }
                                                                           §§goto(addr838);
                                                                        }
                                                                     }
                                                                     §§goto(addr742);
                                                                  }
                                                                  §§goto(addr766);
                                                               }
                                                               §§goto(addr841);
                                                            }
                                                            §§goto(addr733);
                                                         }
                                                         §§goto(addr742);
                                                      }
                                                      §§goto(addr728);
                                                   }
                                                   §§goto(addr745);
                                                }
                                                §§goto(addr781);
                                             }
                                             §§goto(addr681);
                                          }
                                          §§goto(addr757);
                                       }
                                       §§goto(addr728);
                                    }
                                    §§goto(addr766);
                                 }
                                 §§goto(addr698);
                              }
                              §§goto(addr733);
                           }
                        }
                        else
                        {
                           this.§1r§ = Math.sqrt((param2 - this.§8O§) * (param2 - this.§8O§) + (param1 - this.§!G§) * (param1 - this.§!G§));
                           if(_loc9_)
                           {
                              §§push(this.§1r§);
                              if(!_loc10_)
                              {
                                 §§push(this.§5=§);
                                 if(!_loc10_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(param3);
                                          if(!_loc10_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   this.§1r§ = Math.sqrt((this.§-!E§ - this.§8O§) * (this.§-!E§ - this.§8O§) + (this.§`F§ - this.§!G§) * (this.§`F§ - this.§!G§));
                                                   §§push(false);
                                                   if(!_loc10_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr433:
                                                   §§pop();
                                                   §§push(this.§[8§);
                                                   if(_loc9_)
                                                   {
                                                      §§push(-90);
                                                      if(!(_loc10_ && this))
                                                      {
                                                         addr446:
                                                         §§push(_loc4_);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            addr455:
                                                            §§push(§§pop() + §§pop() + _loc5_);
                                                            if(!_loc10_)
                                                            {
                                                               addr460:
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(_loc9_ || param2)
                                                                  {
                                                                     §§push(this.§!G§);
                                                                     if(!(_loc10_ && param3))
                                                                     {
                                                                        §§push(_loc7_);
                                                                        §§push(param1);
                                                                        §§push(this.§!G§);
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           §§push(§§pop() * (§§pop() - §§pop()));
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §§push(this.§1r§);
                                                                              if(!(_loc10_ && this))
                                                                              {
                                                                                 §§push(§§pop() + §§pop() / §§pop());
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    addr516:
                                                                                    param1 = Number(§§pop());
                                                                                    §§push(this.§8O§);
                                                                                 }
                                                                                 §§push(_loc7_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(param2);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(this.§8O§);
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop() * §§pop() / this.§1r§);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   param2 = §§pop();
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr550:
                                                                                                      this.§1r§ = _loc7_;
                                                                                                      this.§`F§ = param1;
                                                                                                      if(!(_loc10_ && this))
                                                                                                      {
                                                                                                         this.§-!E§ = param2;
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr693);
                                                                                                      }
                                                                                                      §§goto(addr766);
                                                                                                   }
                                                                                                   addr566:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr569:
                                                                                                   §§push(§§pop() > _loc7_);
                                                                                                   if(§§pop() > _loc7_)
                                                                                                   {
                                                                                                      addr573:
                                                                                                      §§pop();
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr578:
                                                                                                         §§push(this.§[8§);
                                                                                                         §§push(-90);
                                                                                                         if(!(_loc10_ && param3))
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            if(!(_loc10_ && param3))
                                                                                                            {
                                                                                                               addr594:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc9_ || param3)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     addr609:
                                                                                                                     §§push(§§pop() > §§pop() - §§pop() + _loc5_);
                                                                                                                     if(§§pop() > §§pop() - §§pop() + _loc5_)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§goto(addr613);
                                                                                                                        }
                                                                                                                        §§goto(addr810);
                                                                                                                     }
                                                                                                                     §§goto(addr656);
                                                                                                                  }
                                                                                                                  §§goto(addr676);
                                                                                                               }
                                                                                                               §§goto(addr838);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr625);
                                                                                                      }
                                                                                                      §§goto(addr778);
                                                                                                   }
                                                                                                   §§goto(addr609);
                                                                                                }
                                                                                                §§goto(addr778);
                                                                                             }
                                                                                             §§goto(addr733);
                                                                                          }
                                                                                          §§goto(addr838);
                                                                                       }
                                                                                       §§goto(addr710);
                                                                                    }
                                                                                    §§goto(addr742);
                                                                                 }
                                                                                 §§goto(addr748);
                                                                              }
                                                                              §§goto(addr609);
                                                                           }
                                                                           §§goto(addr766);
                                                                        }
                                                                        §§goto(addr710);
                                                                     }
                                                                     §§goto(addr766);
                                                                  }
                                                                  addr850:
                                                                  return true;
                                                               }
                                                               §§push(this.§1r§);
                                                               §§goto(addr569);
                                                            }
                                                            §§goto(addr644);
                                                         }
                                                      }
                                                      §§goto(addr625);
                                                   }
                                                   §§goto(addr516);
                                                }
                                                §§goto(addr657);
                                             }
                                             else
                                             {
                                                §§push(this.§!G§);
                                                if(!(_loc10_ && param3))
                                                {
                                                   §§push(this.§5=§);
                                                   §§push(param1);
                                                   if(_loc9_)
                                                   {
                                                      §§push(this.§!G§);
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop() * (§§pop() - §§pop()) / this.§1r§);
                                                         if(_loc9_ || this)
                                                         {
                                                            §§push(Number(§§pop() + §§pop()));
                                                            if(_loc9_ || param1)
                                                            {
                                                               param1 = §§pop();
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  §§push(this.§8O§);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr193:
                                                                     §§push(this.§5=§);
                                                                     §§push(param2);
                                                                     §§push(this.§8O§);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           §§push(this.§1r§);
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 §§push(Number(§§pop() + §§pop()));
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    param2 = §§pop();
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       this.§1r§ = this.§5=§;
                                                                                       addr232:
                                                                                       this.§`F§ = param1;
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          this.§-!E§ = param2;
                                                                                          this.§[8§ = Math.atan2(-(this.§-!E§ - this.§8O§),this.§`F§ - this.§!G§);
                                                                                          if(!(_loc10_ && param3))
                                                                                          {
                                                                                             addr262:
                                                                                             §§push(this);
                                                                                             §§push(this.§[8§);
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() * (180 / Math.PI));
                                                                                             }
                                                                                             §§pop().§[8§ = §§pop();
                                                                                             if(!(_loc10_ && param3))
                                                                                             {
                                                                                                addr288:
                                                                                                if(this.mDragging == false)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(param1);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(§§pop() + this.§8J§);
                                                                                                      }
                                                                                                      §§pop().§`F§ = §§pop();
                                                                                                      §§push(this);
                                                                                                      §§push(param2);
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop() + this.§3!@§);
                                                                                                      }
                                                                                                      §§pop().§-!E§ = §§pop();
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         this.§[8§ = -160;
                                                                                                         addr317:
                                                                                                         §§push(12);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr321:
                                                                                                            _loc4_ = §§pop();
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§push(5);
                                                                                                               if(_loc9_ || param2)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  addr335:
                                                                                                                  §§push(Number(4));
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(this.§5=§);
                                                                                                                        §§push(2);
                                                                                                                        if(_loc9_ || param3)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(!(_loc10_ && param1))
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              §§push(this.§1r§);
                                                                                                                              if(_loc9_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(_loc9_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(this.§[8§);
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   addr402:
                                                                                                                                                   §§push(-90);
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         addr409:
                                                                                                                                                         §§push(§§pop() > §§pop() - §§pop() + _loc5_);
                                                                                                                                                         if(!(_loc10_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr429:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr433);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr460);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr831);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr594);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr446);
                                                                                                                                                }
                                                                                                                                                §§goto(addr733);
                                                                                                                                             }
                                                                                                                                             §§goto(addr657);
                                                                                                                                          }
                                                                                                                                          §§goto(addr429);
                                                                                                                                       }
                                                                                                                                       §§goto(addr609);
                                                                                                                                    }
                                                                                                                                    §§goto(addr573);
                                                                                                                                 }
                                                                                                                                 §§goto(addr409);
                                                                                                                              }
                                                                                                                              §§goto(addr766);
                                                                                                                           }
                                                                                                                           §§goto(addr578);
                                                                                                                        }
                                                                                                                        §§goto(addr625);
                                                                                                                     }
                                                                                                                     §§goto(addr807);
                                                                                                                  }
                                                                                                                  §§goto(addr625);
                                                                                                               }
                                                                                                               §§goto(addr335);
                                                                                                            }
                                                                                                            §§goto(addr778);
                                                                                                         }
                                                                                                         §§goto(addr335);
                                                                                                      }
                                                                                                      §§goto(addr775);
                                                                                                   }
                                                                                                   §§goto(addr846);
                                                                                                }
                                                                                                §§goto(addr317);
                                                                                             }
                                                                                             §§goto(addr550);
                                                                                          }
                                                                                          §§goto(addr797);
                                                                                       }
                                                                                       §§goto(addr831);
                                                                                    }
                                                                                    §§goto(addr232);
                                                                                 }
                                                                                 §§goto(addr321);
                                                                              }
                                                                              §§goto(addr455);
                                                                           }
                                                                           §§goto(addr609);
                                                                        }
                                                                        §§goto(addr409);
                                                                     }
                                                                     §§goto(addr710);
                                                                  }
                                                                  §§goto(addr321);
                                                               }
                                                               §§goto(addr566);
                                                            }
                                                            §§goto(addr321);
                                                         }
                                                         §§goto(addr728);
                                                      }
                                                      §§goto(addr742);
                                                   }
                                                   §§goto(addr838);
                                                }
                                                §§goto(addr193);
                                             }
                                          }
                                          §§goto(addr609);
                                       }
                                       §§goto(addr831);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr766);
                              }
                              §§goto(addr402);
                           }
                           §§goto(addr262);
                        }
                        §§goto(addr693);
                     }
                     §§goto(addr838);
                  }
                  §§goto(addr733);
               }
               addr54:
               return §§pop();
            }
            §§goto(addr45);
         }
         §§goto(addr288);
      }
      
      protected function §#!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!F§.§;v§("SlingshotStreched");
         }
      }
      
      public function §1!>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§-`§);
            §§push(this.§4J§);
            if(!_loc3_)
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
         if(!(_loc7_ && param2))
         {
            §§push(§§pop() - this.§-`§);
            if(!(_loc7_ && param2))
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc7_ && param3))
            {
               this.§-`§ = param1;
            }
            §§push(param2);
            if(!(_loc7_ && param2))
            {
               §§push(§§pop() - this.§4J§);
               if(_loc6_ || param2)
               {
                  addr64:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!(_loc7_ && param2))
               {
                  this.§4J§ = param2;
                  if(!_loc7_)
                  {
                     addr78:
                     §§push(this);
                     §§push(this.§%!4§);
                     if(!(_loc7_ && param3))
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§%!4§ = §§pop();
                     if(!(_loc7_ && param2))
                     {
                        §§push(this);
                        §§push(this.§8O§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§8O§ = §§pop();
                        if(!(_loc7_ && param3))
                        {
                           §§push(this);
                           §§push(this.§-!E§);
                           if(!(_loc7_ && param1))
                           {
                              §§push(§§pop() + _loc5_);
                           }
                           §§pop().§-!E§ = §§pop();
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr185);
                        }
                        §§push(this);
                        §§push(this.§!G§);
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop() + _loc4_);
                        }
                        §§pop().§!G§ = §§pop();
                        if(_loc6_)
                        {
                           §§push(this);
                           §§push(this.§`F§);
                           if(!(_loc7_ && param3))
                           {
                              §§push(§§pop() + _loc4_);
                           }
                           §§pop().§`F§ = §§pop();
                           if(!(_loc7_ && param3))
                           {
                              if(param3)
                              {
                                 §§goto(addr185);
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr195);
                     }
                  }
                  addr185:
                  this.§'P§(0);
                  if(!(_loc7_ && param2))
                  {
                     addr195:
                     this.§!g§ = true;
                  }
                  return;
               }
               §§goto(addr78);
            }
            §§goto(addr64);
         }
         §§goto(addr34);
      }
      
      public function §8m§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§!!'§ = null;
         _loc2_ = this.§,B§[this.§>!;§];
         §§push(this.§1r§);
         if(_loc5_)
         {
            §§push(§§pop() / this.§5=§);
            if(!(_loc4_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_ != null)
            {
               if(_loc5_ || _loc2_)
               {
                  addr73:
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(_loc5_ || _loc3_)
                     {
                        addr85:
                        §§push(Number(§4!C§.§?1§));
                        if(!(_loc4_ && _loc3_))
                        {
                           addr109:
                           §§push(Number(§§pop()));
                           if(_loc5_ || _loc1_)
                           {
                              §§goto(addr117);
                           }
                           §§goto(addr126);
                        }
                     }
                     §§goto(addr117);
                  }
                  else
                  {
                     §§push(Number(§4!C§.§,!N§));
                  }
                  §§goto(addr109);
               }
               §§goto(addr85);
            }
            addr117:
            _loc1_ = §§pop();
            §§push(_loc1_);
            if(!(_loc4_ && _loc3_))
            {
               addr126:
               §§push(§§pop() * _loc3_);
            }
            return §§pop();
         }
         §§goto(addr73);
      }
      
      public function §#!6§() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§!!'§ = null;
         if(!_loc3_)
         {
            if(this.§,B§.length <= this.§>!;§)
            {
               return null;
            }
            if(!_loc3_)
            {
               _loc1_ = this.§,B§[this.§>!;§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §"5§() : Point
      {
         return new Point(this.§!G§,this.§8O§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§!!'§ = null;
         if(!_loc5_)
         {
            this.§`!<§(param1);
            if(this.§!g§)
            {
               this.§'P§(param1);
               if(!_loc5_)
               {
                  addr32:
                  §§push(this);
                  §§push(this.§&!,§);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§&!,§ = §§pop();
                  if(_loc4_)
                  {
                     if(this.§&!,§ < 0)
                     {
                        addr51:
                        this.§&!,§ = 0;
                        §§goto(addr54);
                     }
                     addr54:
                     if(this.mSlingShotState != §45§)
                     {
                        this.§-]§(param1,param2);
                        _loc3_ = null;
                        if(!_loc5_)
                        {
                           if(this.§,B§.length > 0)
                           {
                              if(_loc4_ || this)
                              {
                                 _loc3_ = this.§,B§[this.§>!;§];
                              }
                              §§goto(addr273);
                           }
                           if(_loc3_)
                           {
                              _loc3_.§>]§(param1);
                           }
                           if(!_loc3_)
                           {
                              if(!_loc5_)
                              {
                                 this.§ i§(§45§);
                              }
                              §§goto(addr273);
                           }
                           else
                           {
                              §§push(this.mSlingShotState);
                              if(_loc4_)
                              {
                                 §§push(§-!5§);
                                 if(_loc4_ || param2)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(this.§&!,§ <= 0)
                                       {
                                          addr117:
                                          this.§ i§(§&!E§);
                                          if(_loc4_ || _loc3_)
                                          {
                                             _loc3_.§?!0§();
                                             if(_loc4_)
                                             {
                                                addr141:
                                             }
                                             else
                                             {
                                                addr150:
                                                §§push(_loc3_.§%K§);
                                                if(_loc4_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      this.§ i§(§?f§);
                                                   }
                                                }
                                             }
                                             §§goto(addr273);
                                          }
                                          else
                                          {
                                             addr163:
                                             §§push(_loc3_.§5!&§());
                                             if(_loc4_)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(_loc3_);
                                                   §§push(this.§`F§);
                                                   if(_loc4_ || param2)
                                                   {
                                                      §§push(_loc3_.radius);
                                                      if(_loc4_ || param2)
                                                      {
                                                         §§push(§§pop() * Math.cos(this.§[8§ / (180 / Math.PI)));
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§goto(addr205);
                                                         }
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                }
                                                §§goto(addr205);
                                             }
                                          }
                                          addr205:
                                          §§push(§§pop() - §§pop());
                                          §§push(this.§-!E§);
                                          if(_loc4_ || this)
                                          {
                                             addr214:
                                             §§push(_loc3_.radius);
                                             if(_loc4_ || param2)
                                             {
                                                §§push(§§pop() * Math.sin(this.§[8§ / (180 / Math.PI)));
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().setPosition(§§pop(),§§pop());
                                          if(this.§!o§)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(this);
                                                §§push(this.§1r§);
                                                if(_loc4_ || this)
                                                {
                                                   §§push(this.§5=§);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr270:
                                                      §§push(§§pop() / §§pop());
                                                      §§push(this.§[8§);
                                                   }
                                                   §§pop().§7w§(§§pop(),§§pop());
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr270);
                                             }
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr141);
                                    }
                                    else
                                    {
                                       §§push(this.mSlingShotState);
                                       if(!_loc5_)
                                       {
                                          addr146:
                                          §§push(§&!E§);
                                          if(!_loc5_)
                                          {
                                             addr149:
                                             if(§§pop() == §§pop())
                                             {
                                                §§goto(addr150);
                                             }
                                             else
                                             {
                                                addr161:
                                                §§push(this.mSlingShotState);
                                                §§push(§?f§);
                                             }
                                             §§goto(addr273);
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr163);
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr161);
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr146);
                           }
                        }
                        §§goto(addr117);
                     }
                     else
                     {
                        addr58:
                     }
                     addr273:
                     return;
                  }
                  §§goto(addr58);
               }
               §§goto(addr51);
            }
            §§goto(addr32);
         }
         §§goto(addr51);
      }
      
      public function §-R§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§!!'§ = null;
         if(_loc6_ || this)
         {
            if(this.§,B§.length > 0)
            {
               if(_loc6_)
               {
                  _loc5_ = this.§,B§[this.§>!;§];
                  addr60:
                  if(!_loc5_)
                  {
                     if(!(_loc7_ && this))
                     {
                        §§goto(addr69);
                     }
                     else
                     {
                        addr83:
                        this.§7w§(param3,param4);
                     }
                  }
                  else
                  {
                     _loc5_.setPosition(param1,param2);
                     if(_loc6_ || this)
                     {
                        §§goto(addr83);
                     }
                  }
                  return;
                  addr43:
               }
               addr69:
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr43);
      }
      
      protected function §7w§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§!!'§ = null;
         if(_loc5_ || _loc3_)
         {
            this.§8J§ = §@!,§;
            this.§3!@§ = §`u§;
            if(this.§,B§.length > 0)
            {
               if(!_loc4_)
               {
                  _loc3_ = this.§,B§[this.§>!;§];
                  addr57:
                  if(!_loc3_)
                  {
                     return;
                  }
                  this.mDragging = false;
                  this.§!o§ = false;
                  this.§9n§ = new Date().time;
                  if(!(_loc4_ && this))
                  {
                     this.§?V§.§>!A§(_loc3_,param1,param2);
                     this.§'h§(this.§>!;§,_loc3_.§4b§ > 0);
                     this.§=!;§();
                  }
                  if(this.§>!;§ >= this.§,B§.length)
                  {
                     this.§ i§(§45§);
                     addr113:
                  }
                  else
                  {
                     this.§ i§(§-!5§);
                  }
                  return;
                  addr40:
               }
               §§goto(addr113);
            }
            §§goto(addr57);
         }
         §§goto(addr40);
      }
      
      protected function §=!;§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc3_ || _loc2_)
         {
            §§push(§,!F§);
            §§push("BirdShot");
            if(_loc3_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§;v§(§§pop());
         }
      }
      
      public function §-]§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§>!;§);
         if(_loc6_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < this.§,B§.length)
            {
               §§push(this.mSlingShotState);
               if(!_loc5_)
               {
                  if(§§pop() == §?!>§)
                  {
                     if(!_loc5_)
                     {
                        this.§,B§[_loc4_].update(param1,true,param2);
                        if(_loc6_ || this)
                        {
                        }
                     }
                     break;
                  }
                  this.§,B§[_loc4_].update(param1,false,param2);
                  if(!_loc6_)
                  {
                     continue loop0;
                  }
                  _loc4_++;
                  if(!_loc6_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§!!'§ = null;
         var _loc2_:* = 0;
         if(_loc6_ || _loc1_)
         {
            this.mDragging = false;
            if(!(_loc5_ && _loc2_))
            {
               this.§8!2§();
               if(_loc6_ || _loc1_)
               {
                  addr48:
                  if(this.§];§ >= this.§,B§.length)
                  {
                     if(_loc5_)
                     {
                        addr58:
                        _loc1_ = this.§,B§[this.§];§];
                        if(_loc6_)
                        {
                           §§push(§6<§.§6H§(_loc1_.name).score);
                           if(!(_loc5_ && _loc1_))
                           {
                              §§push(int(§§pop()));
                           }
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              §§push(this.§?V§);
                              §§push(_loc2_);
                              §§push(§0!'§.§[]§);
                              §§push(true);
                              §§push(_loc1_.x);
                              §§push(_loc1_.y);
                              if(!_loc5_)
                              {
                                 §§push(3);
                                 if(!_loc5_)
                                 {
                                    addr109:
                                    §§push(§§pop() - §§pop());
                                    §§push(§<!6§.§-S§(_loc1_.name));
                                 }
                                 §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr121:
                                    _loc1_.§`q§(-1,true);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       var _loc3_:*;
                                       §§push((_loc3_ = this).§];§);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                       if(_loc6_ || this)
                                       {
                                          _loc3_.§];§ = _loc4_;
                                       }
                                    }
                                 }
                                 return true;
                              }
                              §§goto(addr109);
                           }
                        }
                        §§goto(addr121);
                     }
                  }
                  §§goto(addr58);
               }
               return false;
            }
            §§goto(addr48);
         }
         §§goto(addr58);
      }
      
      public function §+v§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!!'§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§,B§)
         {
            if(_loc6_)
            {
               §§push(_loc1_);
               if(_loc6_)
               {
                  §§push(int(§§pop() + §6<§.§6H§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §7!@§() : int
      {
         return this.§?L§;
      }
      
      public function §`!<§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         §§push(this.§3!,§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(0);
            if(_loc3_)
            {
               if(§§pop() >= §§pop())
               {
                  §§push(this);
                  §§push(this.§3!,§);
                  if(_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§3!,§ = §§pop();
                  if(!(_loc4_ && _loc2_))
                  {
                     addr49:
                     if(this.§3!,§ <= 0)
                     {
                        §§push(this.§?V§);
                        if(_loc3_)
                        {
                           §§push(§§pop().objects);
                           if(!(_loc4_ && param1))
                           {
                              §§push(§§pop().§@,§(this.§!G§,this.§%!4§));
                              if(_loc3_)
                              {
                                 §§push(int(§§pop()));
                                 if(!(_loc4_ && this))
                                 {
                                    addr87:
                                    _loc2_ = §§pop();
                                    §§push(_loc2_);
                                 }
                                 if(§§pop() < 0)
                                 {
                                    this.§1!>§(0.1);
                                    this.§3!,§ = 0;
                                    if(!_loc3_)
                                    {
                                    }
                                    §§goto(addr157);
                                 }
                                 else
                                 {
                                    §§push(this.§?V§);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop().objects);
                                       if(!_loc4_)
                                       {
                                          §§push(_loc2_);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop().§1F§(§§pop()));
                                             if(_loc3_)
                                             {
                                                §§push(§§pop().§1k§);
                                                if(_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         this.§3!,§ = -1;
                                                      }
                                                      else
                                                      {
                                                         addr153:
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   else
                                                   {
                                                      addr148:
                                                      §§push(this.§?V§.objects.§1F§(_loc2_).§switch§());
                                                   }
                                                   §§goto(addr157);
                                                }
                                                if(§§pop())
                                                {
                                                   addr150:
                                                   this.§3!,§ = 2000;
                                                   §§goto(addr153);
                                                }
                                                else
                                                {
                                                   this.§3!,§ = 500;
                                                   §§goto(addr157);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr148);
                                 }
                              }
                              §§goto(addr87);
                           }
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr153);
               }
               addr157:
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function §4§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         do
         {
            §§push(this.§?V§.objects.§@,§(this.§!G§,this.§%!4§));
            if(_loc4_ || this)
            {
               §§push(int(§§pop()));
               if(!_loc3_)
               {
                  _loc2_ = §§pop();
                  if(!_loc3_)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        §§push(-1);
                        if(_loc4_)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr118:
                                 this.§3!,§ = -1;
                                 addr68:
                              }
                              §§goto(addr121);
                           }
                           this.§1!>§(0.1);
                           if(!(_loc3_ && _loc1_))
                           {
                              §§push(_loc1_);
                              if(_loc4_ || _loc2_)
                              {
                                 addr97:
                                 §§push(§§pop());
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() - 1);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr113:
                                       _loc1_ = §§pop();
                                       §§push(0);
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr118);
                        }
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr68);
               }
               §§goto(addr113);
            }
            §§goto(addr97);
         }
         while(§§pop() > §§pop());
         
         if(!_loc3_)
         {
            §§goto(addr118);
         }
         addr121:
      }
      
      public function §?!<§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§,!7§);
            if(!(_loc4_ && param2))
            {
               §§push(param1);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(_loc3_)
                  {
                     §§pop().x = §§pop();
                     if(!(_loc4_ && this))
                     {
                        addr68:
                        §§push(this.§,!7§);
                        §§push(param2);
                        if(!_loc4_)
                        {
                           addr72:
                           §§pop().y = -§§pop();
                        }
                        §§goto(addr72);
                     }
                     return;
                  }
               }
               §§goto(addr72);
            }
         }
         §§goto(addr68);
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.mSlingShotState == §?f§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr43:
                     §§pop();
                     if(_loc2_)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(!_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc3_ && _loc3_))
                           {
                              addr73:
                              if(§§pop())
                              {
                                 if(_loc2_ || param1)
                                 {
                                 }
                              }
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr73);
                     }
                     §§push(true);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr73);
            }
            §§goto(addr43);
         }
         addr86:
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.mSlingShotState == §?f§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr58:
                     §§pop();
                     §§push(this.§1r§);
                     §§push(this.§5=§);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(§§pop() * §,i§);
                     }
                     §§push(§§pop() > §§pop());
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr58);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mDragging = false;
            if(_loc3_)
            {
               this.§ i§(§?f§);
            }
         }
         var _loc1_:§!!'§ = this.§,B§[this.§>!;§];
         if(!_loc2_)
         {
            _loc1_.§`q§(§%h§.§>!+§);
         }
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            this.mDragging = true;
         }
         var _loc1_:§!!'§ = this.§,B§[this.§>!;§];
         if(_loc3_ || _loc1_)
         {
            _loc1_.§`q§(§%h§.§8K§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§!o§ = true;
         }
      }
      
      protected function §'h§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§!!'§ = null;
         if(_loc4_)
         {
            if(param1 < 0)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
            if(this.§,B§[param1])
            {
               if(_loc4_ || this)
               {
                  _loc3_ = this.§,B§[param1];
                  if(!_loc5_)
                  {
                     this.§-!!§.removeChild(_loc3_.sprite);
                     if(_loc5_ && _loc3_)
                     {
                     }
                     §§goto(addr112);
                  }
                  if(param2)
                  {
                     if(!(_loc5_ && param1))
                     {
                        this.§+L§(this.§,B§[param1]);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr112);
                  }
                  _loc3_.dispose();
                  if(_loc4_)
                  {
                     this.§,B§[param1] = null;
                  }
               }
            }
            §§goto(addr112);
         }
         addr112:
         this.§,B§.splice(param1,1);
      }
      
      public function §+L§(param1:§!!'§) : void
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
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               §§push(this.§?V§);
               break;
            }
            §§push(_loc4_);
            if(!(_loc10_ && param1))
            {
               §§push(§§pop() + Math.random() * (720 / _loc3_));
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                     §§push(_loc4_ = §§pop());
                     if(!_loc10_)
                     {
                        addr58:
                        §§push(§§pop() / (180 / Math.PI));
                        if(_loc9_ || _loc3_)
                        {
                           _loc6_ = §§pop();
                           if(!(_loc10_ && _loc2_))
                           {
                              §§push(param1.sprite);
                              if(!(_loc10_ && _loc3_))
                              {
                                 §§push(-§§pop().width);
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    §§push(§ !§.§`J§);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc9_)
                                          {
                                             §§push(_loc7_ = §§pop());
                                             if(!(_loc10_ && this))
                                             {
                                                addr116:
                                                §§push(Math.random() * -_loc7_);
                                                if(_loc9_)
                                                {
                                                   §§push(2);
                                                   if(!_loc10_)
                                                   {
                                                      addr127:
                                                      §§push(§§pop() + §§pop() * §§pop());
                                                      if(_loc9_)
                                                      {
                                                         addr130:
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            addr138:
                                                            _loc7_ = §§pop();
                                                            addr143:
                                                            §§push(Number(-param1.sprite.height * § !§.§`J§));
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               addr176:
                                                               §§push(_loc8_ = §§pop());
                                                               §§push(Math.random() * -_loc8_);
                                                               if(!_loc10_)
                                                               {
                                                                  addr174:
                                                                  §§push(§§pop() * 2);
                                                               }
                                                               §§push(Number(§§pop() + §§pop()));
                                                            }
                                                            _loc8_ = §§pop();
                                                            §§push(this.§?V§);
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().particles);
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               §§push(§<!6§.§9<§);
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  §§push(§2!H§.§"!5§);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(§<!6§.§!E§);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(param1.x);
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(param1.y);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc8_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr230:
                                                                                       §§push(1500);
                                                                                       if(_loc9_ || this)
                                                                                       {
                                                                                          §§push("");
                                                                                          if(_loc9_ || _loc3_)
                                                                                          {
                                                                                             §§push(§<!6§.§4!8§(param1.name));
                                                                                             if(!(_loc10_ && _loc2_))
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop() * Math.cos(_loc6_));
                                                                                                }
                                                                                                §§push(_loc2_);
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() * Math.sin(_loc6_));
                                                                                                   }
                                                                                                }
                                                                                                §§push(5);
                                                                                                §§push(_loc2_);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(§§pop() * 20);
                                                                                                }
                                                                                                §§pop().§4#§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                {
                                                                                                   _loc5_++;
                                                                                                   if(!(_loc9_ || param1))
                                                                                                   {
                                                                                                      §§goto(addr339);
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr339);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr329:
                                                                                             §§push(0);
                                                                                          }
                                                                                          §§pop().§4#§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                                                          §§goto(addr339);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr328:
                                                                                          §§push("");
                                                                                       }
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr327:
                                                                                       §§push(1000);
                                                                                    }
                                                                                    §§goto(addr328);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr325:
                                                                                 §§push(param1.y);
                                                                              }
                                                                              §§goto(addr327);
                                                                           }
                                                                           §§goto(addr230);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr323:
                                                                        §§push(param1.x);
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr321:
                                                                     §§push(§<!6§.§!E§);
                                                                  }
                                                                  §§goto(addr323);
                                                               }
                                                               else
                                                               {
                                                                  addr319:
                                                                  §§push(§2!H§.§"!5§);
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            else
                                                            {
                                                               addr317:
                                                               §§push(§<!6§.§=#§);
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                         §§goto(addr143);
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                }
                                                §§goto(addr174);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr116);
                                    }
                                    §§goto(addr127);
                                 }
                              }
                              §§goto(addr138);
                           }
                           addr339:
                           return;
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr116);
               }
               §§goto(addr138);
            }
            §§goto(addr58);
         }
         §§goto(addr317);
         §§push(§§pop().particles);
      }
      
      public function §&I§(param1:§!!'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§'h§(this.§,B§.indexOf(param1));
         }
      }
      
      public function §5B§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:§!!'§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§!!'§ = null;
         var _loc2_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() >= this.§,B§.length - 1)
               {
                  if(_loc7_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§-!!§);
                        while(true)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr320);
                           }
                           §§push(this.§-!!§);
                           if(!(_loc6_ && _loc1_))
                           {
                              §§pop().removeChildAt(0);
                              if(!_loc7_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                        }
                        §§push(0);
                        if(!(_loc6_ && this))
                        {
                           _loc2_ = §§pop();
                           if(!(_loc6_ && this))
                           {
                              addr291:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 break loop0;
                              }
                              addr315:
                           }
                           §§goto(addr320);
                        }
                        break loop0;
                     }
                  }
                  §§goto(addr291);
               }
               else
               {
                  _loc1_ = this.§,B§[_loc2_];
                  if(!(_loc6_ && _loc1_))
                  {
                     §§push(_loc1_.§%K§);
                     if(!_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || _loc2_)
                              {
                                 addr60:
                                 §§pop();
                                 addr189:
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(_loc2_ == 0);
                                 }
                                 _loc5_ = this.§,B§[_loc2_];
                                 if(_loc7_ || this)
                                 {
                                    this.§,B§.splice(_loc2_,1);
                                    if(!(_loc6_ && _loc1_))
                                    {
                                       this.§,B§.splice(_loc2_ + 1,0,_loc5_);
                                       if(!_loc7_)
                                       {
                                       }
                                       addr232:
                                       _loc2_++;
                                       continue;
                                    }
                                    _loc2_ = int(Math.max(-1,_loc2_ - 2));
                                 }
                                 §§goto(addr232);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              addr123:
                              §§push(Number(Math.sqrt((this.§-`§ - this.§,B§[_loc2_ + 1].x) * (this.§-`§ - this.§,B§[_loc2_ + 1].x) + (this.§4J§ - this.§,B§[_loc2_ + 1].y) * (this.§4J§ - this.§,B§[_loc2_ + 1].y))));
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    _loc4_ = §§pop();
                                    addr185:
                                    §§push(_loc3_);
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr189);
                                 }
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr232);
                        }
                        else
                        {
                           §§push(Number(Math.sqrt((this.§-`§ - this.§,B§[_loc2_].x) * (this.§-`§ - this.§,B§[_loc2_].x) + (this.§4J§ - this.§,B§[_loc2_].y) * (this.§4J§ - this.§,B§[_loc2_].y))));
                           if(_loc7_ || _loc2_)
                           {
                              _loc3_ = §§pop();
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              §§goto(addr123);
                           }
                        }
                        §§goto(addr185);
                     }
                  }
                  §§goto(addr60);
               }
            }
            break;
         }
         for(; §§pop() < this.§,B§.length; §§goto(addr315))
         {
            _loc1_ = this.§,B§[_loc2_];
            if(_loc7_ || _loc2_)
            {
               this.§-!!§.addChildAt(_loc1_.sprite,0);
               if(_loc6_)
               {
                  continue;
               }
            }
            _loc2_++;
         }
         addr320:
      }
      
      public function §'>§(param1:Number, param2:Number) : §!!'§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(_loc3_ < this.§,B§.length)
         {
            if(this.§,B§[_loc3_])
            {
               if(_loc5_)
               {
                  if(this.§,B§[_loc3_].isInCoordinates(param1,param2))
                  {
                     if(!(_loc4_ && this))
                     {
                        return this.§,B§[_loc3_];
                     }
                     break;
                  }
               }
            }
            _loc3_++;
            if(_loc4_ && _loc3_)
            {
               break;
            }
         }
         return null;
      }
      
      public function §2u§(param1:Number, param2:Number) : §4!C§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(this.§-`§);
               if(_loc4_ || _loc3_)
               {
                  §§push(this.§5=§);
                  if(_loc4_)
                  {
                     §§push(4);
                     if(_loc4_)
                     {
                        §§push(§§pop() / §§pop());
                        if(!_loc3_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc3_)
                           {
                              addr49:
                              §§push(§§pop() >= §§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc3_ && param2))
                                 {
                                    if(§§pop())
                                    {
                                       §§pop();
                                       if(_loc4_)
                                       {
                                          §§push(param1);
                                          if(!_loc3_)
                                          {
                                             addr74:
                                             §§push(this.§-`§);
                                             §§push(this.§5=§);
                                             if(_loc4_)
                                             {
                                                addr78:
                                                §§push(4);
                                                if(!(_loc3_ && param2))
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(§§pop() <= §§pop());
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§goto(addr115);
                                                         }
                                                         §§goto(addr124);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr132);
                                    }
                                    addr115:
                                    §§push(§§pop());
                                    if(!(_loc3_ && this))
                                    {
                                       addr123:
                                       if(§§pop())
                                       {
                                          addr124:
                                          §§pop();
                                          if(_loc4_ || param2)
                                          {
                                             addr132:
                                             §§push(param2);
                                             if(!_loc3_)
                                             {
                                                §§push(this.§4J§);
                                                if(_loc4_ || param2)
                                                {
                                                   §§push(this.§5=§);
                                                   if(!_loc3_)
                                                   {
                                                      addr150:
                                                      §§push(§§pop() >= §§pop() - §§pop() / 4);
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§goto(addr169);
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                }
                                                §§goto(addr150);
                                             }
                                          }
                                          §§goto(addr183);
                                       }
                                       addr169:
                                       §§goto(addr170);
                                    }
                                    addr170:
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          addr173:
                                          §§pop();
                                          §§goto(addr189);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          addr189:
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr183:
                                             §§push(this.§4J§ <= this.§%!4§);
                                          }
                                          return this;
                                       }
                                    }
                                    return null;
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr74);
                        }
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr78);
               }
               §§goto(addr49);
            }
            §§goto(addr183);
         }
         §§goto(addr173);
      }
      
      public function §-p§(param1:§@Z§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§!!'§ = null;
         var _loc4_:§#H§ = null;
         if(!(_loc5_ && _loc3_))
         {
            param1.§!N§ = this.§-`§;
            if(_loc6_)
            {
               param1.§#!4§ = this.§4J§;
            }
         }
         var _loc2_:* = Number(0);
         while(_loc2_ < this.§,B§.length)
         {
            _loc3_ = this.§,B§[_loc2_];
            (_loc4_ = new §#H§()).x = _loc3_.x;
            if(!_loc5_)
            {
               _loc4_.y = _loc3_.y;
               if(_loc5_)
               {
                  continue;
               }
            }
            _loc4_.id = _loc3_.name;
            if(_loc6_ || param1)
            {
               param1.§+!D§(_loc4_);
               if(_loc5_)
               {
                  continue;
               }
            }
            §§push(_loc2_);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
               if(!_loc5_)
               {
                  addr109:
                  §§push(Number(§§pop()));
               }
               _loc2_ = §§pop();
               continue;
            }
            §§goto(addr109);
         }
      }
      
      public function §&!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§,B§.length > 0)
         {
            this.§&I§(this.§,B§[0]);
            if(!(_loc1_ || _loc1_))
            {
               break;
            }
         }
      }
      
      public function §-!C§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(true)
         {
            §§push(_loc4_);
            if(!_loc5_)
            {
               if(§§pop() >= this.§,B§.length)
               {
                  §§push(this.§-`§);
                  if(!_loc5_)
                  {
                     break;
                  }
                  addr147:
                  §§push(§§pop() > param1.y);
                  if(§§pop() > param1.y)
                  {
                     if(!(_loc5_ && this))
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           addr177:
                           if(this.§4J§ < param2.y)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 addr185:
                                 _loc3_.push(this);
                              }
                           }
                        }
                        §§goto(addr188);
                     }
                  }
                  §§goto(addr177);
               }
               else
               {
                  if(this.§,B§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     if(_loc6_ || param1)
                     {
                        _loc3_.push(this.§,B§[_loc4_]);
                        if(!(_loc5_ && param1))
                        {
                           addr60:
                           §§push(_loc4_);
                           if(!(_loc5_ && param2))
                           {
                              §§push(§§pop() + 1);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr188);
                     }
                     addr122:
                     §§push(this.§-`§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() < param2.x);
                        if(!_loc5_)
                        {
                           addr131:
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr135);
                              }
                           }
                           §§goto(addr147);
                        }
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr60);
               }
            }
            break;
         }
         §§push(§§pop() > param1.x);
         if(_loc6_)
         {
            §§push(§§pop());
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_ || param2)
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        §§goto(addr122);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr147);
               }
               §§goto(addr131);
            }
            §§goto(addr147);
         }
         addr135:
         §§pop();
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§4J§);
            if(_loc6_)
            {
               §§goto(addr147);
            }
            §§goto(addr177);
         }
         addr188:
         return _loc3_;
      }
      
      public function §4!#§() : Array
      {
         return [this.§-!>§,this.§4&§];
      }
      
      public function §,;§(param1:String, param2:Number, param3:Number) : §!!'§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§!!'§ = this.§0!%§(param1,param2,param3);
         if(_loc5_ || param2)
         {
            this.§5B§();
         }
         return _loc4_;
      }
      
      public function §@!L§() : Number
      {
         return this.§,B§.length;
      }
      
      public function §+A§() : Boolean
      {
         return this.§>#§;
      }
   }
}
