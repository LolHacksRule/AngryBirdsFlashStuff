package §3G§
{
   import §#h§.§ !H§;
   import §,!C§.§0v§;
   import §,!C§.§implements§;
   import §,_§.§-!!§;
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §5`§.§%F§;
   import §5`§.§+R§;
   import §7!=§.Texture;
   import §=!B§.§^!9§;
   import §>K§.§9X§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import §`6§.§5L§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3X§
   {
      
      public static const §!J§:int = 0;
      
      public static const §?!H§:int = 1;
      
      public static const §`9§:int = 2;
      
      public static const §=2§:int = 3;
      
      public static const §%g§:int = 5;
      
      public static const § !5§:int = 3151368;
      
      protected static const §4g§:int = 8;
      
      protected static const §-J§:int = 0;
      
      public static const §-'§:Number = 46.25;
      
      public static const §,#§:Number = 52.5;
      
      protected static const §5%§:Number = -0.7;
      
      protected static const §+s§:Number = 0;
      
      protected static var §?!<§:Texture;
      
      public static const §]6§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?!H§ = 1;
            if(_loc2_ || _loc1_)
            {
               §`9§ = 2;
               §=2§ = 3;
               §%g§ = 5;
               if(_loc2_)
               {
                  § !5§ = 3151368;
                  if(_loc2_)
                  {
                     §4g§ = 8;
                     §-J§ = 0;
                     §-'§ = 46.25;
                     §§goto(addr77);
                  }
                  addr77:
                  §,#§ = 52.5;
                  §5%§ = -0.7;
                  if(_loc2_ || §3X§)
                  {
                     §+s§ = 0;
                     if(_loc2_ || _loc1_)
                     {
                     }
                  }
                  §§goto(addr103);
               }
               §]6§ = 0.4;
               §§goto(addr103);
            }
            §§goto(addr77);
         }
         addr103:
      }
      
      public var §33§:§!E§;
      
      public var §^C§:Number;
      
      public var §0§:Number;
      
      public var §^5§:Number;
      
      protected var §]!4§:Number;
      
      protected var §'T§:Number;
      
      protected var §50§:Number;
      
      protected var §%9§:Number;
      
      public var §8O§:Number;
      
      public var §`m§:Boolean = false;
      
      protected var §,3§:Number;
      
      public var §'@§:Vector.<§6A§>;
      
      public var §'t§:int;
      
      public var §[G§:int;
      
      public var §?S§:Number;
      
      public var §21§:Sprite;
      
      public var §&$§:int = 0;
      
      public var §23§:Number = 0;
      
      public var §@L§:Array;
      
      public var §;!6§:Array;
      
      public var mSlingShotState:int;
      
      public var §&F§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §^l§:Boolean = false;
      
      public var §>q§:Number;
      
      protected var §62§:Sprite;
      
      protected var §[g§:§-!!§;
      
      protected var §9G§:§-!!§;
      
      protected var §-!-§:Sprite;
      
      protected var §=!$§:Sprite;
      
      protected var §9!>§:Sprite;
      
      protected var §;§:§4K§;
      
      protected var §27§:§4K§;
      
      private var §0V§:Number = 0;
      
      private var §[i§:int = 0;
      
      protected var §5!§:Number = -0.7;
      
      protected var §3!<§:Number = 0;
      
      public function §3X§(param1:§!E§, param2:§^!9§, param3:Sprite)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:§5L§ = null;
         if(_loc7_)
         {
            this.§'@§ = new Vector.<§6A§>();
            if(_loc7_ || param3)
            {
               super();
               if(_loc7_)
               {
                  this.§33§ = param1;
                  if(!_loc6_)
                  {
                     this.§62§ = param3;
                     if(_loc7_)
                     {
                        addr51:
                        if(param2)
                        {
                           if(_loc7_ || param2)
                           {
                              this.setPosition(param2.§&w§,param2.§11§);
                              addr66:
                              this.§0m§();
                              addr68:
                              _loc4_ = 0;
                              addr70:
                              while(_loc4_ < param2.§ true§)
                              {
                                 _loc5_ = param2.§=_§(_loc4_);
                                 if(!(_loc6_ && param3))
                                 {
                                    this.§12§(_loc5_.id,_loc5_.x,_loc5_.y);
                                    if(!(_loc6_ && this))
                                    {
                                       _loc4_++;
                                    }
                                 }
                              }
                              if(_loc7_ || this)
                              {
                                 this.§[i§ = this.§#f§();
                                 if(_loc7_ || param3)
                                 {
                                    addr132:
                                    this.§'t§ = 0;
                                    if(this.§'@§.length <= 0)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(§9X§);
                                          §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                          if(!_loc6_)
                                          {
                                             §§push(this.§^C§);
                                             if(!(_loc6_ && param3))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_ || param1)
                                                {
                                                   §§push(§§pop() + " ");
                                                   if(_loc7_ || param2)
                                                   {
                                                   }
                                                   addr180:
                                                   §§pop().log(§§pop());
                                                   if(_loc7_)
                                                   {
                                                      this.§;;§(§=2§);
                                                      addr214:
                                                      this.§>q§ = 0;
                                                      this.§@-§();
                                                      this.update(0,true);
                                                      addr223:
                                                      this.§&_§();
                                                      addr225:
                                                      this.§ !>§(0);
                                                      return;
                                                      addr200:
                                                      addr186:
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§push(this.§0§);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr223);
                                    }
                                    else
                                    {
                                       this.§;;§(§!J§);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr66);
                        }
                        else
                        {
                           §9X§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                           this.§;;§(§=2§);
                           if(!(_loc6_ && param3))
                           {
                              §§goto(addr214);
                           }
                        }
                        §§goto(addr214);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr68);
               }
               §§goto(addr51);
            }
            §§goto(addr70);
         }
         §§goto(addr66);
      }
      
      public function get sprite() : Sprite
      {
         return this.§62§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§0V§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§'t§ < this.§'@§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§'@§.length > 0)
         {
            this.§"-§(0);
         }
         if(_loc1_)
         {
            this.§'@§ = null;
            if(!(_loc2_ && this))
            {
               §§push(this.§62§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr67:
                        this.§62§.dispose();
                        this.§62§ = null;
                        if(!_loc2_)
                        {
                           addr73:
                           this.§21§ = null;
                           this.§@L§ = null;
                        }
                     }
                     this.§;!6§ = null;
                     return;
                  }
                  §§goto(addr73);
               }
               §§goto(addr67);
            }
         }
         §§goto(addr67);
      }
      
      public function §5!,§(param1:String, param2:Number, param3:Number, param4:int = -1) : §6A§
      {
         var _loc5_:§6A§;
         (_loc5_ = this.§12§(param1,param2,param3,param4)).§9!H§();
         return _loc5_;
      }
      
      protected function §12§(param1:String, param2:Number, param3:Number, param4:int = -1) : §6A§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§6A§ = new §6A§(this,new Sprite(),param1,param2,param3);
         if(!_loc6_)
         {
            if(param4 < 0)
            {
               if(_loc7_ || param3)
               {
                  this.§'@§.push(_loc5_);
                  if(_loc7_)
                  {
                     addr79:
                     this.§21§.addChild(_loc5_.sprite);
                  }
                  §§goto(addr79);
               }
            }
            else
            {
               this.§'@§.splice(param4,0,_loc5_);
               if(_loc7_ || param3)
               {
                  §§goto(addr79);
               }
            }
            return _loc5_;
         }
         §§goto(addr79);
      }
      
      public function §;;§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mSlingShotState = param1;
            §§push(this.mSlingShotState);
            if(_loc2_ || _loc2_)
            {
               §§push(§!J§);
               if(_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        this.§3!>§();
                        if(_loc2_ || this)
                        {
                           this.§?S§ = 1000;
                           if(_loc3_)
                           {
                              addr134:
                              this.§?S§ = 2000;
                           }
                        }
                        else
                        {
                           addr68:
                        }
                     }
                     else
                     {
                        this.§'@§[this.§'t§].setPosition(this.§50§ - this.§'@§[this.§'t§].radius * Math.cos(this.§23§ / (180 / Math.PI)),this.§%9§ + this.§'@§[this.§'t§].radius * Math.sin(this.§23§ / (180 / Math.PI)));
                        addr162:
                        if(!_loc3_)
                        {
                           addr218:
                        }
                     }
                  }
                  else
                  {
                     §§push(this.mSlingShotState);
                     if(!_loc3_)
                     {
                        §§push(§?!H§);
                        if(!_loc3_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc2_)
                              {
                                 this.§3!>§();
                                 this.§?S§ = 0;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr68);
                                 }
                                 else
                                 {
                                    addr142:
                                    if(this.mDragging)
                                    {
                                       if(_loc2_)
                                       {
                                          this.mDragging = false;
                                          addr150:
                                          this.§^l§ = false;
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             this.§3!>§();
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr218);
                                    }
                                    else
                                    {
                                       this.§3!>§();
                                       if(_loc2_ || this)
                                       {
                                          addr228:
                                          this.mDragging = false;
                                       }
                                    }
                                 }
                                 §§goto(addr231);
                              }
                              §§goto(addr68);
                           }
                           else
                           {
                              §§push(this.mSlingShotState);
                              if(!(_loc3_ && param1))
                              {
                                 addr78:
                                 §§push(§`9§);
                                 if(!_loc3_)
                                 {
                                    addr81:
                                    if(§§pop() == §§pop())
                                    {
                                       this.§?S§ = 10000;
                                       if(!_loc3_)
                                       {
                                          this.§^l§ = false;
                                          if(_loc2_)
                                          {
                                             this.§3!>§();
                                             if(_loc3_ && _loc2_)
                                             {
                                             }
                                             §§goto(addr228);
                                          }
                                          else
                                          {
                                             §§goto(addr162);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr150);
                                       }
                                       §§goto(addr162);
                                    }
                                    else
                                    {
                                       §§push(this.mSlingShotState);
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§push(§=2§);
                                          if(!(_loc3_ && this))
                                          {
                                             addr129:
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   this.§3!>§();
                                                   §§goto(addr134);
                                                }
                                                else
                                                {
                                                   §§goto(addr142);
                                                }
                                             }
                                             addr140:
                                             §§push(this.mSlingShotState);
                                             §§push(§%g§);
                                             §§goto(addr228);
                                          }
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr142);
                                 }
                                 §§goto(addr228);
                              }
                              §§goto(addr140);
                           }
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr228);
               }
               §§goto(addr81);
            }
            §§goto(addr78);
         }
         §§goto(addr162);
      }
      
      public function get §6u§() : §!E§
      {
         return this.§33§;
      }
      
      public function §'!A§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mSlingShotState == §=2§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     addr43:
                     §§pop();
                     §§push(this.§?S§ <= 0);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr43);
      }
      
      private function §0m§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§+R§ = this.§!4§();
         var _loc2_:§%F§ = _loc1_.getFrame(0);
         var _loc3_:§%F§ = _loc1_.getFrame(1);
         if(!_loc4_)
         {
            this.§;§ = new §4K§(_loc2_.texture);
         }
         §§push(this.§;§);
         if(!(_loc4_ && this))
         {
            §§push(_loc2_.scale);
            if(_loc5_)
            {
               §§pop().scaleX = §§pop();
               if(_loc5_)
               {
                  addr59:
                  this.§;§.scaleY = _loc2_.scale;
                  this.§27§ = new §4K§(_loc3_.texture);
                  §§push(this.§27§);
                  if(_loc5_)
                  {
                     §§push(_loc3_.scale);
                     if(_loc5_)
                     {
                        §§pop().scaleX = §§pop();
                        addr87:
                        §§push(this.§27§);
                        §§push(_loc3_.scale);
                     }
                     §§pop().scaleY = §§pop();
                     if(!_loc4_)
                     {
                        this.§0!;§();
                        this.§`!-§();
                        this.§21§ = new Sprite();
                        if(_loc5_ || _loc1_)
                        {
                           §§push(this.§62§);
                           if(_loc5_)
                           {
                              §§pop().addChild(this.§;§);
                              if(!_loc4_)
                              {
                                 §§push(this.§62§);
                                 if(!_loc4_)
                                 {
                                    §§pop().addChild(this.§-!-§);
                                    addr123:
                                    §§push(this.§62§);
                                    if(_loc5_)
                                    {
                                       §§pop().addChild(this.§21§);
                                       addr130:
                                       §§push(this.§62§);
                                       if(!_loc4_)
                                       {
                                          addr134:
                                          §§pop().addChild(this.§9!>§);
                                          §§push(this.§62§);
                                          if(_loc5_ || this)
                                          {
                                             §§pop().addChild(this.§=!$§);
                                             addr159:
                                             §§push(this.§62§);
                                          }
                                       }
                                    }
                                    §§goto(addr134);
                                 }
                                 §§pop().addChild(this.§27§);
                                 §§push(this);
                                 §§push(this.§0§);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(§§pop() + 8.5);
                                 }
                                 §§pop().§^5§ = §§pop();
                                 return;
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr87);
               }
               §§goto(addr123);
            }
         }
         §§goto(addr59);
      }
      
      protected function §!4§() : §+R§
      {
         return this.§33§.§ use§.§,!;§("SLINGSHOT");
      }
      
      public function §0!;§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc2_ || this)
         {
            this.§]!4§ = this.§^C§;
            if(_loc2_ || this)
            {
               this.§'T§ = this.§0§;
               if(_loc2_ || this)
               {
                  addr73:
                  this.§,3§ = §&!"§.§8o§;
               }
               _loc1_ = null;
               return;
            }
         }
         §§goto(addr73);
      }
      
      protected function §`!-§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(!_loc3_)
         {
            if(!§?!<§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(!(_loc3_ && _loc2_))
                  {
                     §?!<§ = this.§33§.textureManager.§-§(_loc2_);
                  }
               }
               addr57:
               var _loc1_:§4K§ = new §4K§(§?!<§);
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.rotation = Math.PI;
                  if(_loc4_)
                  {
                     _loc1_.x = _loc1_.width / 2;
                     _loc1_.y = _loc1_.height / 2;
                     if(!_loc3_)
                     {
                        this.§9!>§.addChild(_loc1_);
                        if(!_loc3_)
                        {
                           this.§-!-§ = new Sprite();
                           this.§[g§ = new §-!!§(2,2,§ !5§);
                           this.§-!-§.addChild(this.§[g§);
                           addr116:
                        }
                        this.§=!$§ = new Sprite();
                        if(_loc4_)
                        {
                           this.§9G§ = new §-!!§(2,2,§ !5§);
                           if(!(_loc3_ && _loc2_))
                           {
                              addr151:
                              this.§=!$§.addChild(this.§9G§);
                           }
                        }
                        §§goto(addr151);
                     }
                     return;
                  }
                  §§goto(addr116);
               }
               §§goto(addr151);
            }
            this.§9!>§ = new Sprite();
         }
         §§goto(addr57);
      }
      
      public function § !>§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§%9§);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() / §!E§.§#N§);
            if(_loc6_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§50§);
            if(_loc6_)
            {
               §§push(§§pop() / §!E§.§#N§);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(3.5);
            if(_loc6_)
            {
               §§push(8);
               §§push(this.§,3§);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(this.§8O§);
                  if(!(_loc7_ && _loc3_))
                  {
                     addr76:
                     §§push(§§pop() - §§pop());
                     if(_loc6_ || _loc2_)
                     {
                        §§push(this.§,3§);
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc6_ || this)
                     {
                        addr86:
                        var _loc4_:Number = §§pop();
                        §§push(this.§9!>§);
                        if(_loc6_ || param1)
                        {
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              §§pop().x = §§pop();
                              if(!_loc7_)
                              {
                                 §§push(this.§9!>§);
                                 if(_loc6_)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§pop().y = §§pop();
                                       if(_loc6_)
                                       {
                                          addr119:
                                          §§push(this.§9!>§);
                                          §§push(this.§23§);
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(-§§pop());
                                             if(_loc6_ || _loc2_)
                                             {
                                                addr141:
                                                §§pop().rotation = §§pop() / (180 / Math.PI);
                                                if(_loc6_)
                                                {
                                                   §§push(this.§;§);
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      §§push(this.§^C§);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(§!E§.§#N§);
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc6_ || this)
                                                            {
                                                               §§push(3);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     if(_loc6_)
                                                                     {
                                                                        addr190:
                                                                        §§push(this.§;§);
                                                                        §§push(this.§0§);
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           addr199:
                                                                           §§push(§§pop() / §!E§.§#N§);
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              addr209:
                                                                              §§push(§§pop() - 30);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           §§push(this.§27§);
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              §§push(this.§^C§);
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 §§push(§!E§.§#N§);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       addr242:
                                                                                       §§push(30);
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                addr263:
                                                                                                §§push(this.§27§);
                                                                                                §§push(this.§0§);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr267:
                                                                                                   §§push(§§pop() / §!E§.§#N§);
                                                                                                   if(_loc6_ || _loc2_)
                                                                                                   {
                                                                                                      addr277:
                                                                                                      §§push(§§pop() - 30);
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   §§push(this.§=!$§);
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      §§push(this.§^C§);
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(§!E§.§#N§);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               §§push(17);
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     §§push(this.§=!$§);
                                                                                                                     if(!(_loc7_ && this))
                                                                                                                     {
                                                                                                                        addr336:
                                                                                                                        §§push(this.§0§);
                                                                                                                        if(!(_loc7_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr345:
                                                                                                                           §§push(§§pop() / §!E§.§#N§);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§goto(addr352);
                                                                                                                        }
                                                                                                                        addr352:
                                                                                                                        §§pop().y = §§pop() + 5;
                                                                                                                        §§goto(addr535);
                                                                                                                     }
                                                                                                                     §§pop().rotation = Math.atan2(_loc2_ - this.§=!$§.y,_loc3_ - this.§=!$§.x);
                                                                                                                     §§push(this.§-!-§);
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        §§push(this.§^C§);
                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§!E§.§#N§);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              if(_loc6_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + 22);
                                                                                                                                 if(!(_loc7_ && param1))
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    if(_loc6_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§-!-§);
                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                       {
                                                                                                                                          addr456:
                                                                                                                                          §§push(this.§0§);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             addr435:
                                                                                                                                             §§push(§§pop() / §!E§.§#N§);
                                                                                                                                          }
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§-!-§);
                                                                                                                                          }
                                                                                                                                          §§push(this.§9G§);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§=!$§.x,2) + Math.pow(_loc2_ - this.§=!$§.y,2));
                                                                                                                                             §§goto(addr480);
                                                                                                                                          }
                                                                                                                                          §§goto(addr515);
                                                                                                                                       }
                                                                                                                                       §§pop().rotation = Math.atan2(_loc2_ - this.§-!-§.y,_loc3_ - this.§-!-§.x);
                                                                                                                                       §§goto(addr456);
                                                                                                                                    }
                                                                                                                                    §§goto(addr480);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr435);
                                                                                                                     }
                                                                                                                     §§goto(addr456);
                                                                                                                  }
                                                                                                                  §§goto(addr350);
                                                                                                               }
                                                                                                               §§goto(addr351);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr345);
                                                                                                      }
                                                                                                      §§goto(addr352);
                                                                                                   }
                                                                                                   §§goto(addr336);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr480);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr277);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr267);
                                                                              }
                                                                              §§goto(addr242);
                                                                           }
                                                                           §§goto(addr263);
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                     addr480:
                                                                     §§push(this.§[g§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§-!-§.x,2) + Math.pow(_loc2_ - this.§-!-§.y,2));
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(this.§9G§);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              addr515:
                                                                              §§push(this.§[g§);
                                                                              §§push(_loc4_);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(§§pop() * 2);
                                                                              }
                                                                              §§push(§§pop().height = §§pop());
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 §§pop().height = §§pop();
                                                                                 addr535:
                                                                                 §§goto(addr560);
                                                                              }
                                                                              addr560:
                                                                              §§goto(addr537);
                                                                           }
                                                                           addr537:
                                                                           addr350:
                                                                           addr351:
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(this.§=!$§);
                                                                           }
                                                                           §§push(this.§9G§);
                                                                           §§push(-this.§9G§.height);
                                                                           if(!(_loc7_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() / 2);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           §§goto(addr561);
                                                                        }
                                                                        addr561:
                                                                        §§goto(addr563);
                                                                     }
                                                                     addr563:
                                                                     §§push(this.§[g§);
                                                                     §§push(-this.§[g§.height);
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() / 2);
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        this.§&F§ = false;
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr199);
                                                               }
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr456);
                                             }
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr352);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr86);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr76);
            }
            §§goto(addr86);
         }
         §§goto(addr30);
      }
      
      public function §4A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         do
         {
            if(this.§'@§.length > 0)
            {
               continue;
            }
            if(!_loc1_)
            {
               this.§8=§();
               if(_loc2_ || _loc1_)
               {
                  this.§12§("BIRD_SARDINE",this.§^C§,this.§0§);
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  §§goto(addr78);
               }
               break;
            }
            §§goto(addr78);
         }
         while(this.§"-§(0,true), !_loc1_);
         
         this.§;;§(§`9§);
         addr78:
      }
      
      protected function §8=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            § !H§.§ !%§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§;;§(§%g§);
         }
      }
      
      public function §3!>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this);
            §§push(this.§]!4§);
            §§push(this.§'T§);
            if(!_loc2_)
            {
               §§push(this.§,3§);
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
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         if(!(_loc9_ && param2))
         {
            §§push(this.§50§ == param1);
            if(_loc10_ || param3)
            {
               §§push(§§pop());
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(this.§%9§ == param2);
                  }
                  if(§§pop())
                  {
                     return true;
                  }
                  this.§8O§ = Math.sqrt((param2 - this.§'T§) * (param2 - this.§'T§) + (param1 - this.§]!4§) * (param1 - this.§]!4§));
                  if(_loc10_)
                  {
                     §§push(this.§8O§);
                     if(!(_loc9_ && this))
                     {
                        §§push(this.§,3§);
                        if(_loc10_)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(!(_loc9_ && this))
                              {
                                 §§push(param3);
                                 if(_loc10_ || param2)
                                 {
                                    if(§§pop())
                                    {
                                       this.§8O§ = Math.sqrt((this.§%9§ - this.§'T§) * (this.§%9§ - this.§'T§) + (this.§50§ - this.§]!4§) * (this.§50§ - this.§]!4§));
                                       return false;
                                    }
                                    §§push(this.§]!4§);
                                    §§push(this.§,3§);
                                    §§push(param1);
                                    if(_loc10_)
                                    {
                                       §§push(this.§]!4§);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() * (§§pop() - §§pop()) / this.§8O§);
                                          if(!(_loc9_ && this))
                                          {
                                             param1 = Number(§§pop() + §§pop());
                                             if(_loc10_ || this)
                                             {
                                                §§push(this.§'T§);
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(this.§,3§);
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      §§push(param2);
                                                      §§push(this.§'T§);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() * (§§pop() - §§pop()));
                                                         if(_loc10_)
                                                         {
                                                            §§push(this.§8O§);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(_loc10_ || param2)
                                                               {
                                                                  addr222:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        param2 = §§pop();
                                                                        this.§8O§ = this.§,3§;
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           addr245:
                                                                           this.§50§ = param1;
                                                                           this.§%9§ = param2;
                                                                           this.§23§ = Math.atan2(-(this.§%9§ - this.§'T§),this.§50§ - this.§]!4§);
                                                                           §§push(this);
                                                                           §§push(this.§23§);
                                                                           if(_loc10_ || param3)
                                                                           {
                                                                              §§push(§§pop() * (180 / Math.PI));
                                                                           }
                                                                           §§pop().§23§ = §§pop();
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(this.mDragging);
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 §§push(false);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(param1);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(§§pop() + this.§5!§);
                                                                                          }
                                                                                          §§pop().§50§ = §§pop();
                                                                                          if(!(_loc9_ && param2))
                                                                                          {
                                                                                             addr319:
                                                                                             §§push(this);
                                                                                             §§push(param2);
                                                                                             if(_loc10_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() + this.§3!<§);
                                                                                             }
                                                                                             §§pop().§%9§ = §§pop();
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                this.§23§ = -160;
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   addr344:
                                                                                                   §§push(12);
                                                                                                   if(_loc10_ || param3)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc10_ || this)
                                                                                                      {
                                                                                                         addr360:
                                                                                                         _loc4_ = §§pop();
                                                                                                         §§push(5);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr364:
                                                                                                            _loc5_ = §§pop();
                                                                                                            §§push(4);
                                                                                                         }
                                                                                                         _loc6_ = §§pop();
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            §§push(this.§,3§);
                                                                                                            §§push(2);
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(!(_loc9_ && param3))
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr398:
                                                                                                                     §§push(this.§8O§);
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!(_loc9_ && this))
                                                                                                                           {
                                                                                                                              addr414:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr418:
                                                                                                                                    §§push(this.§23§);
                                                                                                                                    if(!(_loc9_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(-90);
                                                                                                                                       if(_loc10_ || this)
                                                                                                                                       {
                                                                                                                                          addr435:
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(!(_loc9_ && param3))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             if(!(_loc9_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() > §§pop() + §§pop());
                                                                                                                                                if(!(_loc9_ && param3))
                                                                                                                                                {
                                                                                                                                                   addr471:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         addr475:
                                                                                                                                                         §§pop();
                                                                                                                                                         if(!(_loc9_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§23§);
                                                                                                                                                            §§push(-90);
                                                                                                                                                            if(!(_loc9_ && this))
                                                                                                                                                            {
                                                                                                                                                               addr493:
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  addr496:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc9_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              addr513:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr524:
                                                                                                                                                                                    §§push(this.§]!4§);
                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                    §§push(this.§]!4§);
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr529:
                                                                                                                                                                                       §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() / this.§8O§);
                                                                                                                                                                                          if(_loc10_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr545:
                                                                                                                                                                                             param1 = Number(§§pop() + §§pop());
                                                                                                                                                                                             addr544:
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr548:
                                                                                                                                                                                                §§push(this.§'T§);
                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§'T§);
                                                                                                                                                                                                   if(_loc10_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr563:
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         §§push(this.§8O§);
                                                                                                                                                                                                         if(!(_loc9_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr580:
                                                                                                                                                                                                               §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  param2 = §§pop();
                                                                                                                                                                                                                  this.§8O§ = _loc7_;
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§50§ = param1;
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr594:
                                                                                                                                                                                                                        this.§%9§ = param2;
                                                                                                                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr874:
                                                                                                                                                                                                                           addr876:
                                                                                                                                                                                                                           addr887:
                                                                                                                                                                                                                           §§push(this.§8O§);
                                                                                                                                                                                                                           §§push(this.§,3§);
                                                                                                                                                                                                                           if(_loc10_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr886:
                                                                                                                                                                                                                              §§push(§§pop() * 0.45);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§`m§ = true;
                                                                                                                                                                                                                              addr927:
                                                                                                                                                                                                                              this.§&F§ = true;
                                                                                                                                                                                                                              addr930:
                                                                                                                                                                                                                              §§push(true);
                                                                                                                                                                                                                              addr891:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr904:
                                                                                                                                                                                                                              §§push(Boolean(this.§`m§));
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr908:
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr909:
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    addr917:
                                                                                                                                                                                                                                    if(this.§8O§ >= this.§,3§ * 0.8)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr918:
                                                                                                                                                                                                                                       this.§;9§();
                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this.§`m§ = false;
                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr930);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr927);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr917);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           return §§pop();
                                                                                                                                                                                                                           addr604:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr628:
                                                                                                                                                                                                                           §§push(this.§23§);
                                                                                                                                                                                                                           if(_loc10_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(-90);
                                                                                                                                                                                                                              if(_loc10_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                 if(_loc10_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr654:
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       if(_loc10_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                                                                          if(!(_loc9_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr676:
                                                                                                                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr679:
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         addr689:
                                                                                                                                                                                                                                                         §§push(this.§23§);
                                                                                                                                                                                                                                                         §§push(-90 + _loc4_ + _loc6_);
                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                         if(_loc10_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr699:
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            if(!(_loc9_ && param3))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                               if(!(_loc9_ && param3))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr715:
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc10_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr723:
                                                                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                                                                        if(_loc10_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr735:
                                                                                                                                                                                                                                                                           §§push(this.§,3§ - _loc7_);
                                                                                                                                                                                                                                                                           §§push(Math.abs(this.§23§ - -90 - _loc5_) - _loc4_);
                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr748:
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                              if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr756:
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop() / §§pop());
                                                                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr849:
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    if(!(_loc9_ && param3))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       param2 = §§pop();
                                                                                                                                                                                                                                                                                       addr858:
                                                                                                                                                                                                                                                                                       this.§8O§ = _loc8_;
                                                                                                                                                                                                                                                                                       this.§50§ = param1;
                                                                                                                                                                                                                                                                                       this.§%9§ = param2;
                                                                                                                                                                                                                                                                                       if(_loc10_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr874);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr918);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr876);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr768:
                                                                                                                                                                                                                                                                                    §§push(this.§]!4§);
                                                                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr772:
                                                                                                                                                                                                                                                                                       §§push(param1);
                                                                                                                                                                                                                                                                                       §§push(this.§]!4§);
                                                                                                                                                                                                                                                                                       if(!(_loc9_ && param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr781:
                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr789:
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop() * §§pop() / this.§8O§);
                                                                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr804:
                                                                                                                                                                                                                                                                                                   param1 = §§pop();
                                                                                                                                                                                                                                                                                                   §§push(this.§'T§);
                                                                                                                                                                                                                                                                                                   if(_loc10_ || param3)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr849);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr817:
                                                                                                                                                                                                                                                                                                   §§push(param2);
                                                                                                                                                                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr827:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * (§§pop() - this.§'T§));
                                                                                                                                                                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr838:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() / this.§8O§);
                                                                                                                                                                                                                                                                                                         if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr846:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr849);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr917);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr887);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr917);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr804);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr838);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr827);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr838);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr858);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr827);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr772);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr768);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr917);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr874);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr904);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr748);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr838);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr715);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr874);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr689);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr748);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr838);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr699);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr689);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr917);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr604);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr874);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr768);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr748);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr917);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr886);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr827);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr756);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr918);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr817);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr563);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr723);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr607:
                                                                                                                                                                                 §§push(this.§8O§);
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 if(!(_loc9_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr623:
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             §§goto(addr628);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr679);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr909);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr676);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr679);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr846);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr827);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr735);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr689);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr891);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr909);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr513);
                                                                                                                                                }
                                                                                                                                                §§goto(addr909);
                                                                                                                                             }
                                                                                                                                             §§goto(addr827);
                                                                                                                                          }
                                                                                                                                          §§goto(addr496);
                                                                                                                                       }
                                                                                                                                       §§goto(addr493);
                                                                                                                                    }
                                                                                                                                    §§goto(addr544);
                                                                                                                                 }
                                                                                                                                 §§goto(addr715);
                                                                                                                              }
                                                                                                                              §§goto(addr471);
                                                                                                                           }
                                                                                                                           §§goto(addr908);
                                                                                                                        }
                                                                                                                        §§goto(addr513);
                                                                                                                     }
                                                                                                                     §§goto(addr654);
                                                                                                                  }
                                                                                                                  §§goto(addr874);
                                                                                                               }
                                                                                                               §§goto(addr607);
                                                                                                            }
                                                                                                            §§goto(addr435);
                                                                                                         }
                                                                                                         §§goto(addr398);
                                                                                                      }
                                                                                                      §§goto(addr580);
                                                                                                   }
                                                                                                   §§goto(addr364);
                                                                                                }
                                                                                                §§goto(addr858);
                                                                                             }
                                                                                             §§goto(addr874);
                                                                                          }
                                                                                          §§goto(addr628);
                                                                                       }
                                                                                       §§goto(addr319);
                                                                                    }
                                                                                    §§goto(addr344);
                                                                                 }
                                                                                 §§goto(addr414);
                                                                              }
                                                                              §§goto(addr715);
                                                                           }
                                                                           §§goto(addr418);
                                                                        }
                                                                        §§goto(addr594);
                                                                     }
                                                                     §§goto(addr360);
                                                                  }
                                                                  §§goto(addr849);
                                                               }
                                                               §§goto(addr846);
                                                            }
                                                            §§goto(addr789);
                                                         }
                                                         §§goto(addr689);
                                                      }
                                                      §§goto(addr781);
                                                   }
                                                   §§goto(addr886);
                                                }
                                                §§goto(addr545);
                                             }
                                             §§goto(addr548);
                                          }
                                          §§goto(addr524);
                                       }
                                       §§goto(addr529);
                                    }
                                    §§goto(addr838);
                                 }
                                 §§goto(addr623);
                              }
                              §§goto(addr918);
                           }
                           §§goto(addr245);
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr548);
                  }
                  §§goto(addr874);
               }
               §§goto(addr908);
            }
            §§goto(addr475);
         }
         §§goto(addr927);
      }
      
      protected function §;9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § !H§.§ !%§("SlingshotStreched");
         }
      }
      
      public function §%B§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§^C§);
            §§push(this.§0§);
            if(!(_loc3_ && _loc2_))
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
            §§push(§§pop() - this.§^C§);
            if(_loc6_ || param3)
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc7_ && param1))
            {
               this.§^C§ = param1;
            }
            §§push(param2);
            if(_loc6_ || param1)
            {
               §§push(§§pop() - this.§0§);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc7_ && this))
            {
               this.§0§ = param2;
               if(_loc6_)
               {
                  §§push(this);
                  §§push(this.§^5§);
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§^5§ = §§pop();
                  if(!_loc7_)
                  {
                     addr98:
                     §§push(this);
                     §§push(this.§'T§);
                     if(_loc6_ || param2)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§'T§ = §§pop();
                  }
                  §§push(this);
                  §§push(this.§%9§);
                  if(_loc6_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§%9§ = §§pop();
                  §§push(this);
                  §§push(this.§]!4§);
                  if(_loc6_ || param3)
                  {
                     §§push(§§pop() + _loc4_);
                  }
                  §§pop().§]!4§ = §§pop();
                  §§push(this);
                  §§push(this.§50§);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() + _loc4_);
                  }
                  §§pop().§50§ = §§pop();
                  if(_loc6_ || param3)
                  {
                     addr162:
                     if(param3)
                     {
                        this.§ !>§(0);
                     }
                  }
                  this.§&F§ = true;
                  return;
               }
               §§goto(addr98);
            }
            §§goto(addr162);
         }
         §§goto(addr34);
      }
      
      public function § S§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Number = 0;
         var _loc2_:§6A§ = null;
         _loc2_ = this.§'@§[this.§'t§];
         §§push(this.§8O§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() / this.§,3§);
            if(_loc5_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || _loc3_)
         {
            if(_loc2_ != null)
            {
               if(!_loc4_)
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(_loc5_ || this)
                     {
                        addr95:
                        §§push(Number(§3X§.§,#§));
                        if(_loc5_ || _loc2_)
                        {
                           addr111:
                           _loc1_ = §§pop();
                           §§goto(addr113);
                        }
                     }
                     addr113:
                     §§push(_loc1_);
                     if(_loc5_ || _loc2_)
                     {
                        addr121:
                        §§push(§§pop() * _loc3_);
                     }
                     return §§pop();
                  }
                  §§push(Number(§3X§.§-'§));
                  if(!_loc4_)
                  {
                     §§goto(addr111);
                  }
                  §§goto(addr121);
               }
            }
            §§goto(addr111);
         }
         §§goto(addr95);
      }
      
      public function §4G§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§6A§ = null;
         if(_loc3_)
         {
            if(this.§'@§.length <= this.§'t§)
            {
               return null;
            }
            if(_loc3_)
            {
               _loc1_ = this.§'@§[this.§'t§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §<_§() : Point
      {
         return new Point(this.§]!4§,this.§'T§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§6A§ = null;
         if(!_loc4_)
         {
            this.§]o§(param1);
            if(!(_loc4_ && this))
            {
               addr32:
               if(this.§&F§)
               {
                  this.§ !>§(param1);
               }
               §§push(this);
               §§push(this.§?S§);
               if(_loc5_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§?S§ = §§pop();
               if(!_loc4_)
               {
                  if(this.§?S§ < 0)
                  {
                     if(_loc5_)
                     {
                        this.§?S§ = 0;
                     }
                  }
               }
               if(this.mSlingShotState == §=2§)
               {
                  if(!_loc5_)
                  {
                     addr68:
                     _loc3_ = null;
                     if(!_loc4_)
                     {
                        if(this.§'@§.length > 0)
                        {
                           _loc3_ = this.§'@§[this.§'t§];
                        }
                        if(_loc3_)
                        {
                           if(!_loc4_)
                           {
                              _loc3_.§,5§(param1);
                           }
                           addr128:
                           if(this.§?S§ <= 0)
                           {
                              this.§;;§(§?!H§);
                              if(_loc5_)
                              {
                                 _loc3_.§=U§();
                              }
                              else
                              {
                                 addr247:
                                 §§push(this);
                                 §§push(this.§8O§);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(this.§,3§);
                                    if(_loc5_)
                                    {
                                       addr262:
                                       §§push(§§pop() / §§pop());
                                       §§push(this.§23§);
                                    }
                                    §§pop().§0!§(§§pop(),§§pop());
                                    §§goto(addr265);
                                 }
                                 §§goto(addr262);
                              }
                           }
                           §§goto(addr265);
                        }
                        if(!_loc3_)
                        {
                           if(_loc5_)
                           {
                              this.§;;§(§=2§);
                              §§goto(addr265);
                           }
                           else
                           {
                              addr182:
                              §§push(_loc3_);
                              §§push(this.§50§);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(_loc3_.radius);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(§§pop() * Math.cos(this.§23§ / (180 / Math.PI)));
                                    if(!_loc4_)
                                    {
                                       addr214:
                                       §§push(§§pop() - §§pop());
                                       §§push(this.§%9§);
                                       if(!_loc4_)
                                       {
                                          addr218:
                                          §§push(_loc3_.radius);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() * Math.sin(this.§23§ / (180 / Math.PI)));
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                    }
                                    §§pop().setPosition(§§pop(),§§pop());
                                    addr244:
                                    if(this.§^l§)
                                    {
                                       §§goto(addr247);
                                    }
                                    §§goto(addr265);
                                 }
                                 §§goto(addr218);
                              }
                              §§goto(addr214);
                           }
                        }
                        else
                        {
                           §§push(this.mSlingShotState);
                           if(!(_loc4_ && param2))
                           {
                              §§push(§!J§);
                              if(_loc5_ || param1)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr128);
                                 }
                                 else
                                 {
                                    §§push(this.mSlingShotState);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(§?!H§);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr157:
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(_loc3_.§4!%§);
                                                if(_loc5_ || param2)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         this.§;;§(§`9§);
                                                         if(!_loc5_)
                                                         {
                                                         }
                                                         §§goto(addr265);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr244);
                                                      }
                                                   }
                                                   §§goto(addr265);
                                                }
                                             }
                                             §§goto(addr244);
                                          }
                                          else
                                          {
                                             addr180:
                                             §§push(this.mSlingShotState);
                                             §§push(§`9§);
                                          }
                                          §§goto(addr265);
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          §§goto(addr182);
                                       }
                                       §§goto(addr265);
                                    }
                                    §§goto(addr180);
                                 }
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr265);
                     }
                     §§goto(addr128);
                  }
                  else
                  {
                     addr63:
                  }
                  addr265:
                  return;
               }
               this.§2!?§(param1,param2);
               §§goto(addr68);
            }
            §§goto(addr63);
         }
         §§goto(addr32);
      }
      
      public function §7>§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§6A§ = null;
         if(_loc6_)
         {
            if(this.§'@§.length > 0)
            {
               if(_loc6_ || param2)
               {
                  _loc5_ = this.§'@§[this.§'t§];
               }
               §§goto(addr69);
            }
            if(!_loc5_)
            {
               if(!(_loc7_ && param1))
               {
                  §§goto(addr69);
               }
            }
            else
            {
               _loc5_.setPosition(param1,param2);
               if(!(_loc7_ && param3))
               {
                  this.§0!§(param3,param4);
               }
            }
            return;
         }
         addr69:
      }
      
      protected function §0!§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§6A§ = null;
         this.§5!§ = §5%§;
         if(_loc4_ || _loc3_)
         {
            this.§3!<§ = §+s§;
            if(this.§'@§.length > 0)
            {
               if(_loc4_ || this)
               {
                  _loc3_ = this.§'@§[this.§'t§];
                  addr51:
                  if(!_loc3_)
                  {
                     return;
                  }
                  this.mDragging = false;
                  addr74:
                  this.§^l§ = false;
                  this.§0V§ = new Date().time;
                  if(!_loc5_)
                  {
                     this.§33§.§0F§(_loc3_,param1,param2);
                     this.§"-§(this.§'t§,_loc3_.§"@§ > 0);
                     if(!_loc5_)
                     {
                        this.§3!'§();
                        if(_loc4_)
                        {
                           addr114:
                           if(this.§'t§ < this.§'@§.length)
                           {
                              this.§;;§(§!J§);
                           }
                           §§goto(addr134);
                        }
                        this.§;;§(§=2§);
                        if(_loc4_ || param1)
                        {
                           addr130:
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr130);
               }
               addr134:
               return;
            }
            §§goto(addr51);
         }
         §§goto(addr74);
      }
      
      protected function §3!'§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§ !H§);
            §§push("BirdShot");
            if(!_loc3_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§ !%§(§§pop());
         }
      }
      
      public function §2!?§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§'t§);
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < this.§'@§.length)
            {
               §§push(this.mSlingShotState);
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
               if(§§pop() != §%g§)
               {
                  this.§'@§[_loc4_].update(param1,false,param2);
                  if(!_loc6_)
                  {
                  }
                  break;
               }
               if(_loc6_)
               {
                  this.§'@§[_loc4_].update(param1,true,param2);
                  if(!_loc6_)
                  {
                  }
                  addr94:
                  _loc4_++;
                  if(_loc5_)
                  {
                     break;
                  }
                  continue loop0;
               }
               §§goto(addr94);
            }
            return;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§6A§ = null;
         var _loc2_:* = 0;
         if(_loc6_ || _loc3_)
         {
            this.mDragging = false;
            if(!(_loc5_ && _loc2_))
            {
               this.§3!>§();
               if(!(_loc5_ && _loc2_))
               {
                  addr48:
                  if(this.§[G§ >= this.§'@§.length)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr56);
                     }
                  }
               }
               _loc1_ = this.§'@§[this.§[G§];
               if(_loc6_)
               {
                  §§push(§0v§.§&2§(_loc1_.name).score);
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
                  if(_loc6_ || _loc2_)
                  {
                     §§push(this.§33§);
                     §§push(_loc2_);
                     §§push(§4f§.§7!"§);
                     §§push(true);
                     §§push(_loc1_.x);
                     §§push(_loc1_.y);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(3);
                        if(_loc6_ || this)
                        {
                           addr119:
                           §§push(§§pop() - §§pop());
                           §§push(§,i§.§[!1§(_loc1_.name));
                        }
                        §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                        if(!(_loc5_ && _loc2_))
                        {
                           _loc1_.§&6§(-1,true);
                           if(!(_loc5_ && this))
                           {
                              addr152:
                              var _loc3_:*;
                              §§push((_loc3_ = this).§[G§);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc6_ || _loc1_)
                              {
                                 _loc3_.§[G§ = _loc4_;
                              }
                           }
                           §§goto(addr172);
                        }
                        addr172:
                        return true;
                     }
                     §§goto(addr119);
                  }
               }
               §§goto(addr152);
            }
            §§goto(addr48);
         }
         addr56:
         return false;
      }
      
      public function §#f§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§6A§ = null;
         var _loc1_:* = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§'@§)
         {
            if(!_loc5_)
            {
               §§push(_loc1_);
               if(_loc6_ || _loc3_)
               {
                  §§push(int(§§pop() + §0v§.§&2§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §<w§() : int
      {
         return this.§[i§;
      }
      
      public function §]o§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         §§push(this.§>q§);
         if(_loc3_ || this)
         {
            §§push(0);
            if(_loc3_ || this)
            {
               if(§§pop() >= §§pop())
               {
                  §§push(this);
                  §§push(this.§>q§);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§>q§ = §§pop();
                  if(!_loc4_)
                  {
                     addr54:
                     if(this.§>q§ <= 0)
                     {
                        §§push(this.§33§);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop().objects);
                           if(!_loc4_)
                           {
                              §§push(§§pop().§@F§(this.§]!4§,this.§^5§));
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(int(§§pop()));
                                 if(_loc3_)
                                 {
                                    addr92:
                                    _loc2_ = §§pop();
                                    §§push(_loc2_);
                                 }
                                 if(§§pop() < 0)
                                 {
                                    if(_loc3_)
                                    {
                                       this.§%B§(0.1);
                                       if(_loc3_)
                                       {
                                          this.§>q§ = 0;
                                          if(_loc4_ && _loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr171:
                                          this.§>q§ = 2000;
                                          if(!_loc4_)
                                          {
                                             addr176:
                                          }
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr161);
                                 }
                                 else
                                 {
                                    §§push(this.§33§);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop().objects);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(_loc2_);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop().§6!"§(§§pop()));
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop().§@!+§);
                                                if(_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      addr151:
                                                      this.§>q§ = -1;
                                                      if(_loc3_ || param1)
                                                      {
                                                         addr161:
                                                         §§goto(addr180);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr171);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr167:
                                                      §§push(this.§33§.objects.§6!"§(_loc2_).§-[§());
                                                   }
                                                   §§goto(addr180);
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr171);
                                                   }
                                                   §§goto(addr176);
                                                }
                                                else
                                                {
                                                   this.§>q§ = 500;
                                                   §§goto(addr180);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr167);
                                 }
                              }
                              §§goto(addr92);
                           }
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr151);
               }
               addr180:
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function §&_§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         do
         {
            §§push(this.§33§.objects.§@F§(this.§]!4§,this.§^5§));
            if(!_loc4_)
            {
               §§push(int(§§pop()));
               if(!_loc4_)
               {
                  _loc2_ = §§pop();
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && _loc1_))
                     {
                        addr61:
                        §§push(-1);
                        if(!(_loc4_ && _loc1_))
                        {
                           if(§§pop() != §§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr107:
                                 this.§>q§ = -1;
                              }
                              else
                              {
                                 addr93:
                                 §§push(_loc1_);
                                 if(!_loc4_)
                                 {
                                    addr96:
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() - 1);
                                       if(!_loc4_)
                                       {
                                          _loc1_ = §§pop();
                                          addr103:
                                          §§push(0);
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr103);
                              }
                           }
                           else
                           {
                              this.§%B§(0.1);
                              if(_loc3_)
                              {
                                 §§goto(addr93);
                              }
                           }
                           §§goto(addr110);
                        }
                        continue;
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr107);
               }
               §§goto(addr96);
            }
            §§goto(addr61);
         }
         while(§§pop() > §§pop());
         
         if(_loc3_)
         {
            §§goto(addr107);
         }
         addr110:
      }
      
      public function §+C§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§62§);
            if(_loc4_ || this)
            {
               §§push(param1);
               if(_loc4_ || this)
               {
                  §§push(-§§pop());
                  if(_loc4_ || this)
                  {
                     §§pop().x = §§pop();
                     if(!(_loc3_ && this))
                     {
                        addr79:
                        §§push(this.§62§);
                        §§push(param2);
                        if(!_loc3_)
                        {
                           addr83:
                           §§pop().y = -§§pop();
                        }
                        §§goto(addr83);
                     }
                     return;
                  }
               }
               §§goto(addr83);
            }
         }
         §§goto(addr79);
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.mSlingShotState == §`9§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(_loc2_)
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr86);
                  }
                  addr70:
                  §§push(Boolean(§§pop()));
                  if(_loc2_ || _loc2_)
                  {
                     addr78:
                     if(§§pop())
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr86:
                           §§push(true);
                           if(_loc2_ || param1)
                           {
                              §§goto(addr94);
                           }
                        }
                        else
                        {
                           addr95:
                           §§push(false);
                        }
                     }
                     §§goto(addr95);
                  }
                  return §§pop();
               }
               §§goto(addr78);
            }
            addr94:
            return §§pop();
         }
         §§goto(addr95);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.mSlingShotState == §`9§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr43:
                     §§pop();
                     §§push(this.§8O§);
                     §§push(this.§,3§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() * §]6§);
                     }
                     §§push(§§pop() > §§pop());
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr43);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mDragging = false;
            if(!_loc3_)
            {
               addr33:
               this.§;;§(§`9§);
            }
            var _loc1_:§6A§ = this.§'@§[this.§'t§];
            if(_loc2_ || this)
            {
               _loc1_.§&6§(§implements§.§=j§);
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.mDragging = true;
         }
         var _loc1_:§6A§ = this.§'@§[this.§'t§];
         if(_loc3_ || this)
         {
            _loc1_.§&6§(§implements§.§3!I§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§^l§ = true;
         }
      }
      
      protected function §"-§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§6A§ = null;
         if(!_loc4_)
         {
            if(param1 < 0)
            {
               if(!(_loc4_ && this))
               {
                  return;
               }
            }
            if(this.§'@§[param1])
            {
               if(_loc5_)
               {
                  _loc3_ = this.§'@§[param1];
                  if(_loc5_)
                  {
                     this.§21§.removeChild(_loc3_.sprite);
                     if(!(_loc4_ && this))
                     {
                        if(param2)
                        {
                           if(!(_loc4_ && param1))
                           {
                              this.§+!,§(this.§'@§[param1]);
                              if(_loc4_)
                              {
                              }
                           }
                           §§goto(addr113);
                        }
                        _loc3_.dispose();
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr113);
                  }
                  this.§'@§[param1] = null;
               }
            }
            §§goto(addr113);
         }
         addr113:
         this.§'@§.splice(param1,1);
      }
      
      public function §+!,§(param1:§6A§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:int = 5;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               §§push(this.§33§);
               break;
            }
            §§push(Number(_loc4_ + Math.random() * (720 / _loc3_)));
            if(!(_loc10_ && _loc3_))
            {
               §§push(§§pop());
               if(!_loc10_)
               {
                  _loc4_ = §§pop();
                  if(_loc9_)
                  {
                     §§push(§§pop() / (180 / Math.PI));
                     if(_loc9_ || _loc2_)
                     {
                        _loc6_ = §§pop();
                        §§push(param1.sprite);
                        if(_loc9_)
                        {
                           §§push(-§§pop().width);
                           if(!_loc10_)
                           {
                              addr78:
                              §§push(§!E§.§#N§);
                              if(!(_loc10_ && param1))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc10_)
                                 {
                                    addr90:
                                    §§push(_loc7_ = §§pop());
                                    §§push(Math.random() * -_loc7_);
                                    if(_loc9_)
                                    {
                                       §§push(2);
                                       if(_loc9_)
                                       {
                                          addr104:
                                          §§push(§§pop() + §§pop() * §§pop());
                                          if(_loc9_ || this)
                                          {
                                             _loc7_ = §§pop();
                                             addr116:
                                             §§push(-param1.sprite.height * §!E§.§#N§);
                                             if(!(_loc10_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc9_ || param1)
                                                {
                                                   addr136:
                                                   §§push(_loc8_ = §§pop());
                                                   §§push(Math.random() * -_loc8_);
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      addr161:
                                                      §§push(§§pop() * 2);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                             §§goto(addr136);
                                          }
                                          _loc8_ = Number(§§pop());
                                          if(_loc10_ && this)
                                          {
                                             continue;
                                          }
                                          §§push(this.§33§);
                                          if(_loc10_ && _loc3_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().particles);
                                          if(_loc9_ || param1)
                                          {
                                             §§push(§,i§.§?I§);
                                             if(!_loc10_)
                                             {
                                                §§push(§;x§.§]+§);
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   §§push(§,i§.§6I§);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(param1.x);
                                                      if(_loc9_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               addr216:
                                                               §§push(param1.y);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop() + _loc8_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr224:
                                                                     §§push(1500);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push("");
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           §§push(§,i§.§?Q§(param1.name));
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(§§pop() * Math.cos(_loc6_));
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop() * Math.sin(_loc6_));
                                                                                 }
                                                                              }
                                                                              §§push(5);
                                                                              §§push(_loc2_);
                                                                              if(!(_loc10_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() * 20);
                                                                              }
                                                                              §§pop().§8"§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              _loc5_++;
                                                                              if(_loc9_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr304:
                                                                              §§pop().§8"§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                                           }
                                                                           return;
                                                                        }
                                                                        addr303:
                                                                        §§push(0);
                                                                        §§goto(addr304);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr302:
                                                                        §§push("");
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr301:
                                                                     §§push(1000);
                                                                  }
                                                                  §§goto(addr302);
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            else
                                                            {
                                                               addr299:
                                                               §§push(param1.y);
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   else
                                                   {
                                                      addr297:
                                                      §§push(param1.x);
                                                   }
                                                   §§goto(addr299);
                                                }
                                                else
                                                {
                                                   addr295:
                                                   §§push(§,i§.§6I§);
                                                }
                                                §§goto(addr297);
                                             }
                                             else
                                             {
                                                addr293:
                                                §§push(§;x§.§]+§);
                                             }
                                             §§goto(addr295);
                                          }
                                          else
                                          {
                                             addr291:
                                             §§push(§,i§.§ 5§);
                                          }
                                          §§goto(addr293);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr116);
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr78);
         }
         §§goto(addr291);
         §§push(§§pop().particles);
      }
      
      public function §'>§(param1:§6A§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§"-§(this.§'@§.indexOf(param1));
         }
      }
      
      public function §@-§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§6A§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§6A§ = null;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc6_)
            {
               if(§§pop() < this.§'@§.length - 1)
               {
                  §§push(Number(Math.sqrt((this.§^C§ - this.§'@§[_loc1_].x) * (this.§^C§ - this.§'@§[_loc1_].x) + (this.§0§ - this.§'@§[_loc1_].y) * (this.§0§ - this.§'@§[_loc1_].y))));
                  if(!(_loc6_ && _loc1_))
                  {
                     _loc3_ = §§pop();
                     §§push(Number(Math.sqrt((this.§^C§ - this.§'@§[_loc1_ + 1].x) * (this.§^C§ - this.§'@§[_loc1_ + 1].x) + (this.§0§ - this.§'@§[_loc1_ + 1].y) * (this.§0§ - this.§'@§[_loc1_ + 1].y))));
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(§§pop());
                        if(_loc7_ || _loc2_)
                        {
                           _loc4_ = §§pop();
                           addr149:
                           §§push(_loc3_);
                        }
                        if(§§pop() < §§pop())
                        {
                           _loc5_ = this.§'@§[_loc1_];
                           if(_loc7_)
                           {
                              this.§'@§.splice(_loc1_,1);
                              if(!(_loc6_ && this))
                              {
                                 this.§'@§.splice(_loc1_ + 1,0,_loc5_);
                                 if(!_loc7_)
                                 {
                                 }
                                 addr189:
                                 _loc1_++;
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 addr200:
                                 loop1:
                                 while(true)
                                 {
                                    §§push(this.§21§);
                                    while(§§pop().numChildren > 0)
                                    {
                                       §§push(this.§21§);
                                       if(_loc7_ || this)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    §§push(0);
                                    if(_loc7_)
                                    {
                                       break loop0;
                                    }
                                    loop4:
                                    while(§§pop() < this.§'@§.length)
                                    {
                                       _loc2_ = this.§'@§[_loc1_];
                                       if(_loc7_ || this)
                                       {
                                          this.§21§.addChildAt(_loc2_.sprite,0);
                                          if(_loc7_)
                                          {
                                             _loc1_++;
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    §§goto(addr263);
                                 }
                              }
                              §§goto(addr189);
                           }
                           _loc1_ = int(Math.max(-1,_loc1_ - 2));
                        }
                        §§goto(addr189);
                     }
                  }
                  §§goto(addr149);
               }
               §§goto(addr200);
            }
            break;
         }
         _loc1_ = §§pop();
         if(!_loc6_)
         {
            §§goto(addr258);
         }
         addr263:
      }
      
      public function §9!$§(param1:Number, param2:Number) : §6A§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(_loc3_ < this.§'@§.length)
         {
            if(this.§'@§[_loc3_])
            {
               if(_loc5_)
               {
                  if(this.§'@§[_loc3_].isInCoordinates(param1,param2))
                  {
                     if(_loc5_ || param2)
                     {
                        return this.§'@§[_loc3_];
                     }
                     continue;
                  }
               }
               break;
            }
            _loc3_++;
            if(_loc4_ && this)
            {
               break;
            }
         }
         return null;
      }
      
      public function §-Y§(param1:Number, param2:Number) : §3X§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(this.§^C§);
               §§push(this.§,3§);
               if(!_loc3_)
               {
                  §§push(4);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc4_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc3_)
                        {
                           §§push(§§pop() >= §§pop());
                           §§push(§§pop() >= §§pop());
                           if(_loc4_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!(_loc3_ && this))
                                 {
                                    addr60:
                                    §§push(param1);
                                    if(_loc4_ || this)
                                    {
                                       addr68:
                                       §§push(this.§^C§);
                                       §§push(this.§,3§);
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr89:
                                          §§push(4);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc4_ || param1)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc4_ || this)
                                                {
                                                   addr109:
                                                   §§push(§§pop() <= §§pop());
                                                   §§push(§§pop() <= §§pop());
                                                   if(_loc4_ || param2)
                                                   {
                                                      addr117:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§pop();
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§push(param2);
                                                               if(_loc4_)
                                                               {
                                                                  addr148:
                                                                  §§push(this.§0§);
                                                                  §§push(this.§,3§);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr154);
                                                                  }
                                                                  addr154:
                                                                  §§push(§§pop() >= §§pop() - §§pop() / 4);
                                                                  if(§§pop() >= §§pop() - §§pop() / 4)
                                                                  {
                                                                     §§goto(addr158);
                                                                  }
                                                                  §§goto(addr171);
                                                               }
                                                               addr171:
                                                               if(this.§0§ <= this.§^5§)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr176);
                                                                  }
                                                               }
                                                               §§goto(addr176);
                                                            }
                                                            addr176:
                                                            return null;
                                                         }
                                                         addr158:
                                                         §§pop();
                                                         if(!(_loc3_ && param2))
                                                         {
                                                            §§goto(addr171);
                                                         }
                                                         return this;
                                                      }
                                                   }
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr148);
                                             }
                                          }
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr148);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr117);
                        }
                     }
                  }
                  §§goto(addr154);
               }
               §§goto(addr89);
            }
            §§goto(addr68);
         }
         §§goto(addr60);
      }
      
      public function §,K§(param1:§^!9§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§6A§ = null;
         var _loc4_:§5L§ = null;
         if(_loc6_)
         {
            param1.§&w§ = this.§^C§;
            if(_loc6_ || param1)
            {
               addr36:
               param1.§11§ = this.§0§;
            }
            var _loc2_:* = Number(0);
            while(_loc2_ < this.§'@§.length)
            {
               _loc3_ = this.§'@§[_loc2_];
               (_loc4_ = new §5L§()).x = _loc3_.x;
               if(_loc6_ || _loc3_)
               {
                  _loc4_.y = _loc3_.y;
                  if(!(_loc5_ && param1))
                  {
                     _loc4_.id = _loc3_.name;
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
               }
               param1.§`$§(_loc4_);
               if(!_loc6_)
               {
                  continue;
               }
               §§push(_loc2_);
               if(_loc6_)
               {
                  §§push(§§pop() + 1);
                  if(_loc6_ || this)
                  {
                     addr119:
                     §§push(Number(§§pop()));
                  }
                  _loc2_ = §§pop();
                  continue;
               }
               §§goto(addr119);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §99§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§'@§.length > 0)
         {
            this.§'>§(this.§'@§[0]);
            if(_loc1_)
            {
               break;
            }
         }
      }
      
      public function §!-§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc5_ && this))
            {
               while(true)
               {
                  if(§§pop() >= this.§'@§.length)
                  {
                     if(!_loc5_)
                     {
                        §§push(this.§^C§);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(§§pop() > param1.x);
                           §§push(§§pop() > param1.x);
                           if(_loc6_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 break;
                              }
                              addr115:
                              §§push(§§pop());
                              if(_loc6_ || param2)
                              {
                                 addr123:
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       §§push(this.§0§);
                                       if(_loc6_ || param2)
                                       {
                                          break loop0;
                                       }
                                       addr163:
                                       if(§§pop() < param2.y)
                                       {
                                          if(_loc5_ && param2)
                                          {
                                          }
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§push(§§pop());
                              }
                              if(§§pop())
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       §§goto(addr163);
                                       §§push(this.§0§);
                                    }
                                    addr174:
                                    _loc3_.push(this);
                                    §§goto(addr177);
                                 }
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr163);
                     }
                     addr177:
                     return _loc3_;
                  }
                  if(this.§'@§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     _loc3_.push(this.§'@§[_loc4_]);
                     if(!(_loc6_ || param2))
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr115);
               §§push(this.§^C§ < param2.x);
            }
            break;
            _loc4_ = §§pop();
         }
         §§goto(addr123);
         §§push(§§pop() > param1.y);
      }
      
      public function §[c§() : Array
      {
         return [this.§27§,this.§;§];
      }
      
      public function §6! §(param1:String, param2:Number, param3:Number) : §6A§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§6A§ = this.§12§(param1,param2,param3);
         if(!(_loc5_ && this))
         {
            this.§@-§();
         }
         return _loc4_;
      }
      
      public function §4&§() : Number
      {
         return this.§'@§.length;
      }
   }
}
