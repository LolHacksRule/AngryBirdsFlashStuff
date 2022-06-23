package §%x§
{
   import §#k§.§?!3§;
   import §-!0§.§4b§;
   import §-!0§.§9X§;
   import §0!<§.§#y§;
   import §>!C§.§9R§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?!?§.§3!E§;
   import §?^§.§8!?§;
   import §?^§.§?C§;
   import §?^§.Sprite;
   import §`K§.§0r§;
   import §`K§.§3n§;
   import each.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3=§
   {
      
      public static const §=0§:int = 0;
      
      public static const §]9§:int = 1;
      
      public static const §6t§:int = 2;
      
      public static const § in§:int = 3;
      
      public static const §,z§:int = 5;
      
      public static const §=3§:int = 3151368;
      
      protected static const §95§:int = 8;
      
      protected static const §5!4§:int = 0;
      
      public static const §=!,§:Number = 46.25;
      
      public static const §7[§:Number = 52.5;
      
      protected static const §&!1§:Number = -0.7;
      
      protected static const §?B§:Number = 0;
      
      protected static var §-o§:Texture;
      
      public static const §6@§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §3=§))
         {
            §95§ = 8;
            §5!4§ = 0;
            if(!_loc1_)
            {
               §=!,§ = 46.25;
               §7[§ = 52.5;
               if(_loc2_)
               {
                  §§goto(addr78);
               }
               §§goto(addr98);
            }
         }
         addr78:
         if(_loc2_ || _loc2_)
         {
            §?B§ = 0;
            if(!(_loc1_ && _loc1_))
            {
               addr98:
               §6@§ = 0.4;
            }
         }
      }
      
      public var §7C§:§#;§;
      
      public var §5!>§:Number;
      
      public var §#!$§:Number;
      
      public var §!!5§:Number;
      
      protected var §]!7§:Number;
      
      protected var §`-§:Number;
      
      protected var §?!+§:Number;
      
      protected var §&D§:Number;
      
      public var §@N§:Number;
      
      public var §>!5§:Boolean = false;
      
      protected var §#!3§:Number;
      
      public var §"_§:Vector.<§0Y§>;
      
      public var §-!3§:int;
      
      public var §?]§:int;
      
      public var §,L§:Number;
      
      public var §72§:Sprite;
      
      public var §=`§:int = 0;
      
      public var §#p§:Number = 0;
      
      public var §2a§:Array;
      
      public var §<k§:Array;
      
      public var mSlingShotState:int;
      
      public var §'1§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §5!;§:Boolean = false;
      
      public var §7h§:Number;
      
      protected var §0W§:Sprite;
      
      protected var §<N§:§?C§;
      
      protected var §"!9§:§?C§;
      
      protected var §%K§:Sprite;
      
      protected var §>z§:Sprite;
      
      protected var §&H§:Sprite;
      
      protected var §6+§:§8!?§;
      
      protected var §^!%§:§8!?§;
      
      private var §null§:Number = 0;
      
      private var §`J§:int = 0;
      
      protected var §5G§:Number = -0.7;
      
      protected var §1u§:Number = 0;
      
      public function §3=§(param1:§#;§, param2:§9R§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§?!3§ = null;
         this.§"_§ = new Vector.<§0Y§>();
         if(_loc6_ || param2)
         {
            super();
            if(!_loc7_)
            {
               this.§7C§ = param1;
               this.§0W§ = param3;
               if(param2)
               {
                  this.setPosition(param2.§2^§,param2.§7!H§);
                  if(_loc6_ || param2)
                  {
                     addr59:
                     this.§0L§();
                     addr61:
                     _loc4_ = 0;
                     while(_loc4_ < param2.§5C§)
                     {
                        _loc5_ = param2.§?j§(_loc4_);
                        if(_loc6_ || param2)
                        {
                           this.§#!%§(_loc5_.id,_loc5_.x,_loc5_.y);
                           if(_loc6_ || param2)
                           {
                              _loc4_++;
                           }
                        }
                     }
                     this.§`J§ = this.§,!%§();
                     if(!(_loc7_ && param2))
                     {
                        this.§-!3§ = 0;
                        if(this.§"_§.length <= 0)
                        {
                           §§push(§#y§);
                           §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                           if(!(_loc7_ && param1))
                           {
                              §§push(this.§5!>§);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_ || param3)
                                 {
                                    §§push(§§pop() + " ");
                                    if(!_loc6_)
                                    {
                                    }
                                    addr154:
                                    §§pop().log(§§pop());
                                    if(!_loc7_)
                                    {
                                       this.§'o§(§ in§);
                                       if(_loc6_ || param3)
                                       {
                                          addr195:
                                          this.§7h§ = 0;
                                          addr198:
                                          this.§=!!§();
                                          if(!(_loc7_ && param1))
                                          {
                                             addr207:
                                             this.update(0,true);
                                             this.§!a§();
                                          }
                                          this.§?!$§(0);
                                          addr188:
                                       }
                                       return;
                                    }
                                    §§goto(addr198);
                                 }
                                 §§push(this.§#!$§);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr154);
                        }
                        else
                        {
                           this.§'o§(§=0§);
                           if(!(_loc7_ && param2))
                           {
                              §§goto(addr188);
                           }
                        }
                        §§goto(addr207);
                     }
                  }
                  §§goto(addr61);
               }
               else
               {
                  §#y§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                  this.§'o§(§ in§);
               }
               §§goto(addr195);
            }
         }
         §§goto(addr59);
      }
      
      public function get sprite() : Sprite
      {
         return this.§0W§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§null§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§-!3§ < this.§"_§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§"_§.length > 0)
         {
            this.§,!1§(0);
         }
         if(_loc1_ || this)
         {
            this.§"_§ = null;
            §§push(this.§0W§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr70:
                     this.§0W§.dispose();
                     this.§0W§ = null;
                     if(!_loc2_)
                     {
                        addr76:
                        this.§72§ = null;
                        §§goto(addr79);
                     }
                     §§goto(addr84);
                  }
                  addr79:
                  this.§2a§ = null;
                  if(!_loc2_)
                  {
                     addr84:
                     this.§<k§ = null;
                  }
                  return;
               }
               §§goto(addr76);
            }
            §§goto(addr70);
         }
         §§goto(addr76);
      }
      
      public function §&!<§(param1:String, param2:Number, param3:Number, param4:int = -1) : §0Y§
      {
         var _loc5_:§0Y§;
         (_loc5_ = this.§#!%§(param1,param2,param3,param4)).§^!,§();
         return _loc5_;
      }
      
      protected function §#!%§(param1:String, param2:Number, param3:Number, param4:int = -1) : §0Y§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§0Y§ = new §0Y§(this,new Sprite(),param1,param2,param3);
         if(!(_loc6_ && param3))
         {
            if(param4 < 0)
            {
               if(_loc7_)
               {
                  addr59:
                  this.§"_§.push(_loc5_);
                  if(_loc7_)
                  {
                     addr79:
                     this.§72§.addChild(_loc5_.sprite);
                  }
               }
            }
            else
            {
               this.§"_§.splice(param4,0,_loc5_);
               if(_loc7_ || param1)
               {
                  §§goto(addr79);
               }
            }
            return _loc5_;
         }
         §§goto(addr59);
      }
      
      public function §'o§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mSlingShotState = param1;
            §§push(this.mSlingShotState);
            if(!(_loc2_ && this))
            {
               §§push(§=0§);
               if(!_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     this.§'!<§();
                     this.§,L§ = 1000;
                  }
                  else
                  {
                     §§push(this.mSlingShotState);
                     if(_loc3_ || this)
                     {
                        addr50:
                        §§push(§]9§);
                        if(_loc3_)
                        {
                           if(§§pop() == §§pop())
                           {
                              this.§'!<§();
                              if(_loc3_ || this)
                              {
                                 this.§,L§ = 0;
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    addr139:
                                    this.§'!<§();
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr148:
                                       this.§,L§ = 2000;
                                    }
                                    else
                                    {
                                       addr171:
                                       this.§5!;§ = false;
                                       if(!_loc2_)
                                       {
                                          addr176:
                                          this.§'!<§();
                                          if(_loc3_ || _loc3_)
                                          {
                                             this.§"_§[this.§-!3§].setPosition(this.§?!+§ - this.§"_§[this.§-!3§].radius * Math.cos(this.§#p§ / (180 / Math.PI)),this.§&D§ + this.§"_§[this.§-!3§].radius * Math.sin(this.§#p§ / (180 / Math.PI)));
                                             addr185:
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr249);
                              }
                              else
                              {
                                 addr166:
                                 this.mDragging = false;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr171);
                                 }
                              }
                              §§goto(addr185);
                           }
                           else
                           {
                              §§push(this.mSlingShotState);
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr83:
                                 §§push(§6t§);
                                 if(!_loc2_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc3_ || this)
                                       {
                                          this.§,L§ = 10000;
                                          if(_loc3_ || _loc3_)
                                          {
                                             this.§5!;§ = false;
                                             if(_loc3_)
                                             {
                                                this.§'!<§();
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr249);
                                                }
                                                else
                                                {
                                                   §§goto(addr148);
                                                }
                                             }
                                             §§goto(addr249);
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                    else
                                    {
                                       §§push(this.mSlingShotState);
                                       if(_loc3_)
                                       {
                                          §§push(§ in§);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr136:
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr249);
                                             }
                                             else
                                             {
                                                §§push(this.mSlingShotState);
                                             }
                                             §§goto(addr249);
                                          }
                                          addr155:
                                          if(§§pop() == §§pop())
                                          {
                                             if(this.mDragging)
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr176);
                                             }
                                             else
                                             {
                                                this.§'!<§();
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§goto(addr249);
                                                }
                                             }
                                          }
                                          §§goto(addr249);
                                       }
                                    }
                                    §§goto(addr249);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr155);
                              §§push(§,z§);
                           }
                           §§goto(addr249);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr83);
                  }
                  addr249:
                  this.mDragging = false;
                  return;
               }
               §§goto(addr155);
            }
            §§goto(addr50);
         }
         §§goto(addr171);
      }
      
      public function get §!-§() : §#;§
      {
         return this.§7C§;
      }
      
      public function §2!5§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mSlingShotState == § in§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr44:
                     §§push(this.§,L§ <= 0);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr44);
      }
      
      private function §0L§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4b§ = this.§9!!§();
         var _loc2_:§9X§ = _loc1_.getFrame(0);
         var _loc3_:§9X§ = _loc1_.getFrame(1);
         if(!_loc5_)
         {
            this.§6+§ = new §8!?§(_loc2_.texture);
            §§push(this.§6+§);
            if(_loc4_)
            {
               §§push(_loc2_.scale);
               if(!(_loc5_ && _loc2_))
               {
                  §§pop().scaleX = §§pop();
                  addr54:
                  §§push(this.§6+§);
                  §§push(_loc2_.scale);
               }
               §§pop().scaleY = §§pop();
               this.§^!%§ = new §8!?§(_loc3_.texture);
               if(!_loc5_)
               {
                  addr65:
                  §§push(this.§^!%§);
                  if(_loc4_)
                  {
                     §§push(_loc3_.scale);
                     if(!_loc5_)
                     {
                        §§pop().scaleX = §§pop();
                        addr76:
                        §§push(this.§^!%§);
                        §§push(_loc3_.scale);
                     }
                     §§pop().scaleY = §§pop();
                     this.§5! §();
                     if(!(_loc5_ && _loc2_))
                     {
                        this.§,H§();
                        this.§72§ = new Sprite();
                        §§push(this.§0W§);
                        if(_loc4_)
                        {
                           §§pop().addChild(this.§6+§);
                           if(_loc4_ || this)
                           {
                              §§push(this.§0W§);
                              if(!_loc5_)
                              {
                                 §§pop().addChild(this.§%K§);
                                 §§push(this.§0W§);
                                 if(!_loc5_)
                                 {
                                    §§pop().addChild(this.§72§);
                                    addr132:
                                    §§push(this.§0W§);
                                    if(_loc4_)
                                    {
                                       §§pop().addChild(this.§&H§);
                                       if(!(_loc5_ && _loc1_))
                                       {
                                          §§push(this.§0W§);
                                          if(_loc5_ && _loc2_)
                                          {
                                          }
                                          §§goto(addr172);
                                       }
                                       addr170:
                                       addr172:
                                       §§pop().addChild(this.§^!%§);
                                       §§push(this);
                                       §§push(this.§#!$§);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() + 8.5);
                                       }
                                       §§pop().§!!5§ = §§pop();
                                       return;
                                       §§push(this.§0W§);
                                    }
                                 }
                              }
                              §§pop().addChild(this.§>z§);
                              if(!_loc5_)
                              {
                                 §§goto(addr170);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr76);
               }
               §§goto(addr132);
            }
            §§goto(addr54);
         }
         §§goto(addr65);
      }
      
      protected function §9!!§() : §4b§
      {
         return this.§7C§.§+!!§.§,V§("SLINGSHOT");
      }
      
      public function §5! §() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc2_ || _loc3_)
         {
            this.§]!7§ = this.§5!>§;
            if(_loc2_)
            {
               addr57:
               this.§`-§ = this.§#!$§;
               if(_loc2_ || _loc2_)
               {
                  this.§#!3§ = §#!;§.§9d§;
               }
            }
            _loc1_ = null;
            return;
         }
         §§goto(addr57);
      }
      
      protected function §,H§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(_loc4_)
         {
            if(!§-o§)
            {
               if(_loc4_)
               {
                  addr26:
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(!_loc3_)
                  {
                     §-o§ = this.§7C§.textureManager.§ b§(_loc2_);
                     addr43:
                     this.§&H§ = new Sprite();
                  }
                  §§goto(addr43);
               }
               var _loc1_:§8!?§ = new §8!?§(§-o§);
               if(_loc4_)
               {
                  _loc1_.rotation = Math.PI;
                  if(!(_loc3_ && this))
                  {
                     _loc1_.x = _loc1_.width / 2;
                     _loc1_.y = _loc1_.height / 2;
                     if(!_loc3_)
                     {
                        this.§&H§.addChild(_loc1_);
                        this.§%K§ = new Sprite();
                        addr97:
                        this.§<N§ = new §?C§(2,2,§=3§);
                        if(!_loc3_)
                        {
                           this.§%K§.addChild(this.§<N§);
                           §§goto(addr121);
                        }
                     }
                     §§goto(addr141);
                  }
                  addr121:
                  this.§>z§ = new Sprite();
                  if(!(_loc3_ && _loc1_))
                  {
                     this.§"!9§ = new §?C§(2,2,§=3§);
                     if(_loc4_)
                     {
                        addr141:
                        this.§>z§.addChild(this.§"!9§);
                     }
                  }
                  return;
               }
               §§goto(addr97);
            }
            §§goto(addr43);
         }
         §§goto(addr26);
      }
      
      public function §?!$§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§&D§);
         if(_loc6_)
         {
            §§push(§§pop() / §#;§.§`!2§);
            if(_loc6_)
            {
               addr25:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§?!+§);
            if(!_loc7_)
            {
               §§push(§§pop() / §#;§.§`!2§);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(3.5);
            if(!_loc7_)
            {
               §§push(8);
               §§push(this.§#!3§);
               if(_loc6_)
               {
                  §§push(this.§@N§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc7_)
                     {
                        addr55:
                        §§push(§§pop() / this.§#!3§);
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc6_ || _loc2_)
                     {
                        addr66:
                        var _loc4_:Number = §§pop();
                        §§push(this.§&H§);
                        if(_loc6_)
                        {
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              §§pop().x = §§pop();
                              §§push(this.§&H§);
                              if(!_loc7_)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc7_ && this))
                                 {
                                    §§pop().y = §§pop();
                                    if(_loc6_)
                                    {
                                       addr92:
                                       §§push(this.§&H§);
                                       §§push(this.§#p§);
                                       if(_loc6_ || _loc2_)
                                       {
                                          addr101:
                                          §§push(-§§pop());
                                          if(_loc7_)
                                          {
                                          }
                                          addr109:
                                          §§pop().rotation = §§pop();
                                          §§push(this.§6+§);
                                          if(_loc6_ || this)
                                          {
                                             §§push(this.§5!>§);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(§#;§.§`!2§);
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(3);
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr161:
                                                            §§pop().x = §§pop();
                                                            §§push(this.§6+§);
                                                            §§push(this.§#!$§);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               addr173:
                                                               §§push(§§pop() / §#;§.§`!2§);
                                                               if(_loc6_)
                                                               {
                                                                  addr179:
                                                                  §§push(§§pop() - 30);
                                                               }
                                                            }
                                                            §§pop().y = §§pop();
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               §§push(this.§^!%§);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§push(this.§5!>§);
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§push(§#;§.§`!2§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(30);
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr229:
                                                                                    §§push(this.§^!%§);
                                                                                    §§push(this.§#!$§);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr235:
                                                                                       addr233:
                                                                                       §§push(§§pop() / §#;§.§`!2§);
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                       }
                                                                                       addr245:
                                                                                       §§pop().y = §§pop();
                                                                                       §§push(this.§>z§);
                                                                                       if(!(_loc7_ && this))
                                                                                       {
                                                                                          §§push(this.§5!>§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(§#;§.§`!2§);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   §§push(17);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc7_ && _loc3_))
                                                                                                      {
                                                                                                         addr292:
                                                                                                         §§pop().x = §§pop();
                                                                                                         §§push(this.§>z§);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(this.§#!$§);
                                                                                                            if(_loc6_ || _loc2_)
                                                                                                            {
                                                                                                               addr308:
                                                                                                               §§push(§§pop() / §#;§.§`!2§);
                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                               {
                                                                                                                  addr316:
                                                                                                                  §§push(§§pop() + 5);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr316);
                                                                                                         }
                                                                                                         addr321:
                                                                                                         §§pop().rotation = Math.atan2(_loc2_ - this.§>z§.y,_loc3_ - this.§>z§.x);
                                                                                                         §§push(this.§%K§);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(this.§5!>§);
                                                                                                            if(!(_loc7_ && this))
                                                                                                            {
                                                                                                               §§push(§#;§.§`!2§);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + 22);
                                                                                                                     if(!(_loc7_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        §§push(this.§%K§);
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           §§push(this.§#!$§);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr380:
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           addr383:
                                                                                                                           this.§%K§.rotation = Math.atan2(_loc2_ - this.§%K§.y,_loc3_ - this.§%K§.x);
                                                                                                                           §§push(this.§"!9§);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§>z§.x,2) + Math.pow(_loc2_ - this.§>z§.y,2));
                                                                                                                              §§push(this.§<N§);
                                                                                                                              if(!(_loc7_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§%K§.x,2) + Math.pow(_loc2_ - this.§%K§.y,2));
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    addr451:
                                                                                                                                    §§push(this.§"!9§);
                                                                                                                                    if(_loc6_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§<N§);
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * 2);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().height = §§pop());
                                                                                                                                       if(!(_loc7_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§pop().height = §§pop();
                                                                                                                                          §§goto(addr529);
                                                                                                                                       }
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          addr512:
                                                                                                                                          §§push(this.§<N§);
                                                                                                                                          §§push(-this.§<N§.height);
                                                                                                                                          if(_loc6_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / 2);
                                                                                                                                          }
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                       }
                                                                                                                                       this.§'1§ = false;
                                                                                                                                       §§goto(addr529);
                                                                                                                                    }
                                                                                                                                    §§goto(addr484);
                                                                                                                                 }
                                                                                                                                 §§goto(addr529);
                                                                                                                              }
                                                                                                                              §§goto(addr512);
                                                                                                                           }
                                                                                                                           §§goto(addr484);
                                                                                                                        }
                                                                                                                        §§goto(addr383);
                                                                                                                     }
                                                                                                                     §§push(§#;§.§`!2§);
                                                                                                                  }
                                                                                                                  §§goto(addr380);
                                                                                                               }
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr380);
                                                                                                      }
                                                                                                      §§pop().y = §§pop();
                                                                                                      §§goto(addr321);
                                                                                                      §§push(this.§>z§);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr316);
                                                                                             }
                                                                                             §§goto(addr308);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                    addr244:
                                                                                    §§goto(addr245);
                                                                                    §§push(§§pop() - 30);
                                                                                 }
                                                                                 addr529:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr484:
                                                                                    §§push(this.§"!9§);
                                                                                    §§push(-this.§"!9§.height);
                                                                                    if(_loc6_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() / 2);
                                                                                    }
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr245);
                                                                           }
                                                                           §§goto(addr244);
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  §§goto(addr233);
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            §§goto(addr451);
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr179);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr109);
                                       §§push(§§pop() / (180 / Math.PI));
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr66);
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr66);
         }
         §§goto(addr25);
      }
      
      public function §6L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         do
         {
            if(this.§"_§.length <= 0)
            {
               if(_loc2_)
               {
                  this.§"!1§();
                  if(!_loc1_)
                  {
                     break;
                  }
                  addr70:
                  this.§'o§(§6t§);
               }
               §§goto(addr73);
            }
            this.§,!1§(0,true);
         }
         while(!(_loc1_ && this));
         
         this.§#!%§("BIRD_SARDINE",this.§5!>§,this.§#!$§);
         if(_loc2_)
         {
            §§goto(addr70);
         }
         addr73:
      }
      
      protected function §"!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §3!E§.§<!,§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§'o§(§,z§);
         }
      }
      
      public function §'!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§]!7§);
            §§push(this.§`-§);
            if(_loc2_ || _loc2_)
            {
               §§push(this.§#!3§);
               if(_loc2_ || _loc2_)
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
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!_loc9_)
         {
            §§push(this.§?!+§ == param1);
            if(!(_loc9_ && param3))
            {
               §§push(§§pop());
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(this.§&D§ == param2);
                  }
                  if(§§pop())
                  {
                     §§push(true);
                     if(!(_loc9_ && this))
                     {
                        return §§pop();
                     }
                     addr562:
                     if(§§pop())
                     {
                        addr564:
                        §§pop();
                        if(!(_loc9_ && this))
                        {
                           addr572:
                           §§push(this.§#p§);
                           if(!_loc9_)
                           {
                              §§push(-90);
                              if(!(_loc9_ && this))
                              {
                                 addr584:
                                 §§push(_loc4_);
                                 if(!_loc9_)
                                 {
                                    addr592:
                                    §§push(§§pop() > §§pop() - §§pop() - _loc6_ + _loc5_);
                                    if(_loc10_ || param2)
                                    {
                                       addr600:
                                       §§push(§§pop());
                                       if(_loc10_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                §§pop();
                                                §§push(this.§#p§);
                                                if(_loc10_ || this)
                                                {
                                                   addr618:
                                                   §§push(-90 + _loc4_);
                                                   §§push(_loc6_);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc9_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc10_)
                                                            {
                                                               §§push(§§pop() < §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  addr639:
                                                                  if(§§pop())
                                                                  {
                                                                     addr643:
                                                                     §§push(_loc7_);
                                                                     §§push(this.§#!3§ - _loc7_);
                                                                     §§push(Math.abs(this.§#p§ - -90 - _loc5_) - _loc4_);
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           addr670:
                                                                           §§push(_loc6_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr673:
                                                                              §§push(§§pop() + §§pop() / §§pop());
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 addr683:
                                                                                 _loc8_ = §§pop();
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr689:
                                                                                    §§push(this.§]!7§);
                                                                                    §§push(_loc8_);
                                                                                    §§push(param1);
                                                                                    §§push(this.§]!7§);
                                                                                    if(!(_loc9_ && param3))
                                                                                    {
                                                                                       addr700:
                                                                                       §§push(§§pop() * (§§pop() - §§pop()));
                                                                                       §§push(this.§@N§);
                                                                                       if(!(_loc9_ && param3))
                                                                                       {
                                                                                          addr710:
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(!(_loc9_ && this))
                                                                                          {
                                                                                             §§push(Number(§§pop() + §§pop()));
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                param1 = §§pop();
                                                                                                addr723:
                                                                                                §§push(this.§`-§);
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr738:
                                                                                                      §§push(§§pop() * (param2 - this.§`-§));
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         addr747:
                                                                                                         §§push(§§pop() / this.§@N§);
                                                                                                         if(_loc10_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc9_ && param2))
                                                                                                            {
                                                                                                               addr765:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  param2 = §§pop();
                                                                                                                  addr769:
                                                                                                                  this.§@N§ = _loc8_;
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     addr774:
                                                                                                                     this.§?!+§ = param1;
                                                                                                                     if(_loc10_ || param3)
                                                                                                                     {
                                                                                                                        addr784:
                                                                                                                        this.§&D§ = param2;
                                                                                                                        if(_loc10_ || this)
                                                                                                                        {
                                                                                                                           addr794:
                                                                                                                           §§push(this.§@N§);
                                                                                                                           if(_loc10_ || this)
                                                                                                                           {
                                                                                                                              addr803:
                                                                                                                              if(§§pop() <= this.§#!3§ * 0.45)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    addr810:
                                                                                                                                    this.§>!5§ = true;
                                                                                                                                    addr868:
                                                                                                                                    this.§'1§ = true;
                                                                                                                                    §§push(true);
                                                                                                                                    addr813:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr831:
                                                                                                                                    §§push(this.§@N§ >= this.§#!3§ * 0.8);
                                                                                                                                    if(_loc10_ || param3)
                                                                                                                                    {
                                                                                                                                       addr855:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && param3))
                                                                                                                                          {
                                                                                                                                             addr863:
                                                                                                                                             this.§7!;§();
                                                                                                                                             addr865:
                                                                                                                                             this.§>!5§ = false;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr868);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 return §§pop();
                                                                                                                              }
                                                                                                                              §§push(Boolean(this.§>!5§));
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 addr820:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && param2))
                                                                                                                                    {
                                                                                                                                       addr828:
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr831);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr855);
                                                                                                                              }
                                                                                                                              §§goto(addr828);
                                                                                                                              §§goto(addr865);
                                                                                                                           }
                                                                                                                           §§goto(addr831);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr831);
                                                                                                                  }
                                                                                                                  §§goto(addr863);
                                                                                                               }
                                                                                                               §§goto(addr803);
                                                                                                            }
                                                                                                            §§goto(addr831);
                                                                                                         }
                                                                                                         §§goto(addr803);
                                                                                                      }
                                                                                                      §§goto(addr831);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr803);
                                                                                             }
                                                                                             §§goto(addr765);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr803);
                                                                                    }
                                                                                    §§goto(addr738);
                                                                                 }
                                                                                 §§goto(addr723);
                                                                              }
                                                                              §§goto(addr683);
                                                                           }
                                                                           §§goto(addr738);
                                                                        }
                                                                        §§goto(addr689);
                                                                     }
                                                                     §§goto(addr710);
                                                                  }
                                                                  §§goto(addr794);
                                                               }
                                                               §§goto(addr855);
                                                            }
                                                            §§goto(addr747);
                                                         }
                                                         §§goto(addr710);
                                                      }
                                                      §§goto(addr643);
                                                   }
                                                   §§goto(addr747);
                                                }
                                                §§goto(addr683);
                                             }
                                             §§goto(addr828);
                                          }
                                          §§goto(addr639);
                                       }
                                       §§goto(addr820);
                                    }
                                    §§goto(addr828);
                                 }
                              }
                              §§goto(addr618);
                           }
                           §§goto(addr643);
                        }
                        §§goto(addr863);
                     }
                     §§goto(addr600);
                  }
                  else
                  {
                     this.§@N§ = Math.sqrt((param2 - this.§`-§) * (param2 - this.§`-§) + (param1 - this.§]!7§) * (param1 - this.§]!7§));
                     §§push(this.§@N§);
                     if(!_loc9_)
                     {
                        §§push(this.§#!3§);
                        if(!(_loc9_ && this))
                        {
                           if(§§pop() > §§pop())
                           {
                              if(param3)
                              {
                                 this.§@N§ = Math.sqrt((this.§&D§ - this.§`-§) * (this.§&D§ - this.§`-§) + (this.§?!+§ - this.§]!7§) * (this.§?!+§ - this.§]!7§));
                                 if(_loc10_)
                                 {
                                    return false;
                                 }
                                 addr543:
                                 §§goto(addr794);
                              }
                              else
                              {
                                 §§push(this.§]!7§);
                                 if(_loc10_)
                                 {
                                    §§push(this.§#!3§);
                                    if(_loc10_)
                                    {
                                       §§push(param1);
                                       §§push(this.§]!7§);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() * (§§pop() - §§pop()));
                                          §§push(this.§@N§);
                                          if(!(_loc9_ && this))
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!(_loc9_ && this))
                                             {
                                                param1 = Number(§§pop() + §§pop());
                                                if(!(_loc9_ && param1))
                                                {
                                                   §§push(this.§`-§);
                                                   §§push(this.§#!3§);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(param2);
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         §§push(this.§`-§);
                                                         if(_loc10_)
                                                         {
                                                            addr194:
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc10_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(this.§@N§);
                                                                  if(_loc10_ || param2)
                                                                  {
                                                                     param2 = Number(§§pop() + §§pop() / §§pop());
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        this.§@N§ = this.§#!3§;
                                                                        addr224:
                                                                        this.§?!+§ = param1;
                                                                        this.§&D§ = param2;
                                                                        if(_loc10_)
                                                                        {
                                                                           this.§#p§ = Math.atan2(-(this.§&D§ - this.§`-§),this.§?!+§ - this.§]!7§);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§#p§);
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 §§push(§§pop() * (180 / Math.PI));
                                                                              }
                                                                              §§pop().§#p§ = §§pop();
                                                                              §§push(this.mDragging);
                                                                              §§push(false);
                                                                              if(!(_loc9_ && param3))
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(param1);
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       §§push(§§pop() + this.§5G§);
                                                                                    }
                                                                                    §§pop().§?!+§ = §§pop();
                                                                                    §§push(this);
                                                                                    §§push(param2);
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       §§push(§§pop() + this.§1u§);
                                                                                    }
                                                                                    §§pop().§&D§ = §§pop();
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       this.§#p§ = -160;
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr309:
                                                                                          §§push(12);
                                                                                          if(_loc10_ || param2)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                §§push(5);
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         addr336:
                                                                                                         _loc6_ = 4;
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr340:
                                                                                                            §§push(this.§#!3§);
                                                                                                            §§push(2);
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               _loc7_ = §§pop() / §§pop();
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§push(this.§@N§);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr359:
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              §§push(this.§#p§);
                                                                                                                              §§push(-90);
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          addr382:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                          {
                                                                                                                                             addr391:
                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   if(_loc10_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§#p§);
                                                                                                                                                      if(_loc10_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(-90);
                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            if(!(_loc9_ && param3))
                                                                                                                                                            {
                                                                                                                                                               addr442:
                                                                                                                                                               if(§§pop() < §§pop() + §§pop() + _loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§]!7§);
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  if(_loc10_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1);
                                                                                                                                                                     §§push(this.§]!7§);
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        addr458:
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§@N§);
                                                                                                                                                                              if(!(_loc9_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 addr473:
                                                                                                                                                                                 §§push(§§pop() + §§pop() / §§pop());
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       param1 = §§pop();
                                                                                                                                                                                       addr486:
                                                                                                                                                                                       §§push(this.§`-§);
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                          §§push(param2);
                                                                                                                                                                                          §§push(this.§`-§);
                                                                                                                                                                                          if(_loc10_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr501:
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr504:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                §§push(this.§@N§);
                                                                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr514:
                                                                                                                                                                                                   §§push(§§pop() + §§pop() / §§pop());
                                                                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr524:
                                                                                                                                                                                                      param2 = Number(§§pop());
                                                                                                                                                                                                      this.§@N§ = _loc7_;
                                                                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§?!+§ = param1;
                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§&D§ = param2;
                                                                                                                                                                                                            §§goto(addr543);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr794);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr810);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr831);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr700);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr738);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr700);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr643);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr710);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr831);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr803);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr738);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr670);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr504);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr501);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr592);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr546:
                                                                                                                                                                  §§push(this.§@N§);
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  if(_loc10_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     if(_loc10_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr562);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr820);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr592);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr592);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr584);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr803);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr769);
                                                                                                                                                }
                                                                                                                                                §§goto(addr564);
                                                                                                                                             }
                                                                                                                                             §§goto(addr442);
                                                                                                                                          }
                                                                                                                                          §§goto(addr747);
                                                                                                                                       }
                                                                                                                                       §§goto(addr673);
                                                                                                                                    }
                                                                                                                                    §§goto(addr643);
                                                                                                                                 }
                                                                                                                                 §§goto(addr618);
                                                                                                                              }
                                                                                                                              §§goto(addr584);
                                                                                                                           }
                                                                                                                           §§goto(addr813);
                                                                                                                        }
                                                                                                                        §§goto(addr391);
                                                                                                                     }
                                                                                                                     §§goto(addr738);
                                                                                                                  }
                                                                                                                  §§goto(addr546);
                                                                                                               }
                                                                                                               §§goto(addr486);
                                                                                                            }
                                                                                                            §§goto(addr584);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr486);
                                                                                                   }
                                                                                                   §§goto(addr524);
                                                                                                }
                                                                                                §§goto(addr336);
                                                                                             }
                                                                                             §§goto(addr524);
                                                                                          }
                                                                                          §§goto(addr336);
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr309);
                                                                              }
                                                                              §§goto(addr391);
                                                                           }
                                                                           §§goto(addr774);
                                                                        }
                                                                        §§goto(addr810);
                                                                     }
                                                                     §§goto(addr863);
                                                                  }
                                                                  §§goto(addr710);
                                                               }
                                                               §§goto(addr592);
                                                            }
                                                            §§goto(addr382);
                                                         }
                                                         §§goto(addr458);
                                                      }
                                                      §§goto(addr514);
                                                   }
                                                   §§goto(addr670);
                                                }
                                                §§goto(addr572);
                                             }
                                             §§goto(addr670);
                                          }
                                          §§goto(addr473);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr643);
                                 }
                              }
                              §§goto(addr831);
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr592);
                     }
                     §§goto(addr359);
                  }
                  §§goto(addr738);
               }
               §§goto(addr820);
            }
            §§goto(addr855);
         }
         §§goto(addr784);
      }
      
      protected function §7!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3!E§.§<!,§("SlingshotStreched");
         }
      }
      
      public function §8%§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            §§push(this.§5!>§);
            §§push(this.§#!$§);
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
         if(_loc6_)
         {
            §§push(§§pop() - this.§5!>§);
            if(!_loc7_)
            {
               addr24:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               this.§5!>§ = param1;
            }
            §§push(param2);
            if(_loc6_ || param2)
            {
               §§push(§§pop() - this.§#!$§);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            this.§#!$§ = param2;
            §§push(this);
            §§push(this.§!!5§);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() + _loc5_);
            }
            §§pop().§!!5§ = §§pop();
            if(_loc6_)
            {
               §§push(this);
               §§push(this.§`-§);
               if(_loc6_ || this)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§`-§ = §§pop();
               if(!_loc7_)
               {
                  §§goto(addr89);
               }
               §§goto(addr147);
            }
            addr89:
            §§push(this);
            §§push(this.§&D§);
            if(!(_loc7_ && param3))
            {
               §§push(§§pop() + _loc5_);
            }
            §§pop().§&D§ = §§pop();
            if(_loc6_ || this)
            {
               §§push(this);
               §§push(this.§]!7§);
               if(!(_loc7_ && param1))
               {
                  §§push(§§pop() + _loc4_);
               }
               §§pop().§]!7§ = §§pop();
               §§push(this);
               §§push(this.§?!+§);
               if(!(_loc7_ && param2))
               {
                  §§push(§§pop() + _loc4_);
               }
               §§pop().§?!+§ = §§pop();
               if(!_loc7_)
               {
                  addr147:
                  if(param3)
                  {
                     §§goto(addr149);
                  }
               }
               §§goto(addr154);
            }
            addr149:
            this.§?!$§(0);
            if(!_loc7_)
            {
               addr154:
               this.§'1§ = true;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §3`§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§0Y§ = null;
         _loc2_ = this.§"_§[this.§-!3§];
         §§push(this.§@N§);
         if(_loc5_)
         {
            §§push(§§pop() / this.§#!3§);
            if(_loc5_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc2_ != null)
            {
               if(!(_loc4_ && this))
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        addr99:
                        §§push(Number(Number(§3=§.§7[§)));
                        if(_loc5_)
                        {
                           _loc1_ = §§pop();
                           addr103:
                           §§push(_loc1_);
                        }
                     }
                     §§goto(addr103);
                  }
                  else
                  {
                     §§push(§3=§.§=!,§);
                     if(_loc5_)
                     {
                        §§goto(addr99);
                        §§push(Number(§§pop()));
                     }
                  }
                  return §§pop() * _loc3_;
               }
            }
         }
         §§goto(addr103);
      }
      
      public function §"[§() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0Y§ = null;
         if(!(_loc3_ && _loc1_))
         {
            if(this.§"_§.length <= this.§-!3§)
            {
               return null;
            }
            if(_loc2_)
            {
               _loc1_ = this.§"_§[this.§-!3§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §>3§() : Point
      {
         return new Point(this.§]!7§,this.§`-§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0Y§ = null;
         if(!_loc5_)
         {
            this.§'U§(param1);
            if(this.§'1§)
            {
               if(_loc4_ || param1)
               {
                  this.§?!$§(param1);
                  addr37:
                  §§push(this);
                  §§push(this.§,L§);
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§,L§ = §§pop();
               }
               if(this.§,L§ < 0)
               {
                  this.§,L§ = 0;
               }
               §§goto(addr57);
            }
            §§goto(addr37);
         }
         addr57:
         if(this.mSlingShotState != § in§)
         {
            this.§4!+§(param1,param2);
            _loc3_ = null;
            if(this.§"_§.length > 0)
            {
               _loc3_ = this.§"_§[this.§-!3§];
            }
            if(_loc3_)
            {
               _loc3_.§1Q§(param1);
               if(_loc4_)
               {
                  §§goto(addr88);
               }
               §§goto(addr97);
            }
            addr88:
            if(!_loc3_)
            {
               if(_loc4_ || param1)
               {
                  addr97:
                  this.§'o§(§ in§);
                  if(!(_loc4_ || param1))
                  {
                     addr163:
                     §§push(_loc3_.§1]§);
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              addr170:
                              this.§'o§(§6t§);
                              if(!_loc5_)
                              {
                                 addr175:
                              }
                              §§goto(addr275);
                           }
                           else
                           {
                              addr180:
                              §§push(_loc3_);
                              §§push(this.§?!+§);
                              if(!_loc5_)
                              {
                                 §§push(_loc3_.radius);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() * Math.cos(this.§#p§ / (180 / Math.PI)));
                                    if(!(_loc5_ && param1))
                                    {
                                       addr207:
                                       §§push(§§pop() - §§pop());
                                       §§push(this.§&D§);
                                       if(!(_loc5_ && param2))
                                       {
                                          §§push(_loc3_.radius);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(§§pop() * Math.sin(this.§#p§ / (180 / Math.PI)));
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                    }
                                 }
                                 §§pop().setPosition(§§pop(),§§pop());
                                 if(_loc4_)
                                 {
                                    §§goto(addr251);
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr207);
                           }
                        }
                        §§goto(addr175);
                     }
                     addr251:
                     if(this.§5!;§)
                     {
                        addr252:
                        §§push(this);
                        §§push(this.§@N§);
                        if(!(_loc5_ && param1))
                        {
                           §§push(this.§#!3§);
                           if(_loc4_ || param1)
                           {
                              addr272:
                              §§push(§§pop() / §§pop());
                              §§push(this.§#p§);
                           }
                           §§pop().§?!5§(§§pop(),§§pop());
                           §§goto(addr275);
                        }
                        §§goto(addr272);
                     }
                  }
                  §§goto(addr275);
               }
               §§goto(addr180);
            }
            else
            {
               §§push(this.mSlingShotState);
               if(_loc4_ || param1)
               {
                  §§push(§=0§);
                  if(_loc4_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(this.§,L§ <= 0)
                        {
                           this.§'o§(§]9§);
                           if(_loc4_)
                           {
                              _loc3_.§[U§();
                              if(!(_loc4_ || this))
                              {
                                 §§goto(addr170);
                              }
                              §§goto(addr275);
                           }
                           else
                           {
                              §§goto(addr251);
                           }
                        }
                        §§goto(addr275);
                     }
                     else
                     {
                        §§push(this.mSlingShotState);
                        if(_loc4_)
                        {
                           §§push(§]9§);
                           if(!(_loc5_ && param2))
                           {
                              addr162:
                              if(§§pop() == §§pop())
                              {
                                 §§goto(addr163);
                              }
                              else
                              {
                                 addr178:
                                 §§push(this.mSlingShotState);
                                 §§push(§6t§);
                              }
                              §§goto(addr275);
                           }
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr180);
                           }
                           §§goto(addr275);
                        }
                        §§goto(addr178);
                     }
                  }
                  §§goto(addr162);
               }
               §§goto(addr178);
            }
         }
         addr275:
      }
      
      public function §>f§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§0Y§ = null;
         if(!(_loc6_ && this))
         {
            if(this.§"_§.length > 0)
            {
               if(_loc7_)
               {
                  _loc5_ = this.§"_§[this.§-!3§];
                  addr61:
                  if(!_loc5_)
                  {
                     if(_loc7_)
                     {
                        return;
                     }
                     addr79:
                     this.§?!5§(param3,param4);
                  }
                  else
                  {
                     addr68:
                     _loc5_.setPosition(param1,param2);
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr79);
                     }
                  }
               }
               return;
            }
            §§goto(addr61);
         }
         §§goto(addr68);
      }
      
      protected function §?!5§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§0Y§ = null;
         if(!(_loc4_ && _loc3_))
         {
            this.§5G§ = §&!1§;
            this.§1u§ = §?B§;
            if(this.§"_§.length > 0)
            {
               _loc3_ = this.§"_§[this.§-!3§];
            }
            if(!_loc3_)
            {
               if(!(_loc4_ && param2))
               {
                  §§goto(addr54);
               }
               else
               {
                  addr70:
                  this.§5!;§ = false;
                  if(!(_loc4_ && param1))
                  {
                     this.§null§ = new Date().time;
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§7C§.§[!7§(_loc3_,param1,param2);
                        this.§,!1§(this.§-!3§,_loc3_.§&!"§ > 0);
                        addr98:
                        if(!_loc4_)
                        {
                           this.§;s§();
                           if(_loc4_ && _loc3_)
                           {
                           }
                           §§goto(addr140);
                        }
                        if(this.§-!3§ >= this.§"_§.length)
                        {
                           addr133:
                           this.§'o§(§ in§);
                        }
                        else
                        {
                           this.§'o§(§=0§);
                        }
                     }
                     addr140:
                     return;
                  }
                  §§goto(addr133);
               }
            }
            else
            {
               this.mDragging = false;
               if(!_loc4_)
               {
                  §§goto(addr70);
               }
            }
            §§goto(addr98);
         }
         addr54:
      }
      
      protected function §;s§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc3_ || _loc2_)
         {
            §§push(§3!E§);
            §§push("BirdShot");
            if(_loc3_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§<!,§(§§pop());
         }
      }
      
      public function §4!+§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§-!3§);
         if(_loc5_ || param1)
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
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < this.§"_§.length)
            {
               §§push(this.mSlingShotState);
               if(!(_loc6_ && this))
               {
                  if(§§pop() != §,z§)
                  {
                     this.§"_§[_loc4_].update(param1,false,param2);
                     if(_loc6_)
                     {
                     }
                     break;
                  }
                  if(!(_loc5_ || _loc3_))
                  {
                     continue loop0;
                  }
                  this.§"_§[_loc4_].update(param1,true,param2);
                  if(_loc6_)
                  {
                  }
                  _loc4_++;
                  if(!(_loc5_ || this))
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
         var _loc1_:§0Y§ = null;
         var _loc2_:* = 0;
         if(!(_loc6_ && _loc2_))
         {
            this.mDragging = false;
            if(!(_loc6_ && _loc1_))
            {
               this.§'!<§();
               if(_loc5_)
               {
                  if(this.§?]§ >= this.§"_§.length)
                  {
                     if(_loc6_)
                     {
                        addr52:
                        _loc1_ = this.§"_§[this.§?]§];
                        if(!(_loc6_ && _loc1_))
                        {
                           §§push(§3n§.§]B§(_loc1_.name).score);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc2_ = §§pop();
                           if(_loc5_)
                           {
                              §§push(this.§7C§);
                              §§push(_loc2_);
                              §§push(§0]§.§,!-§);
                              §§push(true);
                              §§push(_loc1_.x);
                              §§push(_loc1_.y);
                              if(!_loc6_)
                              {
                                 §§push(3);
                                 if(!_loc6_)
                                 {
                                    addr108:
                                    §§push(§§pop() - §§pop());
                                    §§push(§2S§.§`!0§(_loc1_.name));
                                 }
                                 §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                 if(!_loc6_)
                                 {
                                    _loc1_.§-X§(-1,true);
                                    if(_loc5_)
                                    {
                                       addr131:
                                       var _loc3_:*;
                                       §§push((_loc3_ = this).§?]§);
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                       if(!_loc6_)
                                       {
                                          _loc3_.§?]§ = _loc4_;
                                       }
                                    }
                                    return true;
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr108);
                           }
                        }
                        §§goto(addr131);
                     }
                  }
                  §§goto(addr52);
               }
            }
            return false;
         }
         §§goto(addr52);
      }
      
      public function §,!%§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0Y§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§"_§)
         {
            if(!(_loc5_ && this))
            {
               §§push(_loc1_);
               if(_loc6_ || _loc1_)
               {
                  §§push(int(§§pop() + §3n§.§]B§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §^! §() : int
      {
         return this.§`J§;
      }
      
      public function §'U§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!(_loc3_ && this))
         {
            §§push(this.§7h§);
            if(!(_loc3_ && param1))
            {
               §§push(0);
               if(!_loc3_)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(this);
                     §§push(this.§7h§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§7h§ = §§pop();
                     if(!(_loc3_ && this))
                     {
                        addr57:
                        if(this.§7h§ <= 0)
                        {
                           if(!_loc3_)
                           {
                              §§push(this.§7C§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().objects);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop().§2j§(this.§]!7§,this.§!!5§));
                                    if(_loc4_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc3_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§goto(addr96);
                                          }
                                          §§goto(addr144);
                                       }
                                    }
                                    addr96:
                                    if(_loc2_ < 0)
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§8%§(0.1);
                                          this.§7h§ = 0;
                                       }
                                       else
                                       {
                                          addr158:
                                       }
                                       §§goto(addr162);
                                    }
                                    else
                                    {
                                       §§push(this.§7C§);
                                       if(!(_loc3_ && param1))
                                       {
                                          addr116:
                                          §§push(§§pop().objects);
                                          if(_loc4_)
                                          {
                                             addr119:
                                             §§push(_loc2_);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop().§!6§(§§pop()));
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop().§[&§);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         addr144:
                                                         this.§7h§ = -1;
                                                         §§goto(addr162);
                                                      }
                                                      else
                                                      {
                                                         addr153:
                                                         §§push(this.§7C§.objects.§!6§(_loc2_).§0!@§());
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      this.§7h§ = 2000;
                                                      §§goto(addr158);
                                                   }
                                                   else
                                                   {
                                                      this.§7h§ = 500;
                                                      §§goto(addr162);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr153);
                                    }
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr144);
                        }
                     }
                     §§goto(addr158);
                  }
                  addr162:
                  return;
               }
            }
            §§goto(addr57);
         }
         §§goto(addr158);
      }
      
      public function §!a§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         do
         {
            §§push(this.§7C§.objects.§2j§(this.§]!7§,this.§!!5§));
            if(_loc3_ || _loc3_)
            {
               §§push(int(§§pop()));
               if(_loc3_)
               {
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(-1);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(§§pop() != §§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                              }
                              §§goto(addr120);
                           }
                           this.§8%§(0.1);
                           if(!(_loc4_ && _loc1_))
                           {
                              §§push(_loc1_);
                              if(_loc3_)
                              {
                                 addr96:
                                 §§push(§§pop());
                                 if(_loc3_ || _loc1_)
                                 {
                                    addr104:
                                    §§push(§§pop() - 1);
                                    if(!(_loc3_ || _loc1_))
                                    {
                                       continue;
                                    }
                                 }
                                 _loc1_ = §§pop();
                                 addr113:
                                 continue;
                              }
                              §§goto(addr113);
                           }
                           addr117:
                           this.§7h§ = -1;
                           §§goto(addr120);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr120);
               }
            }
            §§goto(addr96);
         }
         while(§§pop() > §§pop());
         
         if(!_loc4_)
         {
            §§goto(addr117);
         }
         addr120:
      }
      
      public function §^-§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§0W§);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(-§§pop());
                  if(_loc3_ || this)
                  {
                     §§pop().x = §§pop();
                     §§goto(addr73);
                  }
                  §§pop().y = §§pop();
                  §§goto(addr73);
               }
               §§goto(addr71);
            }
            §§goto(addr63);
         }
         addr73:
         if(!_loc4_)
         {
            addr63:
            §§push(this.§0W§);
            §§push(param2);
            if(_loc3_ || param1)
            {
               addr71:
               §§push(-§§pop());
            }
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.mSlingShotState == §6t§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(_loc2_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc2_)
                           {
                              addr78:
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    addr81:
                                    §§push(true);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr84);
                                    }
                                 }
                                 else
                                 {
                                    addr85:
                                    §§push(false);
                                 }
                              }
                              §§goto(addr85);
                           }
                           return §§pop();
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr85);
                  }
                  addr84:
                  return §§pop();
               }
            }
            §§goto(addr78);
         }
         §§goto(addr81);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.mSlingShotState == §6t§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr60:
                     §§push(this.§@N§);
                     §§push(this.§#!3§);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() * §6@§);
                     }
                     §§push(§§pop() > §§pop());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.mDragging = false;
            if(!(_loc3_ && this))
            {
               addr43:
               this.§'o§(§6t§);
            }
            var _loc1_:§0Y§ = this.§"_§[this.§-!3§];
            if(_loc2_)
            {
               _loc1_.§-X§(§0r§.§<q§);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mDragging = true;
         }
         var _loc1_:§0Y§ = this.§"_§[this.§-!3§];
         if(_loc2_ || this)
         {
            _loc1_.§-X§(§0r§.§ T§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§5!;§ = true;
         }
      }
      
      protected function §,!1§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0Y§ = null;
         if(!_loc5_)
         {
            if(param1 < 0)
            {
               if(!_loc5_)
               {
                  §§goto(addr26);
               }
            }
            if(this.§"_§[param1])
            {
               if(!(_loc5_ && param2))
               {
                  _loc3_ = this.§"_§[param1];
                  if(!_loc5_)
                  {
                     this.§72§.removeChild(_loc3_.sprite);
                     if(!(_loc5_ && this))
                     {
                        if(param2)
                        {
                           if(_loc4_)
                           {
                              this.§5[§(this.§"_§[param1]);
                              if(_loc4_ || _loc3_)
                              {
                              }
                              §§goto(addr107);
                           }
                           addr107:
                           this.§"_§[param1] = null;
                           §§goto(addr112);
                        }
                        _loc3_.dispose();
                        if(_loc5_)
                        {
                        }
                        addr112:
                        this.§"_§.splice(param1,1);
                        return;
                     }
                  }
               }
            }
            §§goto(addr107);
         }
         addr26:
      }
      
      public function §5[§(param1:§0Y§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:int = 5;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(_loc9_)
               {
                  §§push(this.§7C§);
                  break;
               }
            }
            else
            {
               §§push(_loc4_);
               if(!(_loc10_ && _loc3_))
               {
                  §§push(Math.random() * (720 / _loc3_));
                  if(_loc9_)
                  {
                     §§push(_loc4_ = §§pop() + §§pop());
                     if(_loc9_ || param1)
                     {
                        §§push(180 / Math.PI);
                        if(!(_loc10_ && param1))
                        {
                           §§push(§§pop() / §§pop());
                           if(!(_loc10_ && _loc2_))
                           {
                              §§push(Number(§§pop()));
                              if(_loc9_ || param1)
                              {
                                 addr88:
                                 _loc6_ = §§pop();
                                 if(_loc10_)
                                 {
                                    continue;
                                 }
                                 §§push(param1.sprite);
                                 if(!_loc10_)
                                 {
                                    §§push(-§§pop().width * §#;§.§`!2§);
                                    if(!_loc10_)
                                    {
                                       addr102:
                                       §§push(Number(§§pop()));
                                    }
                                    §§push(§§pop());
                                    if(_loc9_ || _loc2_)
                                    {
                                       _loc7_ = §§pop();
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          addr119:
                                          §§push(Math.random() * -_loc7_);
                                          §§push(2);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc10_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(_loc9_ || this)
                                                      {
                                                         addr151:
                                                         §§push(-param1.sprite.height * §#;§.§`!2§);
                                                         if(!_loc10_)
                                                         {
                                                            addr159:
                                                            addr158:
                                                            §§push(Number(§§pop()));
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc10_ && this))
                                                            {
                                                               addr177:
                                                               _loc8_ = §§pop();
                                                               addr189:
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(Math.random() * -_loc8_);
                                                               }
                                                               _loc8_ = §§pop();
                                                               §§push(this.§7C§);
                                                               if(_loc10_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop().particles);
                                                               if(_loc9_ || this)
                                                               {
                                                                  §§push(§2S§.§4"§);
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     §§push(§5b§.§?D§);
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        §§push(§2S§.§9!>§);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(param1.x);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc10_ && _loc2_))
                                                                                 {
                                                                                    §§push(param1.y);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr243:
                                                                                       §§push(§§pop() + _loc8_);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr247:
                                                                                          §§push(1500);
                                                                                          if(!(_loc10_ && _loc3_))
                                                                                          {
                                                                                             §§push("");
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(§2S§.§#!2§(param1.name));
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() * Math.cos(_loc6_));
                                                                                                   }
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         addr292:
                                                                                                         §§push(§§pop() * Math.sin(_loc6_));
                                                                                                      }
                                                                                                      §§push(5);
                                                                                                      §§push(_loc2_);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop() * 20);
                                                                                                      }
                                                                                                      §§pop().§ t§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                      if(_loc10_ && this)
                                                                                                      {
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                      §§goto(addr310);
                                                                                                   }
                                                                                                   §§goto(addr292);
                                                                                                }
                                                                                                §§goto(addr351);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr341:
                                                                                                §§push(0);
                                                                                             }
                                                                                             §§pop().§ t§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                                                             §§goto(addr351);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr340:
                                                                                             §§push("");
                                                                                          }
                                                                                          §§goto(addr341);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr339:
                                                                                          §§push(1000);
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    §§goto(addr247);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr337:
                                                                                    §§push(param1.y);
                                                                                 }
                                                                                 §§goto(addr339);
                                                                              }
                                                                              §§goto(addr243);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr335:
                                                                           §§push(param1.x);
                                                                        }
                                                                        §§goto(addr337);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr333:
                                                                        §§push(§2S§.§9!>§);
                                                                     }
                                                                     §§goto(addr335);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr331:
                                                                     §§push(§5b§.§?D§);
                                                                  }
                                                                  §§goto(addr333);
                                                               }
                                                               else
                                                               {
                                                                  addr329:
                                                                  §§push(§2S§.§8x§);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr189);
                                                            §§push(Number(§§pop() + §§pop() * 2));
                                                         }
                                                         §§goto(addr159);
                                                      }
                                                      addr310:
                                                      _loc5_++;
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr159);
               }
               §§goto(addr88);
            }
            addr351:
            return;
         }
         §§goto(addr329);
         §§push(§§pop().particles);
      }
      
      public function §>!"§(param1:§0Y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!1§(this.§"_§.indexOf(param1));
         }
      }
      
      public function §=!!§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§0Y§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§0Y§ = null;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc7_)
            {
               if(§§pop() >= this.§"_§.length - 1)
               {
                  if(!_loc6_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§72§);
                        while(§§pop().numChildren > 0)
                        {
                           §§push(this.§72§);
                           if(!(_loc6_ && _loc3_))
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
                        if(_loc7_)
                        {
                           _loc1_ = §§pop();
                        }
                        break loop0;
                     }
                  }
               }
               else
               {
                  §§push(Number(Math.sqrt((this.§5!>§ - this.§"_§[_loc1_].x) * (this.§5!>§ - this.§"_§[_loc1_].x) + (this.§#!$§ - this.§"_§[_loc1_].y) * (this.§#!$§ - this.§"_§[_loc1_].y))));
                  if(_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc6_ && _loc1_))
                     {
                        §§push(Number(Math.sqrt((this.§5!>§ - this.§"_§[_loc1_ + 1].x) * (this.§5!>§ - this.§"_§[_loc1_ + 1].x) + (this.§#!$§ - this.§"_§[_loc1_ + 1].y) * (this.§#!$§ - this.§"_§[_loc1_ + 1].y))));
                        if(_loc7_ || _loc3_)
                        {
                           addr142:
                           §§push(§§pop());
                           if(_loc6_ && this)
                           {
                              continue;
                           }
                           _loc4_ = §§pop();
                        }
                        §§push(_loc3_);
                        continue;
                     }
                     addr260:
                     addr236:
                     while(true)
                     {
                        §§push(_loc1_);
                        break loop0;
                     }
                  }
                  §§goto(addr142);
               }
               §§goto(addr236);
            }
            break;
         }
         for(; §§pop() < this.§"_§.length; §§goto(addr260))
         {
            _loc2_ = this.§"_§[_loc1_];
            if(_loc7_)
            {
               this.§72§.addChildAt(_loc2_.sprite,0);
               if(_loc6_ && _loc2_)
               {
                  continue;
               }
            }
            _loc1_++;
         }
      }
      
      public function §<"§(param1:Number, param2:Number) : §0Y§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         for(; _loc3_ < this.§"_§.length; _loc3_++,if(_loc4_)
         {
            break;
         })
         {
            if(this.§"_§[_loc3_])
            {
               if(!(_loc4_ && param1))
               {
                  if(!this.§"_§[_loc3_].isInCoordinates(param1,param2))
                  {
                     continue;
                  }
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
               }
               return this.§"_§[_loc3_];
            }
         }
         return null;
      }
      
      public function §"!8§(param1:Number, param2:Number) : §3=§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(this.§5!>§);
               if(_loc3_)
               {
                  §§push(this.§#!3§);
                  if(_loc3_ || param1)
                  {
                     §§push(4);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc3_ || this)
                        {
                           addr50:
                           §§push(§§pop() - §§pop());
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() >= §§pop());
                              §§push(§§pop() >= §§pop());
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(!_loc4_)
                                    {
                                       addr66:
                                       §§push(param1);
                                       if(!(_loc4_ && param1))
                                       {
                                          addr74:
                                          §§push(this.§5!>§);
                                          §§push(this.§#!3§);
                                          if(_loc3_)
                                          {
                                             §§push(4);
                                             if(!(_loc4_ && param2))
                                             {
                                                addr98:
                                                §§push(§§pop() / §§pop());
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr106:
                                                   §§push(§§pop() <= §§pop() + §§pop());
                                                   if(_loc3_)
                                                   {
                                                      addr110:
                                                      §§push(§§pop());
                                                      if(!(_loc4_ && this))
                                                      {
                                                         addr118:
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(param2);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  addr135:
                                                                  §§push(this.§#!$§);
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     addr144:
                                                                     §§push(this.§#!3§);
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        §§goto(addr165);
                                                                     }
                                                                     addr165:
                                                                     addr154:
                                                                     addr153:
                                                                     §§push(§§pop() - §§pop() / 4);
                                                                     if(_loc4_)
                                                                     {
                                                                     }
                                                                     §§goto(addr187);
                                                                  }
                                                                  §§push(§§pop() >= §§pop());
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     addr176:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr185:
                                                                              addr187:
                                                                              addr188:
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr191);
                                                                                 }
                                                                              }
                                                                              return null;
                                                                              §§push(this.§#!$§);
                                                                              §§push(this.§!!5§);
                                                                           }
                                                                           §§goto(addr165);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr176);
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr154);
                                          }
                                          §§goto(addr106);
                                       }
                                       §§goto(addr135);
                                    }
                                    addr191:
                                    return this;
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr50);
               }
               §§goto(addr144);
            }
            §§goto(addr74);
         }
         §§goto(addr66);
      }
      
      public function §[0§(param1:§9R§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§0Y§ = null;
         var _loc4_:§?!3§ = null;
         if(_loc6_)
         {
            param1.§2^§ = this.§5!>§;
            if(_loc6_ || this)
            {
               addr36:
               param1.§7!H§ = this.§#!$§;
            }
            var _loc2_:* = Number(0);
            while(_loc2_ < this.§"_§.length)
            {
               _loc3_ = this.§"_§[_loc2_];
               (_loc4_ = new §?!3§()).x = _loc3_.x;
               if(!_loc5_)
               {
                  _loc4_.y = _loc3_.y;
                  if(!_loc6_)
                  {
                     continue;
                  }
                  _loc4_.id = _loc3_.name;
                  if(!(_loc6_ || _loc2_))
                  {
                     continue;
                  }
                  param1.§;$§(_loc4_);
                  if(_loc5_ && _loc2_)
                  {
                     continue;
                  }
               }
               §§push(_loc2_);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc5_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc2_ = §§pop();
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §,g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§"_§.length > 0)
         {
            this.§>!"§(this.§"_§[0]);
            if(_loc1_)
            {
               break;
            }
         }
      }
      
      public function §;!?§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(true)
         {
            if(_loc4_ < this.§"_§.length)
            {
               if(this.§"_§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  if(_loc5_ && _loc3_)
                  {
                     continue;
                  }
                  _loc3_.push(this.§"_§[_loc4_]);
               }
               _loc4_++;
               if(_loc5_)
               {
                  break;
               }
               continue;
            }
            §§push(this.§5!>§);
            if(_loc6_ || this)
            {
               §§push(§§pop() > param1.x);
               §§push(§§pop() > param1.x);
               if(_loc6_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        break;
                     }
                     addr141:
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§goto(addr145);
                        }
                     }
                     §§goto(addr153);
                  }
                  addr105:
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     addr108:
                     if(§§pop())
                     {
                        if(_loc6_ || param2)
                        {
                           §§pop();
                           §§push(this.§#!$§);
                           if(!_loc5_)
                           {
                              §§push(§§pop() > param1.y);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§goto(addr141);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr153);
                        }
                        addr145:
                        §§pop();
                        if(_loc6_)
                        {
                           addr153:
                           if(this.§#!$§ < param2.y)
                           {
                              if(!_loc5_)
                              {
                                 _loc3_.push(this);
                              }
                           }
                        }
                        return _loc3_;
                     }
                  }
                  §§goto(addr141);
               }
               §§goto(addr108);
            }
            §§goto(addr105);
            §§push(§§pop() < param2.x);
         }
         §§push(this.§5!>§);
         if(!_loc5_)
         {
            §§goto(addr102);
         }
         §§goto(addr153);
      }
      
      public function §8C§() : Array
      {
         return [this.§^!%§,this.§6+§];
      }
      
      public function §1Y§(param1:String, param2:Number, param3:Number) : §0Y§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§0Y§ = this.§#!%§(param1,param2,param3);
         if(_loc5_ || param1)
         {
            this.§=!!§();
         }
         return _loc4_;
      }
      
      public function §,&§() : Number
      {
         return this.§"_§.length;
      }
   }
}
