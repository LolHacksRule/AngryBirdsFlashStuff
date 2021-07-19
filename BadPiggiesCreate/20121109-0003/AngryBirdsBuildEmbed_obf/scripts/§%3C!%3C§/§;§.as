package §<!<§
{
   import § !r§.§`![§;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!0§.§2! §;
   import §-!`§.§7!J§;
   import §-!`§.§8!p§;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import §1?§.§+!§;
   import §=U§.§;P§;
   import §=U§.§>?§;
   import §?!6§.§1!!§;
   import §?!6§.§@T§;
   import §@_§.§7!-§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;§
   {
      
      public static const §!!0§:int = 0;
      
      public static const §3P§:int = 1;
      
      public static const §>!A§:int = 2;
      
      public static const §>!]§:int = 3;
      
      public static const §#!f§:int = 5;
      
      public static const §+'§:int = 3151368;
      
      protected static const §2B§:int = 8;
      
      protected static const §,0§:int = 0;
      
      public static const §5B§:Number = 46.25;
      
      public static const § !3§:Number = 52.5;
      
      protected static var §9!@§:Texture;
      
      public static const §'D§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §!!0§ = 0;
            §3P§ = 1;
            §>!A§ = 2;
            §>!]§ = 3;
            §#!f§ = 5;
            if(_loc1_ || _loc1_)
            {
               §+'§ = 3151368;
               §2B§ = 8;
               §,0§ = 0;
            }
            §5B§ = 46.25;
            § !3§ = 52.5;
            if(_loc1_)
            {
               addr82:
               §'D§ = 0.4;
            }
            return;
         }
         §§goto(addr82);
      }
      
      public var §-n§:§7E§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §;!F§:Number;
      
      protected var §]J§:Number;
      
      protected var §-!L§:Number;
      
      protected var §1!r§:Number;
      
      protected var §,!U§:Number;
      
      public var §6!`§:Number;
      
      public var §<>§:Boolean = false;
      
      protected var §>@§:Number;
      
      public var mBirds:Vector.<§]K§>;
      
      public var §1!6§:int;
      
      public var §@!_§:int;
      
      public var §[c§:Number;
      
      public var §0G§:Sprite;
      
      public var §[9§:int = 0;
      
      public var §"!K§:Number = 0;
      
      public var §#J§:Array;
      
      public var §8!D§:Array;
      
      public var mSlingShotState:int;
      
      public var §1!J§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §2f§:Boolean = false;
      
      public var §""§:Number;
      
      protected var §>E§:Sprite;
      
      protected var §7W§:§8!p§;
      
      protected var §3!l§:§8!p§;
      
      protected var §[!"§:Sprite;
      
      protected var §%!K§:Sprite;
      
      protected var §6r§:Sprite;
      
      protected var §,!§:§7!J§;
      
      protected var §"A§:§7!J§;
      
      private var §-!T§:Number = 0;
      
      private var §4H§:int = 0;
      
      public function §;§(param1:§7E§, param2:§2! §, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§7!-§ = null;
         this.mBirds = new Vector.<§]K§>();
         if(_loc6_)
         {
            super();
            if(_loc6_ || param1)
            {
               addr38:
               this.§-n§ = param1;
               if(_loc6_ || param2)
               {
                  this.§>E§ = param3;
                  if(!(_loc7_ && this))
                  {
                     if(param2)
                     {
                        addr60:
                        this.setPosition(param2.§>!$§,param2.§]!l§);
                        addr66:
                        this.§<r§();
                        if(!(_loc7_ && param3))
                        {
                           _loc4_ = 0;
                           addr77:
                           while(_loc4_ < param2.§-!E§)
                           {
                              _loc5_ = param2.§`R§(_loc4_);
                              if(_loc6_)
                              {
                                 this.§^!R§(_loc5_.id,_loc5_.x,_loc5_.y);
                                 if(_loc6_ || param2)
                                 {
                                    _loc4_++;
                                 }
                              }
                           }
                           this.§4H§ = this.§]+§();
                           this.§1!6§ = 0;
                           if(!(_loc7_ && this))
                           {
                              if(this.mBirds.length <= 0)
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(§`![§);
                                    §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                    if(_loc6_ || param1)
                                    {
                                       §§push(this.mX);
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() + " ");
                                             if(_loc6_ || this)
                                             {
                                                addr169:
                                                §§push(§§pop() + this.mY);
                                             }
                                          }
                                          §§pop().log(§§pop());
                                          if(!_loc7_)
                                          {
                                             this.setSlingShotState(§>!]§);
                                             if(_loc6_ || param3)
                                             {
                                             }
                                             addr215:
                                             this.§""§ = 0;
                                             addr218:
                                             this.§!!=§();
                                             if(!_loc7_)
                                             {
                                                addr222:
                                                this.update(0,true);
                                                if(!_loc7_)
                                                {
                                                   this.groundSlingshot();
                                                   if(_loc6_ || param3)
                                                   {
                                                   }
                                                }
                                                §§goto(addr240);
                                             }
                                             addr240:
                                             return;
                                             addr189:
                                          }
                                          addr237:
                                          this.§3!s§(0);
                                          §§goto(addr240);
                                       }
                                    }
                                    §§goto(addr169);
                                 }
                              }
                              else
                              {
                                 this.setSlingShotState(§!!0§);
                                 if(_loc6_)
                                 {
                                    §§goto(addr189);
                                 }
                              }
                              §§goto(addr240);
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr77);
                     }
                     else
                     {
                        §`![§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                        if(!_loc7_)
                        {
                           this.setSlingShotState(§>!]§);
                           if(_loc6_ || param1)
                           {
                              §§goto(addr215);
                           }
                           §§goto(addr237);
                        }
                     }
                     §§goto(addr222);
                  }
                  §§goto(addr77);
               }
               §§goto(addr66);
            }
            §§goto(addr60);
         }
         §§goto(addr38);
      }
      
      public function get sprite() : Sprite
      {
         return this.§>E§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§-!T§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§1!6§ < this.mBirds.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         do
         {
            if(this.mBirds.length > 0)
            {
               continue;
            }
            this.mBirds = null;
            if(_loc2_)
            {
               §§push(this.§>E§);
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     §§goto(addr66);
                  }
                  break;
               }
               §§goto(addr66);
            }
            §§goto(addr69);
         }
         while(this.§34§(0), !_loc1_);
         
         this.§0G§ = null;
         addr66:
         this.§>E§.dispose();
         if(_loc2_)
         {
            addr69:
            this.§>E§ = null;
            break loop0;
         }
         this.§#J§ = null;
         this.§8!D§ = null;
      }
      
      public function §;=§(param1:String, param2:Number, param3:Number, param4:int = -1) : §]K§
      {
         var _loc5_:§]K§;
         (_loc5_ = this.§^!R§(param1,param2,param3,param4)).§;!C§();
         return _loc5_;
      }
      
      protected function §^!R§(param1:String, param2:Number, param3:Number, param4:int = -1) : §]K§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§]K§ = new §]K§(this,new Sprite(),param1,param2,param3);
         if(!(_loc7_ && param3))
         {
            if(param4 < 0)
            {
               if(!(_loc7_ && param1))
               {
                  this.mBirds.push(_loc5_);
                  if(!(_loc7_ && param2))
                  {
                     addr88:
                     this.§0G§.addChild(_loc5_.sprite);
                  }
               }
               §§goto(addr88);
            }
            else
            {
               this.mBirds.splice(param4,0,_loc5_);
               if(_loc6_ || param1)
               {
                  §§goto(addr88);
               }
            }
            return _loc5_;
         }
         §§goto(addr88);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.mSlingShotState = param1;
         §§push(this.mSlingShotState);
         if(!(_loc3_ && this))
         {
            §§push(§!!0§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() == §§pop())
               {
                  if(!_loc3_)
                  {
                     this.§8z§();
                     if(_loc2_)
                     {
                        this.§[c§ = 1000;
                        if(_loc3_ && param1)
                        {
                           addr146:
                        }
                     }
                     §§goto(addr226);
                  }
                  this.mBirds[this.§1!6§].setPosition(this.§1!r§ - this.mBirds[this.§1!6§].radius * Math.cos(this.§"!K§ / (180 / Math.PI)),this.§,!U§ + this.mBirds[this.§1!6§].radius * Math.sin(this.§"!K§ / (180 / Math.PI)));
                  addr169:
               }
               else
               {
                  §§push(this.mSlingShotState);
                  if(!_loc3_)
                  {
                     §§push(§3P§);
                     if(_loc2_)
                     {
                        addr61:
                        if(§§pop() == §§pop())
                        {
                           this.§8z§();
                           if(!_loc3_)
                           {
                              this.§[c§ = 0;
                              §§goto(addr226);
                           }
                           else
                           {
                              addr164:
                              this.§2f§ = false;
                              addr167:
                              this.§8z§();
                              §§goto(addr169);
                           }
                        }
                        else
                        {
                           §§push(this.mSlingShotState);
                           if(!(_loc3_ && this))
                           {
                              addr79:
                              §§push(§>!A§);
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       this.§[c§ = 10000;
                                       this.§2f§ = false;
                                       if(!(_loc3_ && param1))
                                       {
                                          this.§8z§();
                                          §§goto(addr226);
                                       }
                                       else
                                       {
                                          §§goto(addr167);
                                       }
                                    }
                                    §§goto(addr226);
                                 }
                                 else
                                 {
                                    §§push(this.mSlingShotState);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(§>!]§);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr133:
                                          if(§§pop() == §§pop())
                                          {
                                             this.§8z§();
                                             this.§[c§ = 2000;
                                             if(_loc2_ || this)
                                             {
                                                §§goto(addr146);
                                             }
                                             else
                                             {
                                                §§goto(addr164);
                                             }
                                          }
                                          else
                                          {
                                             addr149:
                                             §§push(this.mSlingShotState);
                                             §§push(§#!f§);
                                          }
                                          §§goto(addr226);
                                       }
                                    }
                                    §§goto(addr149);
                                 }
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(this.mDragging)
                                 {
                                    if(_loc2_ || param1)
                                    {
                                       this.mDragging = false;
                                    }
                                    §§goto(addr164);
                                 }
                                 else
                                 {
                                    this.§8z§();
                                    §§goto(addr226);
                                 }
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr79);
               }
               addr226:
               this.mDragging = false;
               return;
            }
            §§goto(addr61);
         }
         §§goto(addr79);
      }
      
      public function get §<q§() : §7E§
      {
         return this.§-n§;
      }
      
      public function §]!&§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.mSlingShotState == §>!]§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr44:
                     §§pop();
                     §§push(this.§[c§ <= 0);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr44);
      }
      
      private function §<r§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;P§ = this.§-n§.§@!o§.§`!!§("SLINGSHOT");
         var _loc2_:§>?§ = _loc1_.getFrame(0);
         var _loc3_:§>?§ = _loc1_.getFrame(1);
         if(!_loc4_)
         {
            this.§,!§ = new §7!J§(_loc2_.texture);
            §§push(this.§,!§);
            if(!_loc4_)
            {
               §§push(_loc2_.scale);
               if(!_loc4_)
               {
                  §§pop().scaleX = §§pop();
                  if(!_loc4_)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr118);
               }
               §§goto(addr57);
            }
            addr57:
            this.§,!§.scaleY = _loc2_.scale;
            this.§"A§ = new §7!J§(_loc3_.texture);
            if(_loc5_)
            {
               addr66:
               §§push(this.§"A§);
               if(!(_loc4_ && _loc1_))
               {
                  §§push(_loc3_.scale);
                  if(!(_loc4_ && this))
                  {
                     §§pop().scaleX = §§pop();
                     §§goto(addr224);
                  }
                  §§pop().scaleY = §§pop();
                  if(!_loc4_)
                  {
                     this.§%!N§();
                     if(_loc5_ || _loc1_)
                     {
                        addr118:
                        this.§0!r§();
                        §§goto(addr120);
                     }
                     §§goto(addr185);
                  }
                  addr120:
                  this.§0G§ = new Sprite();
                  if(!_loc4_)
                  {
                     §§push(this.§>E§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop().addChild(this.§,!§);
                        §§push(this.§>E§);
                        if(_loc5_ || _loc1_)
                        {
                           §§pop().addChild(this.§[!"§);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr157);
                           }
                           §§goto(addr217);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr197);
                  }
                  addr157:
                  §§push(this.§>E§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§pop().addChild(this.§0G§);
                     if(_loc5_ || _loc1_)
                     {
                        §§push(this.§>E§);
                        if(!(_loc4_ && _loc1_))
                        {
                           addr185:
                           §§pop().addChild(this.§6r§);
                           addr188:
                           §§push(this.§>E§);
                           if(_loc5_ || _loc3_)
                           {
                              §§pop().addChild(this.§%!K§);
                              addr197:
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr217:
                                 §§push(this.§>E§);
                              }
                              §§goto(addr224);
                           }
                        }
                     }
                     §§goto(addr188);
                  }
                  §§pop().addChild(this.§"A§);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr224);
               }
               §§goto(addr94);
            }
            addr224:
            if(_loc5_ || _loc2_)
            {
               addr94:
               §§push(this.§"A§);
               §§push(_loc3_.scale);
            }
            §§push(this);
            §§push(this.mY);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() + 8.5);
            }
            §§pop().§;!F§ = §§pop();
            return;
         }
         §§goto(addr66);
      }
      
      public function §%!N§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc2_ || _loc3_)
         {
            this.§]J§ = this.mX;
            if(_loc2_)
            {
               this.§-!L§ = this.mY;
               if(!_loc2_)
               {
               }
               §§goto(addr67);
            }
            this.§>@§ = §;J§.§@H§;
         }
         addr67:
         _loc1_ = null;
      }
      
      protected function §0!r§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(!(_loc3_ && _loc3_))
         {
            if(!§9!@§)
            {
               if(_loc4_ || _loc2_)
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc4_)
                  {
                     §9!@§ = this.§-n§.textureManager.§%!^§(_loc2_);
                  }
               }
               var _loc1_:§7!J§ = new §7!J§(§9!@§);
               _loc1_.rotation = Math.PI;
               §§goto(addr57);
            }
            this.§6r§ = new Sprite();
         }
         addr57:
         if(!_loc3_)
         {
            _loc1_.x = _loc1_.width / 2;
            if(!_loc3_)
            {
               _loc1_.y = _loc1_.height / 2;
               this.§6r§.addChild(_loc1_);
               if(_loc4_ || _loc2_)
               {
                  this.§[!"§ = new Sprite();
               }
               §§goto(addr124);
            }
            this.§7W§ = new §8!p§(2,2,§+'§);
         }
         addr124:
         this.§[!"§.addChild(this.§7W§);
         this.§%!K§ = new Sprite();
         this.§3!l§ = new §8!p§(2,2,§+'§);
         this.§%!K§.addChild(this.§3!l§);
      }
      
      public function §3!s§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§,!U§);
         if(_loc7_)
         {
            §§push(§§pop() / §7E§.§8!'§);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§1!r§);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() / §7E§.§8!'§);
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
            §§push(this.§>@§);
            if(_loc7_ || param1)
            {
               §§push(this.§6!`§);
               if(_loc7_)
               {
                  addr72:
                  §§push(§§pop() - §§pop());
                  if(!_loc6_)
                  {
                     §§push(this.§>@§);
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
                     §§push(this.§6r§);
                     if(!_loc6_)
                     {
                        §§push(_loc3_);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§pop().x = §§pop();
                           if(!_loc6_)
                           {
                              §§push(this.§6r§);
                              if(!(_loc6_ && this))
                              {
                                 §§push(_loc2_);
                                 if(_loc7_ || param1)
                                 {
                                    §§pop().y = §§pop();
                                    if(_loc7_)
                                    {
                                       addr122:
                                       §§push(this.§6r§);
                                       §§push(this.§"!K§);
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
                                    §§push(this.§,!§);
                                    if(_loc7_)
                                    {
                                       §§push(this.mX);
                                       if(_loc7_)
                                       {
                                          §§push(§7E§.§8!'§);
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
                                                      §§push(this.§,!§);
                                                      §§push(this.mY);
                                                      if(!_loc6_)
                                                      {
                                                         addr178:
                                                         §§push(§§pop() / §7E§.§8!'§);
                                                         if(!_loc6_)
                                                         {
                                                            addr184:
                                                            §§push(§§pop() - 30);
                                                         }
                                                      }
                                                      §§pop().y = §§pop();
                                                      §§push(this.§"A§);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(this.mX);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§7E§.§8!'§);
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
                                                                  §§push(this.§"A§);
                                                                  §§push(this.mY);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr233:
                                                                     §§push(§§pop() / §7E§.§8!'§);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        addr243:
                                                                        §§pop().y = §§pop() - 30;
                                                                        §§push(this.§%!K§);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           §§push(this.mX);
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              §§push(§7E§.§8!'§);
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
                                                                                             §§push(this.§%!K§);
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                addr307:
                                                                                                §§push(this.mY);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr313:
                                                                                                   §§push(§§pop() / §7E§.§8!'§);
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
                                                                                             §§pop().rotation = Math.atan2(_loc2_ - this.§%!K§.y,_loc3_ - this.§%!K§.x);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(this.§[!"§);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(this.mX);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(§7E§.§8!'§);
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
                                                                                                               §§push(this.§[!"§);
                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                               {
                                                                                                                  addr382:
                                                                                                                  §§push(this.mY);
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     addr394:
                                                                                                                     §§pop().y = §§pop() / §7E§.§8!'§;
                                                                                                                     §§push(this.§[!"§);
                                                                                                                  }
                                                                                                                  §§goto(addr394);
                                                                                                               }
                                                                                                               §§pop().rotation = Math.atan2(_loc2_ - this.§[!"§.y,_loc3_ - this.§[!"§.x);
                                                                                                               §§push(this.§3!l§);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§%!K§.x,2) + Math.pow(_loc2_ - this.§%!K§.y,2));
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     §§push(this.§7W§);
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§[!"§.x,2) + Math.pow(_loc2_ - this.§[!"§.y,2));
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
                                                               §§push(this.§3!l§);
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  addr481:
                                                                  §§push(this.§7W§);
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
                                                               §§push(this.§3!l§);
                                                               §§push(-this.§3!l§.height);
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
                                                                     §§push(this.§%!K§);
                                                                  }
                                                                  §§push(this.§7W§);
                                                                  §§push(-this.§7W§.height);
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     §§push(§§pop() / 2);
                                                                  }
                                                                  §§pop().y = §§pop();
                                                                  §§goto(addr547);
                                                               }
                                                               addr547:
                                                               this.§1!J§ = false;
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
      
      public function §+!9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         do
         {
            if(this.mBirds.length <= 0)
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr61);
            }
            this.§34§(0,true);
         }
         while(!_loc1_);
         
         this.§case §();
         if(!(_loc1_ && this))
         {
            §§goto(addr61);
         }
         addr61:
         this.§^!R§("BIRD_SARDINE",this.mX,this.mY);
         if(_loc2_ || _loc2_)
         {
            this.setSlingShotState(§>!A§);
         }
      }
      
      protected function §case §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+!§.§4c§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.setSlingShotState(§#!f§);
         }
      }
      
      public function §8z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§]J§);
            §§push(this.§-!L§);
            if(_loc2_ || this)
            {
               §§push(this.§>@§);
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
         §§push(this.§1!r§ == param1);
         §§push(this.§1!r§ == param1);
         if(_loc9_)
         {
            if(§§pop())
            {
               if(_loc9_)
               {
                  §§pop();
                  §§push(this.§,!U§);
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
                              addr602:
                              §§pop();
                              if(_loc9_ || this)
                              {
                                 addr614:
                                 §§push(this.§"!K§);
                                 §§push(-90 + _loc4_);
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc10_ && param2))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc10_)
                                       {
                                          addr633:
                                          §§push(_loc5_);
                                          if(_loc9_ || param3)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc9_)
                                             {
                                                addr645:
                                                if(§§pop() < §§pop())
                                                {
                                                   addr646:
                                                   §§push(_loc7_);
                                                   §§push(this.§>@§);
                                                   §§push(_loc7_);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      §§push(Math.abs(this.§"!K§ - -90 - _loc5_) - _loc4_);
                                                      if(!_loc10_)
                                                      {
                                                         addr665:
                                                         §§push(§§pop() * §§pop());
                                                         §§push(_loc6_);
                                                         if(!_loc10_)
                                                         {
                                                            addr670:
                                                            §§push(§§pop() + §§pop() / §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  addr682:
                                                                  §§push(this.§]J§);
                                                                  if(_loc9_)
                                                                  {
                                                                     addr687:
                                                                     §§push(_loc8_);
                                                                     §§push(param1);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(this.§]J§);
                                                                        if(!(_loc10_ && param3))
                                                                        {
                                                                           addr699:
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc10_ && param2))
                                                                              {
                                                                                 addr717:
                                                                                 §§push(§§pop() + §§pop() / this.§6!`§);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr722:
                                                                                    param1 = Number(§§pop());
                                                                                    §§push(this.§-!L§);
                                                                                    §§push(_loc8_);
                                                                                    §§push(param2);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr731:
                                                                                       §§push(§§pop() - this.§-!L§);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr734:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr737:
                                                                                             §§push(this.§6!`§);
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                addr746:
                                                                                                §§push(§§pop() + §§pop() / §§pop());
                                                                                                if(!(_loc10_ && param3))
                                                                                                {
                                                                                                   addr755:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr779:
                                                                                                   if(§§pop() <= this.§>@§ * 0.45)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr786:
                                                                                                         this.§<>§ = true;
                                                                                                         if(_loc10_ && param2)
                                                                                                         {
                                                                                                            addr830:
                                                                                                            this.§;%§();
                                                                                                            this.§<>§ = false;
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr796:
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr820:
                                                                                                         §§push(this.§6!`§);
                                                                                                         §§push(this.§>@§);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr827:
                                                                                                            §§push(§§pop() * 0.8);
                                                                                                         }
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            §§goto(addr830);
                                                                                                         }
                                                                                                      }
                                                                                                      addr835:
                                                                                                      this.§1!J§ = true;
                                                                                                      §§goto(addr839);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr799:
                                                                                                      §§push(Boolean(this.§<>§));
                                                                                                      if(Boolean(this.§<>§))
                                                                                                      {
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            §§goto(addr820);
                                                                                                         }
                                                                                                         §§goto(addr839);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr820);
                                                                                                }
                                                                                                param2 = §§pop();
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   this.§6!`§ = _loc8_;
                                                                                                   addr764:
                                                                                                   this.§1!r§ = param1;
                                                                                                   addr767:
                                                                                                   this.§,!U§ = param2;
                                                                                                   addr770:
                                                                                                   §§push(this.§6!`§);
                                                                                                   if(_loc9_ || param2)
                                                                                                   {
                                                                                                      §§goto(addr779);
                                                                                                   }
                                                                                                   §§goto(addr820);
                                                                                                }
                                                                                                §§goto(addr786);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr779);
                                                                                       }
                                                                                       §§goto(addr827);
                                                                                    }
                                                                                    §§goto(addr734);
                                                                                 }
                                                                                 §§goto(addr755);
                                                                              }
                                                                              §§goto(addr737);
                                                                           }
                                                                           §§goto(addr827);
                                                                        }
                                                                     }
                                                                     §§goto(addr731);
                                                                  }
                                                                  §§goto(addr755);
                                                               }
                                                               §§goto(addr830);
                                                            }
                                                            §§goto(addr722);
                                                         }
                                                         §§goto(addr731);
                                                      }
                                                      §§goto(addr717);
                                                   }
                                                   §§goto(addr734);
                                                }
                                                §§goto(addr770);
                                             }
                                             §§goto(addr670);
                                          }
                                          §§goto(addr746);
                                       }
                                       §§goto(addr717);
                                    }
                                    §§goto(addr755);
                                 }
                                 §§goto(addr687);
                              }
                              §§goto(addr722);
                           }
                        }
                        else
                        {
                           this.§6!`§ = Math.sqrt((param2 - this.§-!L§) * (param2 - this.§-!L§) + (param1 - this.§]J§) * (param1 - this.§]J§));
                           if(_loc9_)
                           {
                              §§push(this.§6!`§);
                              if(!_loc10_)
                              {
                                 §§push(this.§>@§);
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
                                                   this.§6!`§ = Math.sqrt((this.§,!U§ - this.§-!L§) * (this.§,!U§ - this.§-!L§) + (this.§1!r§ - this.§]J§) * (this.§1!r§ - this.§]J§));
                                                   §§push(false);
                                                   if(!_loc10_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr432:
                                                   §§pop();
                                                   §§push(this.§"!K§);
                                                   if(_loc9_)
                                                   {
                                                      §§push(-90);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc10_)
                                                         {
                                                            addr443:
                                                            §§push(§§pop() + §§pop() + _loc5_);
                                                            if(!_loc10_)
                                                            {
                                                               addr449:
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(_loc9_ || param2)
                                                                  {
                                                                     §§push(this.§]J§);
                                                                     if(!(_loc10_ && param3))
                                                                     {
                                                                        §§push(_loc7_);
                                                                        §§push(param1);
                                                                        §§push(this.§]J§);
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           §§push(§§pop() * (§§pop() - §§pop()));
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §§push(this.§6!`§);
                                                                              if(!(_loc10_ && this))
                                                                              {
                                                                                 §§push(§§pop() + §§pop() / §§pop());
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    addr505:
                                                                                    param1 = Number(§§pop());
                                                                                    §§push(this.§-!L§);
                                                                                 }
                                                                                 §§push(_loc7_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(param2);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(this.§-!L§);
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop() * §§pop() / this.§6!`§);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   param2 = §§pop();
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr539:
                                                                                                      this.§6!`§ = _loc7_;
                                                                                                      this.§1!r§ = param1;
                                                                                                      if(!(_loc10_ && this))
                                                                                                      {
                                                                                                         this.§,!U§ = param2;
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr682);
                                                                                                      }
                                                                                                      §§goto(addr755);
                                                                                                   }
                                                                                                   addr555:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr558:
                                                                                                   §§push(§§pop() > _loc7_);
                                                                                                   if(§§pop() > _loc7_)
                                                                                                   {
                                                                                                      addr562:
                                                                                                      §§pop();
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr567:
                                                                                                         §§push(this.§"!K§);
                                                                                                         §§push(-90);
                                                                                                         if(!(_loc10_ && this))
                                                                                                         {
                                                                                                            addr575:
                                                                                                            §§push(_loc4_);
                                                                                                            if(!(_loc10_ && param1))
                                                                                                            {
                                                                                                               addr583:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc9_ || param3)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     addr598:
                                                                                                                     §§push(§§pop() > §§pop() - §§pop() + _loc5_);
                                                                                                                     if(§§pop() > §§pop() - §§pop() + _loc5_)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§goto(addr602);
                                                                                                                        }
                                                                                                                        §§goto(addr799);
                                                                                                                     }
                                                                                                                     §§goto(addr645);
                                                                                                                  }
                                                                                                                  §§goto(addr665);
                                                                                                               }
                                                                                                               §§goto(addr827);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr614);
                                                                                                      }
                                                                                                      §§goto(addr767);
                                                                                                   }
                                                                                                   §§goto(addr598);
                                                                                                }
                                                                                                §§goto(addr767);
                                                                                             }
                                                                                             §§goto(addr722);
                                                                                          }
                                                                                          §§goto(addr827);
                                                                                       }
                                                                                       §§goto(addr699);
                                                                                    }
                                                                                    §§goto(addr731);
                                                                                 }
                                                                                 §§goto(addr737);
                                                                              }
                                                                              §§goto(addr598);
                                                                           }
                                                                           §§goto(addr755);
                                                                        }
                                                                        §§goto(addr699);
                                                                     }
                                                                     §§goto(addr755);
                                                                  }
                                                                  addr839:
                                                                  return true;
                                                               }
                                                               §§push(this.§6!`§);
                                                               §§goto(addr558);
                                                            }
                                                            §§goto(addr633);
                                                         }
                                                         §§goto(addr583);
                                                      }
                                                      §§goto(addr614);
                                                   }
                                                   §§goto(addr505);
                                                }
                                                §§goto(addr646);
                                             }
                                             else
                                             {
                                                §§push(this.§]J§);
                                                if(!(_loc10_ && param3))
                                                {
                                                   §§push(this.§>@§);
                                                   §§push(param1);
                                                   if(_loc9_)
                                                   {
                                                      §§push(this.§]J§);
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop() * (§§pop() - §§pop()) / this.§6!`§);
                                                         if(_loc9_ || this)
                                                         {
                                                            §§push(Number(§§pop() + §§pop()));
                                                            if(_loc9_ || param1)
                                                            {
                                                               param1 = §§pop();
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  §§push(this.§-!L§);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr193:
                                                                     §§push(this.§>@§);
                                                                     §§push(param2);
                                                                     §§push(this.§-!L§);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           §§push(this.§6!`§);
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
                                                                                       this.§6!`§ = this.§>@§;
                                                                                       addr232:
                                                                                       this.§1!r§ = param1;
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          this.§,!U§ = param2;
                                                                                          this.§"!K§ = Math.atan2(-(this.§,!U§ - this.§-!L§),this.§1!r§ - this.§]J§);
                                                                                          if(!(_loc10_ && param3))
                                                                                          {
                                                                                             addr262:
                                                                                             §§push(this);
                                                                                             §§push(this.§"!K§);
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() * (180 / Math.PI));
                                                                                             }
                                                                                             §§pop().§"!K§ = §§pop();
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
                                                                                                         §§push(§§pop() - 0.7);
                                                                                                      }
                                                                                                      §§pop().§1!r§ = §§pop();
                                                                                                      this.§,!U§ = param2;
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         this.§"!K§ = -160;
                                                                                                         addr306:
                                                                                                         §§push(12);
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            addr315:
                                                                                                            _loc4_ = §§pop();
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§push(5);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  addr324:
                                                                                                                  §§push(Number(4));
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(this.§>@§);
                                                                                                                        §§push(2);
                                                                                                                        if(_loc9_ || param2)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(!(_loc10_ && param1))
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              §§push(this.§6!`§);
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
                                                                                                                                                §§push(this.§"!K§);
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   addr391:
                                                                                                                                                   §§push(-90);
                                                                                                                                                   if(_loc9_ || param3)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      if(!(_loc10_ && param3))
                                                                                                                                                      {
                                                                                                                                                         addr418:
                                                                                                                                                         §§push(§§pop() > §§pop() - §§pop() + _loc5_);
                                                                                                                                                         if(!(_loc10_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr428:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr432);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr449);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr820);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr443);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr575);
                                                                                                                                                }
                                                                                                                                                §§goto(addr722);
                                                                                                                                             }
                                                                                                                                             §§goto(addr646);
                                                                                                                                          }
                                                                                                                                          §§goto(addr428);
                                                                                                                                       }
                                                                                                                                       §§goto(addr598);
                                                                                                                                    }
                                                                                                                                    §§goto(addr562);
                                                                                                                                 }
                                                                                                                                 §§goto(addr418);
                                                                                                                              }
                                                                                                                              §§goto(addr755);
                                                                                                                           }
                                                                                                                           §§goto(addr567);
                                                                                                                        }
                                                                                                                        §§goto(addr575);
                                                                                                                     }
                                                                                                                     §§goto(addr796);
                                                                                                                  }
                                                                                                                  §§goto(addr614);
                                                                                                               }
                                                                                                               §§goto(addr324);
                                                                                                            }
                                                                                                            §§goto(addr767);
                                                                                                         }
                                                                                                         §§goto(addr324);
                                                                                                      }
                                                                                                      §§goto(addr764);
                                                                                                   }
                                                                                                   §§goto(addr835);
                                                                                                }
                                                                                                §§goto(addr306);
                                                                                             }
                                                                                             §§goto(addr539);
                                                                                          }
                                                                                          §§goto(addr786);
                                                                                       }
                                                                                       §§goto(addr820);
                                                                                    }
                                                                                    §§goto(addr232);
                                                                                 }
                                                                                 §§goto(addr315);
                                                                              }
                                                                              §§goto(addr443);
                                                                           }
                                                                           §§goto(addr598);
                                                                        }
                                                                        §§goto(addr418);
                                                                     }
                                                                     §§goto(addr699);
                                                                  }
                                                                  §§goto(addr315);
                                                               }
                                                               §§goto(addr555);
                                                            }
                                                            §§goto(addr315);
                                                         }
                                                         §§goto(addr717);
                                                      }
                                                      §§goto(addr731);
                                                   }
                                                   §§goto(addr827);
                                                }
                                                §§goto(addr193);
                                             }
                                          }
                                          §§goto(addr598);
                                       }
                                       §§goto(addr820);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr755);
                              }
                              §§goto(addr391);
                           }
                           §§goto(addr262);
                        }
                        §§goto(addr682);
                     }
                     §§goto(addr827);
                  }
                  §§goto(addr722);
               }
               addr54:
               return §§pop();
            }
            §§goto(addr45);
         }
         §§goto(addr288);
      }
      
      protected function §;%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §+!§.§4c§("SlingshotStreched");
         }
      }
      
      public function §"8§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.mX);
            §§push(this.mY);
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
         if(!_loc7_)
         {
            §§push(§§pop() - this.mX);
            if(!(_loc7_ && param2))
            {
               addr29:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc7_ && param2))
            {
               this.mX = param1;
            }
            §§push(param2);
            if(!(_loc7_ && param3))
            {
               §§push(§§pop() - this.mY);
               if(!(_loc7_ && param2))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            this.mY = param2;
            if(_loc6_)
            {
               §§push(this);
               §§push(this.§;!F§);
               if(!(_loc7_ && param2))
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§;!F§ = §§pop();
               §§push(this);
               §§push(this.§-!L§);
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§-!L§ = §§pop();
               if(_loc6_)
               {
                  §§push(this);
                  §§push(this.§,!U§);
                  if(!(_loc7_ && param2))
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§,!U§ = §§pop();
                  if(_loc6_)
                  {
                     §§push(this);
                     §§push(this.§]J§);
                     if(_loc6_ || param3)
                     {
                        §§push(§§pop() + _loc4_);
                     }
                     §§pop().§]J§ = §§pop();
                     if(_loc6_ || param2)
                     {
                        addr144:
                        §§push(this);
                        §§push(this.§1!r§);
                        if(_loc6_ || param3)
                        {
                           §§push(§§pop() + _loc4_);
                        }
                        §§pop().§1!r§ = §§pop();
                        addr157:
                        if(param3)
                        {
                           addr159:
                           this.§3!s§(0);
                           if(_loc6_ || param1)
                           {
                           }
                           §§goto(addr172);
                        }
                        this.§1!J§ = true;
                     }
                     addr172:
                     return;
                  }
                  §§goto(addr159);
               }
               §§goto(addr144);
            }
            §§goto(addr157);
         }
         §§goto(addr29);
      }
      
      public function §2"§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Number = 0;
         var _loc2_:§]K§ = null;
         _loc2_ = this.mBirds[this.§1!6§];
         §§push(this.§6!`§);
         if(_loc5_)
         {
            §§push(§§pop() / this.§>@§);
            if(_loc5_ || _loc1_)
            {
               addr54:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc1_)
            {
               if(_loc2_ != null)
               {
                  if(_loc5_ || _loc3_)
                  {
                     if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                     {
                        §§goto(addr104);
                     }
                     else
                     {
                        §§push(Number(§;§.§5B§));
                     }
                     _loc1_ = §§pop();
                  }
               }
            }
            addr104:
            if(!(_loc4_ && this))
            {
               §§push(Number(§;§.§ !3§));
            }
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() * _loc3_);
            }
            return §§pop();
         }
         §§goto(addr54);
      }
      
      public function getPosition() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§]K§ = null;
         if(_loc2_)
         {
            if(this.mBirds.length <= this.§1!6§)
            {
               return null;
            }
            if(_loc2_ || _loc3_)
            {
               _loc1_ = this.mBirds[this.§1!6§];
            }
         }
         return new Point(_loc1_.mX,_loc1_.mY);
      }
      
      public function §3!d§() : Point
      {
         return new Point(this.§]J§,this.§-!L§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§]K§ = null;
         this.§"E§(param1);
         if(_loc4_)
         {
            if(this.§1!J§)
            {
               this.§3!s§(param1);
               if(!(_loc5_ && param1))
               {
                  addr37:
                  §§push(this);
                  §§push(this.§[c§);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§[c§ = §§pop();
                  if(_loc4_ || _loc3_)
                  {
                     addr57:
                     if(this.§[c§ < 0)
                     {
                        if(!_loc5_)
                        {
                           addr63:
                           this.§[c§ = 0;
                           if(_loc4_)
                           {
                              addr68:
                              if(this.mSlingShotState == §>!]§)
                              {
                                 if(_loc5_)
                                 {
                                    addr79:
                                    _loc3_ = null;
                                    if(this.mBirds.length > 0)
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          _loc3_ = this.mBirds[this.§1!6§];
                                          §§goto(addr101);
                                       }
                                       §§goto(addr151);
                                    }
                                    addr101:
                                    if(_loc3_)
                                    {
                                       _loc3_.§#w§(param1);
                                    }
                                    if(!_loc3_)
                                    {
                                       this.setSlingShotState(§>!]§);
                                       §§goto(addr275);
                                    }
                                    else
                                    {
                                       §§push(this.mSlingShotState);
                                       if(_loc4_ || this)
                                       {
                                          §§push(§!!0§);
                                          if(!(_loc5_ && param1))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(this.§[c§ <= 0)
                                                {
                                                   this.setSlingShotState(§3P§);
                                                   _loc3_.§;!H§();
                                                   if(!_loc5_)
                                                   {
                                                      addr151:
                                                   }
                                                   else
                                                   {
                                                      addr190:
                                                   }
                                                   §§goto(addr275);
                                                }
                                                §§goto(addr151);
                                             }
                                             else
                                             {
                                                §§push(this.mSlingShotState);
                                                if(_loc4_ || param2)
                                                {
                                                   §§push(§3P§);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr169:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            §§push(_loc3_.§`!i§);
                                                            if(_loc4_ || param1)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  this.setSlingShotState(§>!A§);
                                                               }
                                                               §§goto(addr190);
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                         else
                                                         {
                                                            addr197:
                                                            §§push(_loc3_);
                                                            §§push(this.§1!r§);
                                                            if(_loc4_)
                                                            {
                                                               §§push(_loc3_.radius);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop() * Math.cos(this.§"!K§ / (180 / Math.PI)));
                                                                  if(_loc4_ || param2)
                                                                  {
                                                                     §§goto(addr224);
                                                                  }
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         §§pop().setPosition(§§pop(),§§pop());
                                                         if(this.§2f§)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§6!`§);
                                                            if(_loc4_)
                                                            {
                                                               §§push(this.§>@§);
                                                               if(_loc4_ || param2)
                                                               {
                                                                  addr272:
                                                                  §§push(§§pop() / §§pop());
                                                                  §§push(this.§"!K§);
                                                               }
                                                               §§pop().§!!c§(§§pop(),§§pop());
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      else
                                                      {
                                                         addr193:
                                                         §§push(this.mSlingShotState);
                                                         §§push(§>!A§);
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr197);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr275);
                                                }
                                                §§goto(addr193);
                                             }
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                                 else
                                 {
                                    addr74:
                                 }
                                 addr275:
                                 return;
                              }
                              this.§%!E§(param1,param2);
                              §§goto(addr79);
                              §§goto(addr79);
                           }
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr79);
               }
               §§goto(addr63);
            }
            §§goto(addr37);
         }
         §§goto(addr57);
      }
      
      public function §2!I§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§]K§ = null;
         if(_loc7_ || this)
         {
            if(this.mBirds.length > 0)
            {
               if(_loc7_)
               {
                  _loc5_ = this.mBirds[this.§1!6§];
                  addr51:
                  if(!_loc5_)
                  {
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr70);
                     }
                  }
                  _loc5_.setPosition(param1,param2);
                  if(!(_loc6_ && this))
                  {
                     this.§!!c§(param3,param4);
                  }
               }
               return;
            }
            §§goto(addr51);
         }
         addr70:
      }
      
      protected function §!!c§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]K§ = null;
         if(!_loc4_)
         {
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.§1!6§];
            }
            if(!_loc3_)
            {
               if(!(_loc4_ && this))
               {
                  return;
               }
            }
            else
            {
               this.mDragging = false;
               if(!_loc4_)
               {
                  this.§2f§ = false;
                  this.§-!T§ = new Date().time;
                  this.§-n§.§3!i§(_loc3_,param1,param2);
                  if(!(_loc4_ && this))
                  {
                     this.§34§(this.§1!6§,_loc3_.§2!@§ > 0);
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§[d§();
                        if(!(_loc4_ && param2))
                        {
                           §§goto(addr114);
                        }
                        this.setSlingShotState(§>!]§);
                     }
                     addr114:
                     if(this.§1!6§ >= this.mBirds.length)
                     {
                        if(!_loc5_)
                        {
                        }
                     }
                     else
                     {
                        this.setSlingShotState(§!!0§);
                     }
                     §§goto(addr129);
                  }
               }
            }
            addr129:
            return;
         }
         §§goto(addr114);
      }
      
      protected function §[d§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!(_loc3_ && _loc2_))
         {
            §§push(§+!§);
            §§push("BirdShot");
            if(!_loc3_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§4c§(§§pop());
         }
      }
      
      public function §%!E§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§1!6§);
         if(_loc6_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc5_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < this.mBirds.length)
            {
               §§push(this.mSlingShotState);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() == §#!f§)
                  {
                     if(!_loc5_)
                     {
                        this.mBirds[_loc4_].update(param1,true,param2);
                        if(!_loc6_)
                        {
                        }
                        break;
                     }
                     continue loop0;
                  }
                  this.mBirds[_loc4_].update(param1,false,param2);
                  if(_loc5_)
                  {
                  }
                  break;
                  _loc4_++;
                  if(_loc5_)
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§]K§ = null;
         var _loc2_:* = 0;
         if(!_loc6_)
         {
            this.mDragging = false;
            if(!_loc6_)
            {
               this.§8z§();
               if(!_loc6_)
               {
                  if(this.§@!_§ >= this.mBirds.length)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr45);
                     }
                  }
               }
            }
            _loc1_ = this.mBirds[this.§@!_§];
            if(!_loc6_)
            {
               §§push(§1!!§.§#P§(_loc1_.name).score);
               if(!_loc6_)
               {
                  §§push(int(§§pop()));
               }
               _loc2_ = §§pop();
               if(_loc5_)
               {
                  §§push(this.§-n§);
                  §§push(_loc2_);
                  §§push(§ !p§.§+!c§);
                  §§push(true);
                  §§push(_loc1_.mX);
                  §§push(_loc1_.mY);
                  if(_loc5_)
                  {
                     §§push(3);
                     if(_loc5_ || _loc3_)
                     {
                        addr98:
                        §§push(§§pop() - §§pop());
                        §§push(§!r§.§&M§(_loc1_.name));
                     }
                     §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     if(!_loc6_)
                     {
                        _loc1_.§&K§(-1,true);
                        if(_loc5_)
                        {
                           addr121:
                           var _loc3_:*;
                           §§push((_loc3_ = this).§@!_§);
                           if(_loc5_ || _loc2_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc4_:* = §§pop();
                           if(_loc5_ || _loc1_)
                           {
                              _loc3_.§@!_§ = _loc4_;
                           }
                        }
                     }
                     return true;
                  }
                  §§goto(addr98);
               }
            }
            §§goto(addr121);
         }
         addr45:
         return false;
      }
      
      public function §]+§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§]K§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.mBirds)
         {
            if(!(_loc5_ && _loc2_))
            {
               §§push(_loc1_);
               if(_loc6_)
               {
                  §§push(int(§§pop() + §1!!§.§#P§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §6J§() : int
      {
         return this.§4H§;
      }
      
      public function §"E§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         §§push(this.§""§);
         if(_loc4_)
         {
            §§push(0);
            if(!_loc3_)
            {
               if(§§pop() >= §§pop())
               {
                  addr38:
                  §§push(this);
                  §§push(this.§""§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§""§ = §§pop();
                  if(this.§""§ <= 0)
                  {
                     if(_loc4_)
                     {
                        §§push(this.§-n§);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop().objects);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(§§pop().§^!!§(this.§]J§,this.§;!F§));
                              if(!_loc3_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    §§push(_loc2_);
                                 }
                              }
                              if(§§pop() < 0)
                              {
                                 this.§"8§(0.1);
                                 this.§""§ = 0;
                                 §§goto(addr154);
                              }
                              else
                              {
                                 §§push(this.§-n§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop().objects);
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr106:
                                       §§push(_loc2_);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop().getObject(§§pop()));
                                          if(!(_loc3_ && param1))
                                          {
                                             §§push(§§pop().§7T§);
                                             if(_loc4_ || param1)
                                             {
                                                if(!§§pop())
                                                {
                                                   this.§""§ = -1;
                                                   §§goto(addr154);
                                                }
                                                else
                                                {
                                                   addr145:
                                                   §§push(this.§-n§.objects.getObject(_loc2_).§^!%§());
                                                }
                                                §§goto(addr154);
                                             }
                                             if(§§pop())
                                             {
                                                addr147:
                                                this.§""§ = 2000;
                                             }
                                             else
                                             {
                                                this.§""§ = 500;
                                             }
                                             §§goto(addr154);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr145);
                              }
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr147);
                  }
               }
               addr154:
               return;
            }
         }
         §§goto(addr38);
      }
      
      public function groundSlingshot() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         while(true)
         {
            §§push(this.§-n§.objects.§^!!§(this.§]J§,this.§;!F§));
            if(_loc3_ || _loc1_)
            {
               §§push(int(§§pop()));
               if(!(_loc4_ && _loc2_))
               {
                  addr45:
                  _loc2_ = §§pop();
                  if(_loc3_)
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(-1);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(§§pop() == §§pop())
                           {
                              this.§"8§(0.1);
                              if(!(_loc4_ && this))
                              {
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() - 1);
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr117:
                                          _loc1_ = §§pop();
                                          §§push(0);
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          if(_loc4_)
                                          {
                                          }
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr117);
                              }
                              break;
                           }
                           if(_loc3_ || _loc2_)
                           {
                           }
                           this.§""§ = -1;
                           break;
                        }
                     }
                     §§goto(addr117);
                  }
                  break;
               }
               §§goto(addr117);
            }
            §§goto(addr45);
         }
      }
      
      public function §[t§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§>E§);
            if(_loc4_)
            {
               §§push(param1);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§pop().x = §§pop();
                     §§goto(addr59);
                  }
                  §§pop().y = §§pop();
                  §§goto(addr59);
               }
               §§goto(addr57);
            }
            §§goto(addr54);
         }
         addr59:
         if(!_loc3_)
         {
            addr54:
            §§push(this.§>E§);
            §§push(param2);
            if(_loc4_)
            {
               addr57:
               §§push(-§§pop());
            }
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.mSlingShotState == §>!A§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(!_loc3_)
                        {
                           addr70:
                           §§push(Boolean(§§pop()));
                           if(_loc2_ || param1)
                           {
                              addr78:
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr86:
                                    §§push(true);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr94);
                                    }
                                 }
                                 else
                                 {
                                    addr95:
                                    §§push(false);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr95);
                           }
                        }
                        addr94:
                        return §§pop();
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr78);
         }
         §§goto(addr86);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mSlingShotState == §>!A§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr39:
                     §§push(this.§6!`§);
                     §§push(this.§>@§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop() * §'D§);
                     }
                     §§push(§§pop() > §§pop());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr39);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mDragging = false;
            if(_loc3_ || this)
            {
               addr49:
               this.setSlingShotState(§>!A§);
            }
            var _loc1_:§]K§ = this.mBirds[this.§1!6§];
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.§&K§(§@T§.§-^§);
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mDragging = true;
         }
         var _loc1_:§]K§ = this.mBirds[this.§1!6§];
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§&K§(§@T§.§"!?§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§2f§ = true;
         }
      }
      
      protected function §34§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]K§ = null;
         if(_loc5_)
         {
            if(param1 < 0)
            {
               if(_loc5_ || param2)
               {
                  return;
               }
            }
            if(this.mBirds[param1])
            {
               if(_loc5_)
               {
                  _loc3_ = this.mBirds[param1];
                  if(_loc5_ || _loc3_)
                  {
                     this.§0G§.removeChild(_loc3_.sprite);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(param2)
                        {
                           if(_loc5_ || param1)
                           {
                              this.§>!"§(this.mBirds[param1]);
                              if(_loc5_ || param1)
                              {
                                 addr109:
                                 _loc3_.dispose();
                                 if(_loc4_ && this)
                                 {
                                 }
                                 §§goto(addr123);
                              }
                           }
                           this.mBirds[param1] = null;
                           addr123:
                           this.mBirds.splice(param1,1);
                           return;
                        }
                     }
                     §§goto(addr109);
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public function §>!"§(param1:§]K§) : void
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
         while(_loc5_ < _loc3_)
         {
            §§push(_loc4_);
            §§push(Math.random() * (720 / _loc3_));
            if(!(_loc10_ && this))
            {
               §§push(Number(§§pop() + §§pop()));
               §§push(Number(§§pop() + §§pop()));
               if(_loc9_)
               {
                  _loc4_ = §§pop();
                  if(_loc9_)
                  {
                     §§push(180 / Math.PI);
                     if(!(_loc10_ && _loc3_))
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc9_)
                        {
                           _loc6_ = §§pop();
                           §§push(param1.sprite);
                           if(!_loc10_)
                           {
                              §§push(-§§pop().width);
                              if(_loc9_)
                              {
                                 §§push(§§pop() * §7E§.§8!'§);
                                 if(_loc9_ || _loc2_)
                                 {
                                    §§push(_loc7_ = Number(§§pop()));
                                    if(_loc9_)
                                    {
                                       §§push(Math.random() * -_loc7_);
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          §§push(2);
                                          if(!_loc10_)
                                          {
                                             addr111:
                                             §§push(§§pop() + §§pop() * §§pop());
                                             if(_loc9_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc10_)
                                                {
                                                   addr117:
                                                   _loc7_ = §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   addr122:
                                                   §§push(-param1.sprite.height);
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      addr134:
                                                      §§push(Number(§§pop() * §7E§.§8!'§));
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         §§push(_loc8_ = §§pop());
                                                         if(_loc9_)
                                                         {
                                                            addr162:
                                                            addr156:
                                                            addr161:
                                                            §§push(§§pop() + Math.random() * -_loc8_ * 2);
                                                            if(!_loc9_)
                                                            {
                                                            }
                                                            addr167:
                                                            _loc8_ = §§pop();
                                                            §§push(this.§-n§);
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               §§push(§§pop().particles);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(§!r§.§2!H§);
                                                                  if(!(_loc10_ && _loc2_))
                                                                  {
                                                                     §§push(§<!r§.§1N§);
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        §§push(§!r§.§^!F§);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(param1.mX);
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(param1.mY);
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       §§push(§§pop() + _loc8_);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(1500);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push("");
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(§!r§.§^!O§(param1.name));
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() * Math.cos(_loc6_));
                                                                                                   }
                                                                                                   §§push(_loc2_);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr260:
                                                                                                         §§push(§§pop() * Math.sin(_loc6_));
                                                                                                      }
                                                                                                      §§push(5);
                                                                                                      §§push(_loc2_);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(§§pop() * 20);
                                                                                                      }
                                                                                                      §§pop().§1&§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         _loc5_++;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr260);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr302:
                                                                                                §§push(0);
                                                                                             }
                                                                                             §§pop().§1&§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                                                             return;
                                                                                          }
                                                                                          addr301:
                                                                                          §§push("");
                                                                                          §§goto(addr302);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr300:
                                                                                          §§push(1000);
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr298:
                                                                                    §§push(param1.mY);
                                                                                 }
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr296:
                                                                           §§push(param1.mX);
                                                                        }
                                                                        §§goto(addr298);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr294:
                                                                        §§push(§!r§.§^!F§);
                                                                     }
                                                                     §§goto(addr296);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr292:
                                                                     §§push(§<!r§.§1N§);
                                                                  }
                                                                  §§goto(addr294);
                                                               }
                                                               else
                                                               {
                                                                  addr290:
                                                                  §§push(§!r§.§93§);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            else
                                                            {
                                                               addr289:
                                                               §§push(§§pop().particles);
                                                            }
                                                            §§goto(addr290);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr167);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr111);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr117);
               }
               §§goto(addr162);
            }
            §§goto(addr134);
         }
         §§goto(addr289);
         §§push(this.§-n§);
      }
      
      public function removeObject(param1:§]K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§34§(this.mBirds.indexOf(param1));
         }
      }
      
      public function §!!=§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§]K§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§]K§ = null;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc6_)
            {
               if(§§pop() < this.mBirds.length - 1)
               {
                  §§push(Number(Math.sqrt((this.mX - this.mBirds[_loc1_].mX) * (this.mX - this.mBirds[_loc1_].mX) + (this.mY - this.mBirds[_loc1_].mY) * (this.mY - this.mBirds[_loc1_].mY))));
                  if(_loc7_ || this)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_ || _loc3_)
                     {
                        §§push(Number(Math.sqrt((this.mX - this.mBirds[_loc1_ + 1].mX) * (this.mX - this.mBirds[_loc1_ + 1].mX) + (this.mY - this.mBirds[_loc1_ + 1].mY) * (this.mY - this.mBirds[_loc1_ + 1].mY))));
                        if(_loc7_ || _loc1_)
                        {
                           §§push(§§pop());
                           if(!(_loc6_ && _loc3_))
                           {
                              _loc4_ = §§pop();
                              addr156:
                              §§push(_loc3_);
                           }
                           if(§§pop() < §§pop())
                           {
                              _loc5_ = this.mBirds[_loc1_];
                              if(!_loc6_)
                              {
                                 this.mBirds.splice(_loc1_,1);
                                 if(!_loc7_)
                                 {
                                    continue;
                                 }
                              }
                              this.mBirds.splice(_loc1_ + 1,0,_loc5_);
                              if(_loc7_)
                              {
                                 _loc1_ = int(Math.max(-1,_loc1_ - 2));
                              }
                           }
                           continue;
                        }
                     }
                     else
                     {
                        addr200:
                        loop1:
                        while(true)
                        {
                           §§push(this.§0G§);
                           while(true)
                           {
                              if(§§pop().numChildren <= 0)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    break;
                                 }
                                 §§goto(addr277);
                              }
                              §§push(this.§0G§);
                              if(_loc7_ || _loc2_)
                              {
                                 §§pop().removeChildAt(0);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                           }
                           §§push(0);
                           if(!_loc6_)
                           {
                              _loc1_ = §§pop();
                              if(!(_loc6_ && _loc1_))
                              {
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    break loop0;
                                 }
                                 addr272:
                              }
                              §§goto(addr277);
                           }
                           break loop0;
                        }
                     }
                  }
                  §§goto(addr156);
               }
               §§goto(addr200);
            }
            break;
         }
         while(§§pop() < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            if(_loc7_ || _loc2_)
            {
               this.§0G§.addChildAt(_loc2_.sprite,0);
               if(!_loc6_)
               {
                  _loc1_++;
               }
            }
            §§goto(addr272);
         }
         addr277:
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §]K§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         for(; _loc3_ < this.mBirds.length; _loc3_++,if(!_loc5_)
         {
            break;
         })
         {
            if(this.mBirds[_loc3_])
            {
               if(!_loc4_)
               {
                  if(!this.mBirds[_loc3_].isInCoordinates(param1,param2))
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
               }
               return this.mBirds[_loc3_];
            }
         }
         return null;
      }
      
      public function intersectsWithPoint(param1:Number, param2:Number) : §;§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               §§push(this.mX);
               §§push(this.§>@§);
               if(_loc4_)
               {
                  §§push(4);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() >= §§pop() - §§pop());
                        §§push(§§pop() >= §§pop() - §§pop());
                        if(_loc4_ || param1)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    §§push(param1);
                                    if(_loc4_)
                                    {
                                       addr73:
                                       §§push(this.mX);
                                       if(_loc4_ || param1)
                                       {
                                          §§push(this.§>@§);
                                          if(!_loc3_)
                                          {
                                             §§push(4);
                                             if(_loc4_ || param2)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc3_)
                                                {
                                                }
                                                §§goto(addr156);
                                             }
                                             addr155:
                                             addr156:
                                             addr158:
                                             addr159:
                                             §§push(§§pop() >= §§pop() - §§pop());
                                             if(§§pop() >= §§pop() - §§pop())
                                             {
                                                §§pop();
                                                §§goto(addr181);
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc4_ || param2)
                                                {
                                                   §§goto(addr181);
                                                }
                                             }
                                             return null;
                                             §§push(§§pop() / §§pop());
                                          }
                                          §§push(§§pop() <= §§pop() + §§pop());
                                          if(!(_loc3_ && this))
                                          {
                                             addr116:
                                             §§push(§§pop());
                                             if(_loc4_ || param2)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§pop();
                                                      if(!_loc3_)
                                                      {
                                                         addr130:
                                                         §§push(param2);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            addr140:
                                                            §§push(this.mY);
                                                            §§push(this.§>@§);
                                                            if(_loc4_)
                                                            {
                                                               addr144:
                                                               §§goto(addr155);
                                                               §§push(4);
                                                            }
                                                            §§goto(addr156);
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr156);
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr156);
                                       }
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr156);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr155);
               }
               §§goto(addr156);
            }
            §§goto(addr73);
         }
         addr181:
         if(_loc4_ || param2)
         {
            addr170:
            §§push(this.mY <= this.§;!F§);
         }
         return this;
      }
      
      public function §8x§(param1:§2! §) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§]K§ = null;
         var _loc4_:§7!-§ = null;
         if(_loc6_)
         {
            param1.§>!$§ = this.mX;
            if(_loc6_ || _loc3_)
            {
               addr36:
               param1.§]!l§ = this.mY;
            }
            var _loc2_:* = Number(0);
            while(_loc2_ < this.mBirds.length)
            {
               _loc3_ = this.mBirds[_loc2_];
               (_loc4_ = new §7!-§()).x = _loc3_.mX;
               if(!_loc6_)
               {
                  continue;
               }
               _loc4_.y = _loc3_.mY;
               if(!_loc5_)
               {
                  _loc4_.id = _loc3_.name;
                  if(_loc6_)
                  {
                     addr93:
                     param1.§1!T§(_loc4_);
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc6_)
                     {
                        addr104:
                        §§push(Number(§§pop()));
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§goto(addr104);
               }
               §§goto(addr93);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §7!S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
            if(!(_loc2_ || _loc1_))
            {
               break;
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               if(§§pop() >= this.mBirds.length)
               {
                  if(_loc5_ || param1)
                  {
                     §§push(this.mX > param1.x);
                     if(_loc5_)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && this))
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§goto(addr175);
                           }
                           §§push(§§pop());
                           if(_loc5_)
                           {
                              addr123:
                              if(§§pop())
                              {
                                 addr158:
                                 if(!(_loc6_ && this))
                                 {
                                    §§pop();
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       addr149:
                                       §§push(this.mY);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       §§goto(addr161);
                                    }
                                    addr159:
                                    addr161:
                                    if(§§pop() < param2.y)
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          _loc3_.push(this);
                                       }
                                       §§goto(addr175);
                                    }
                                    addr175:
                                    if(_loc5_)
                                    {
                                       §§push(this.mX);
                                       if(_loc5_ || this)
                                       {
                                          addr117:
                                          §§push(§§pop() < param2.x);
                                       }
                                       break;
                                    }
                                    return _loc3_;
                                    §§push(this.mY);
                                 }
                                 §§pop();
                                 §§goto(addr159);
                              }
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              §§goto(addr158);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr175);
               }
               else
               {
                  if(this.mBirds[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     if(_loc5_)
                     {
                        _loc3_.push(this.mBirds[_loc4_]);
                        if(!(_loc6_ && _loc3_))
                        {
                           addr54:
                           §§push(Number(_loc4_ + 1));
                           if(!(_loc6_ && this))
                           {
                              continue;
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr54);
               }
            }
            break;
         }
         §§goto(addr123);
         §§push(§§pop() > param1.y);
      }
      
      public function §try §() : Array
      {
         return [this.§"A§,this.§,!§];
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : §]K§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§]K§ = this.§^!R§(param1,param2,param3);
         if(!_loc6_)
         {
            this.§!!=§();
         }
         return _loc4_;
      }
      
      public function getBirdCount() : Number
      {
         return this.mBirds.length;
      }
   }
}
