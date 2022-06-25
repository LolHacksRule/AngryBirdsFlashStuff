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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §95§ = 8;
            §5!4§ = 0;
            §=!,§ = 46.25;
            §7[§ = 52.5;
            §&!1§ = -0.7;
            §?B§ = 0;
            if(_loc1_ || _loc1_)
            {
               addr86:
               §6@§ = 0.4;
            }
            return;
         }
         §§goto(addr86);
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:§?!3§ = null;
         if(_loc7_)
         {
            this.§"_§ = new Vector.<§0Y§>();
            super();
            this.§7C§ = param1;
            this.§0W§ = param3;
            if(!(_loc6_ && param2))
            {
               addr45:
               if(param2)
               {
                  this.setPosition(param2.§2^§,param2.§7!H§);
                  if(_loc7_)
                  {
                     this.§0L§();
                  }
                  _loc4_ = 0;
                  addr59:
                  while(_loc4_ < param2.§5C§)
                  {
                     _loc5_ = param2.§?j§(_loc4_);
                     if(!_loc6_)
                     {
                        this.§#!%§(_loc5_.id,_loc5_.x,_loc5_.y);
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                     }
                     _loc4_++;
                  }
                  if(_loc7_)
                  {
                     this.§`J§ = this.§,!%§();
                     this.§-!3§ = 0;
                     if(!_loc6_)
                     {
                        if(this.§"_§.length <= 0)
                        {
                           addr114:
                           §§push(§#y§);
                           §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                           if(_loc7_)
                           {
                              §§push(this.§5!>§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_ || this)
                                 {
                                    addr130:
                                    §§push(§§pop() + " ");
                                    if(_loc7_ || param2)
                                    {
                                       addr141:
                                       §§push(§§pop() + this.§#!$§);
                                    }
                                 }
                                 §§pop().log(§§pop());
                                 this.§'o§(§ in§);
                                 addr174:
                                 this.§7h§ = 0;
                                 if(_loc7_)
                                 {
                                    this.§=!!§();
                                    if(_loc7_)
                                    {
                                       this.update(0,true);
                                    }
                                    this.§!a§();
                                    addr189:
                                    this.§?!$§(0);
                                 }
                                 return;
                                 addr167:
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr130);
                        }
                        else
                        {
                           this.§'o§(§=0§);
                           if(_loc7_ || param1)
                           {
                              §§goto(addr167);
                           }
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr114);
                  }
                  else
                  {
                     addr171:
                     this.§'o§(§ in§);
                  }
                  §§goto(addr174);
               }
               else
               {
                  §#y§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
               }
               §§goto(addr171);
            }
            §§goto(addr59);
         }
         §§goto(addr45);
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
         do
         {
            if(this.§"_§.length <= 0)
            {
               if(_loc1_)
               {
                  this.§"_§ = null;
                  if(!_loc2_)
                  {
                     §§push(this.§0W§);
                     if(_loc1_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           addr67:
                           this.§0W§.dispose();
                           break;
                        }
                        addr71:
                        this.§72§ = null;
                        if(!_loc2_)
                        {
                           this.§2a§ = null;
                           if(_loc2_ && _loc2_)
                           {
                           }
                           §§goto(addr89);
                        }
                        this.§<k§ = null;
                        §§goto(addr89);
                     }
                  }
                  §§goto(addr67);
               }
               addr89:
               return;
            }
            continue;
         }
         while(this.§,!1§(0), !_loc2_);
         
         this.§0W§ = null;
         §§goto(addr71);
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
         if(!(_loc6_ && param2))
         {
            if(param4 < 0)
            {
               if(_loc7_)
               {
                  this.§"_§.push(_loc5_);
                  if(_loc6_)
                  {
                  }
                  §§goto(addr79);
               }
               addr74:
               this.§72§.addChild(_loc5_.sprite);
            }
            else
            {
               this.§"_§.splice(param4,0,_loc5_);
               if(!_loc6_)
               {
                  §§goto(addr74);
               }
            }
         }
         addr79:
         return _loc5_;
      }
      
      public function §'o§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.mSlingShotState = param1;
         §§push(this.mSlingShotState);
         if(_loc3_ || param1)
         {
            §§push(§=0§);
            if(!_loc2_)
            {
               if(§§pop() == §§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     this.§'!<§();
                     if(_loc3_)
                     {
                        this.§,L§ = 1000;
                     }
                     §§goto(addr224);
                  }
                  addr221:
               }
               else
               {
                  §§push(this.mSlingShotState);
                  if(!(_loc2_ && param1))
                  {
                     §§push(§]9§);
                     if(_loc3_)
                     {
                        addr60:
                        if(§§pop() == §§pop())
                        {
                           this.§'!<§();
                           this.§,L§ = 0;
                           if(_loc2_ && _loc3_)
                           {
                              addr95:
                           }
                           §§goto(addr224);
                        }
                        else
                        {
                           §§push(this.mSlingShotState);
                           if(_loc3_ || _loc2_)
                           {
                              addr83:
                              §§push(§6t§);
                              if(!_loc2_)
                              {
                                 addr86:
                                 if(§§pop() == §§pop())
                                 {
                                    this.§,L§ = 10000;
                                    this.§5!;§ = false;
                                    this.§'!<§();
                                    §§goto(addr95);
                                 }
                                 else
                                 {
                                    §§push(this.mSlingShotState);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§ in§);
                                       if(!_loc2_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                this.§'!<§();
                                                if(!_loc2_)
                                                {
                                                   this.§,L§ = 2000;
                                                   if(!(_loc2_ && this))
                                                   {
                                                      §§goto(addr224);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr221);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                this.§"_§[this.§-!3§].setPosition(this.§?!+§ - this.§"_§[this.§-!3§].radius * Math.cos(this.§#p§ / (180 / Math.PI)),this.§&D§ + this.§"_§[this.§-!3§].radius * Math.sin(this.§#p§ / (180 / Math.PI)));
                                                addr165:
                                                if(_loc3_)
                                                {
                                                   §§goto(addr221);
                                                }
                                             }
                                             §§goto(addr224);
                                          }
                                          else
                                          {
                                             addr138:
                                             §§push(this.mSlingShotState);
                                             §§push(§,z§);
                                          }
                                          §§goto(addr224);
                                       }
                                    }
                                    §§goto(addr138);
                                 }
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(this.mDragging)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       this.mDragging = false;
                                    }
                                    this.§5!;§ = false;
                                    this.§'!<§();
                                    if(_loc3_ || this)
                                    {
                                       §§goto(addr165);
                                    }
                                 }
                                 else
                                 {
                                    this.§'!<§();
                                 }
                              }
                              §§goto(addr224);
                           }
                           §§goto(addr138);
                        }
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr83);
               }
               addr224:
               this.mDragging = false;
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr83);
      }
      
      public function get §!-§() : §#;§
      {
         return this.§7C§;
      }
      
      public function §2!5§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.mSlingShotState == § in§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr48:
                     §§pop();
                     §§push(this.§,L§ <= 0);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr48);
      }
      
      private function §0L§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4b§ = this.§9!!§();
         var _loc2_:§9X§ = _loc1_.getFrame(0);
         var _loc3_:§9X§ = _loc1_.getFrame(1);
         if(!(_loc5_ && _loc1_))
         {
            this.§6+§ = new §8!?§(_loc2_.texture);
            if(_loc4_)
            {
               §§push(this.§6+§);
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc2_.scale);
                  if(!_loc5_)
                  {
                     §§pop().scaleX = §§pop();
                     addr72:
                     if(!_loc5_)
                     {
                        addr63:
                        §§push(this.§6+§);
                        §§push(_loc2_.scale);
                     }
                     §§push(this.§^!%§);
                     if(_loc4_)
                     {
                        §§push(_loc3_.scale);
                        if(!_loc5_)
                        {
                           §§pop().scaleX = §§pop();
                           if(_loc4_ || this)
                           {
                              addr102:
                              this.§^!%§.scaleY = _loc3_.scale;
                              addr100:
                              if(!(_loc5_ && _loc2_))
                              {
                                 this.§5! §();
                                 if(_loc4_)
                                 {
                                    addr114:
                                    this.§,H§();
                                 }
                                 addr141:
                                 §§push(this.§0W§);
                                 if(_loc4_)
                                 {
                                    §§pop().addChild(this.§72§);
                                    §§push(this.§0W§);
                                    if(!_loc5_)
                                    {
                                       §§pop().addChild(this.§&H§);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr172:
                                          §§push(this.§0W§);
                                          if(!_loc5_)
                                          {
                                             addr176:
                                             §§pop().addChild(this.§>z§);
                                             addr181:
                                             this.§0W§.addChild(this.§^!%§);
                                             if(!_loc5_)
                                             {
                                                §§push(this);
                                                §§push(this.§#!$§);
                                                if(!(_loc5_ && this))
                                                {
                                                   §§push(§§pop() + 8.5);
                                                }
                                                §§pop().§!!5§ = §§pop();
                                             }
                                          }
                                          §§goto(addr181);
                                       }
                                       return;
                                    }
                                 }
                                 §§goto(addr176);
                              }
                              this.§72§ = new Sprite();
                              §§push(this.§0W§);
                              if(_loc4_)
                              {
                                 §§pop().addChild(this.§6+§);
                                 §§push(this.§0W§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr136:
                                    §§pop().addChild(this.§%K§);
                                    if(_loc4_)
                                    {
                                       §§goto(addr141);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr100);
                  }
                  §§pop().scaleY = §§pop();
                  this.§^!%§ = new §8!?§(_loc3_.texture);
                  §§goto(addr72);
               }
               §§goto(addr63);
            }
            §§goto(addr72);
         }
         §§goto(addr141);
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
         if(_loc2_)
         {
            this.§]!7§ = this.§5!>§;
            if(_loc2_)
            {
               this.§`-§ = this.§#!$§;
               if(_loc2_ || _loc2_)
               {
                  addr63:
                  this.§#!3§ = §#!;§.§9d§;
               }
               _loc1_ = null;
               return;
            }
         }
         §§goto(addr63);
      }
      
      protected function §,H§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(!_loc3_)
         {
            if(!§-o§)
            {
               if(_loc4_ || _loc1_)
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc4_)
                  {
                     §-o§ = this.§7C§.textureManager.§ b§(_loc2_);
                  }
               }
               var _loc1_:§8!?§ = new §8!?§(§-o§);
               _loc1_.rotation = Math.PI;
               _loc1_.x = _loc1_.width / 2;
               addr52:
               if(!_loc3_)
               {
                  _loc1_.y = _loc1_.height / 2;
                  this.§&H§.addChild(_loc1_);
                  this.§%K§ = new Sprite();
                  if(_loc4_ || _loc1_)
                  {
                     this.§<N§ = new §?C§(2,2,§=3§);
                     if(!_loc3_)
                     {
                        addr119:
                        this.§%K§.addChild(this.§<N§);
                        this.§>z§ = new Sprite();
                        this.§"!9§ = new §?C§(2,2,§=3§);
                        this.§>z§.addChild(this.§"!9§);
                     }
                  }
                  return;
               }
               §§goto(addr119);
            }
            this.§&H§ = new Sprite();
         }
         §§goto(addr52);
      }
      
      public function §?!$§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§&D§);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() / §#;§.§`!2§);
            if(_loc7_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§?!+§);
         if(_loc7_)
         {
            §§push(§§pop() / §#;§.§`!2§);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(3.5);
         if(_loc7_)
         {
            §§push(8);
            §§push(this.§#!3§);
            if(_loc7_)
            {
               §§push(this.§@N§);
               if(_loc7_ || this)
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc6_)
                  {
                     addr71:
                     §§push(§§pop() / this.§#!3§);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr76:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  if(_loc7_ || this)
                  {
                     §§push(this.§&H§);
                     if(_loc7_)
                     {
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           §§pop().x = §§pop();
                           if(_loc7_)
                           {
                              §§push(this.§&H§);
                              if(_loc7_ || this)
                              {
                                 addr122:
                                 §§push(_loc2_);
                                 if(_loc7_ || param1)
                                 {
                                    §§pop().y = §§pop();
                                    §§push(this.§&H§);
                                 }
                                 §§pop().rotation = §§pop() / (180 / Math.PI);
                                 §§push(this.§6+§);
                                 if(_loc7_)
                                 {
                                    §§push(this.§5!>§);
                                    if(!_loc6_)
                                    {
                                       §§push(§#;§.§`!2§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(3);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§goto(addr159);
                                                }
                                             }
                                          }
                                          §§goto(addr185);
                                       }
                                       §§goto(addr175);
                                    }
                                    addr159:
                                    §§pop().x = §§pop();
                                    if(_loc7_)
                                    {
                                       addr164:
                                       §§push(this.§6+§);
                                       §§push(this.§#!$§);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          addr175:
                                          §§push(§§pop() / §#;§.§`!2§);
                                          if(_loc7_ || _loc3_)
                                          {
                                             addr185:
                                             §§pop().y = §§pop() - 30;
                                             §§push(this.§^!%§);
                                             if(!_loc6_)
                                             {
                                                §§push(this.§5!>§);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(§#;§.§`!2§);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc7_ || this)
                                                      {
                                                         §§push(30);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc7_)
                                                            {
                                                               addr217:
                                                               §§pop().x = §§pop();
                                                               addr220:
                                                               addr218:
                                                               §§push(this.§^!%§);
                                                               §§push(this.§#!$§);
                                                               if(_loc7_ || _loc2_)
                                                               {
                                                                  addr231:
                                                                  §§push(§§pop() / §#;§.§`!2§);
                                                                  if(!_loc7_)
                                                                  {
                                                                  }
                                                                  addr236:
                                                                  §§pop().y = §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(this.§>z§);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        §§push(this.§5!>§);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§#;§.§`!2§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                                 addr264:
                                                                                 §§push(17);
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       §§push(this.§>z§);
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          §§push(this.§#!$§);
                                                                                          if(_loc6_ && param1)
                                                                                          {
                                                                                          }
                                                                                          addr316:
                                                                                          §§pop().y = §§pop();
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             addr326:
                                                                                             this.§>z§.rotation = Math.atan2(_loc2_ - this.§>z§.y,_loc3_ - this.§>z§.x);
                                                                                             if(!(_loc6_ && _loc2_))
                                                                                             {
                                                                                                §§push(this.§%K§);
                                                                                                if(_loc7_ || param1)
                                                                                                {
                                                                                                   §§push(this.§5!>§);
                                                                                                   if(_loc7_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§#;§.§`!2§);
                                                                                                      if(_loc7_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            addr381:
                                                                                                            §§push(§§pop() + 22);
                                                                                                            if(!(_loc6_ && this))
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               §§push(this.§%K§);
                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                               {
                                                                                                                  addr400:
                                                                                                                  §§push(this.§#!$§);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     addr407:
                                                                                                                     §§pop().y = §§pop() / §#;§.§`!2§;
                                                                                                                     if(_loc7_ || this)
                                                                                                                     {
                                                                                                                        §§push(this.§%K§);
                                                                                                                     }
                                                                                                                     §§push(this.§"!9§);
                                                                                                                     if(!(_loc6_ && this))
                                                                                                                     {
                                                                                                                        §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§>z§.x,2) + Math.pow(_loc2_ - this.§>z§.y,2));
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(this.§<N§);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§%K§.x,2) + Math.pow(_loc2_ - this.§%K§.y,2));
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(this.§"!9§);
                                                                                                                                 if(_loc7_ || param1)
                                                                                                                                 {
                                                                                                                                    addr496:
                                                                                                                                    §§push(this.§<N§);
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    if(_loc7_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * 2);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().height = §§pop());
                                                                                                                                    if(_loc7_ || param1)
                                                                                                                                    {
                                                                                                                                       §§pop().height = §§pop();
                                                                                                                                       addr523:
                                                                                                                                       §§push(this.§"!9§);
                                                                                                                                       §§push(-this.§"!9§.height);
                                                                                                                                       if(!(_loc6_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / 2);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    §§goto(addr547);
                                                                                                                                 }
                                                                                                                                 §§goto(addr523);
                                                                                                                              }
                                                                                                                              addr547:
                                                                                                                              §§goto(addr549);
                                                                                                                           }
                                                                                                                           addr549:
                                                                                                                           §§push(this.§<N§);
                                                                                                                           §§push(-this.§<N§.height);
                                                                                                                           if(!(_loc6_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop() / 2);
                                                                                                                           }
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           §§goto(addr563);
                                                                                                                        }
                                                                                                                        §§goto(addr523);
                                                                                                                     }
                                                                                                                     §§goto(addr496);
                                                                                                                  }
                                                                                                                  §§goto(addr407);
                                                                                                               }
                                                                                                               §§pop().rotation = Math.atan2(_loc2_ - this.§%K§.y,_loc3_ - this.§%K§.x);
                                                                                                               §§goto(addr407);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr407);
                                                                                                   }
                                                                                                   §§goto(addr381);
                                                                                                }
                                                                                                §§goto(addr400);
                                                                                             }
                                                                                             §§goto(addr407);
                                                                                          }
                                                                                          §§goto(addr496);
                                                                                       }
                                                                                       §§goto(addr326);
                                                                                    }
                                                                                    addr311:
                                                                                    §§push(§§pop() / §#;§.§`!2§);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(5);
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr316);
                                                                           }
                                                                           §§goto(addr311);
                                                                        }
                                                                        §§goto(addr264);
                                                                     }
                                                                     §§goto(addr326);
                                                                  }
                                                                  §§goto(addr496);
                                                               }
                                                               §§push(30);
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr220);
                                          }
                                       }
                                       §§goto(addr185);
                                    }
                                    addr563:
                                    this.§'1§ = false;
                                    return;
                                 }
                                 §§goto(addr164);
                              }
                              §§push(this.§#p§);
                              if(!_loc6_)
                              {
                                 §§push(-§§pop());
                                 if(!_loc6_)
                                 {
                                    §§goto(addr122);
                                 }
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr218);
                        }
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr496);
               }
            }
            §§goto(addr71);
         }
         §§goto(addr76);
      }
      
      public function §6L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         do
         {
            if(this.§"_§.length <= 0)
            {
               if(!_loc1_)
               {
                  this.§"!1§();
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr80);
               }
               break;
            }
            this.§,!1§(0,true);
         }
         while(_loc2_ || _loc2_);
         
         this.§#!%§("BIRD_SARDINE",this.§5!>§,this.§#!$§);
         if(!(_loc1_ && _loc1_))
         {
            §§goto(addr80);
         }
         addr80:
         this.§'o§(§6t§);
      }
      
      protected function §"!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3!E§.§<!,§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'o§(§,z§);
         }
      }
      
      public function §'!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this);
            §§push(this.§]!7§);
            §§push(this.§`-§);
            if(!_loc2_)
            {
               §§push(this.§#!3§);
               if(!(_loc2_ && this))
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
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         if(!(_loc10_ && param1))
         {
            §§push(this.§?!+§);
            if(_loc9_)
            {
               §§push(param1);
               if(_loc9_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(!(_loc10_ && this))
                  {
                     if(§§pop())
                     {
                        if(!_loc10_)
                        {
                           §§pop();
                           §§push(this.§&D§);
                           if(!(_loc10_ && this))
                           {
                              §§push(param2);
                              if(!_loc10_)
                              {
                                 addr66:
                                 if(§§pop() == §§pop())
                                 {
                                    return true;
                                 }
                                 this.§@N§ = Math.sqrt((param2 - this.§`-§) * (param2 - this.§`-§) + (param1 - this.§]!7§) * (param1 - this.§]!7§));
                                 if(_loc9_ || param1)
                                 {
                                    if(this.§@N§ > this.§#!3§)
                                    {
                                       if(_loc9_)
                                       {
                                          §§push(param3);
                                          if(_loc9_ || this)
                                          {
                                             if(§§pop())
                                             {
                                                this.§@N§ = Math.sqrt((this.§&D§ - this.§`-§) * (this.§&D§ - this.§`-§) + (this.§?!+§ - this.§]!7§) * (this.§?!+§ - this.§]!7§));
                                                if(_loc9_ || this)
                                                {
                                                   §§push(false);
                                                   if(_loc9_ || param2)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr661:
                                                   §§pop();
                                                   §§push(this.§#p§);
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      addr673:
                                                      §§push(-90 + _loc4_);
                                                      §§push(_loc6_);
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc9_)
                                                         {
                                                            addr686:
                                                            if(§§pop() < §§pop() + _loc5_)
                                                            {
                                                               §§push(_loc7_);
                                                               if(!_loc10_)
                                                               {
                                                                  addr692:
                                                                  §§push(this.§#!3§);
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     addr701:
                                                                     §§push(_loc7_);
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        §§push(Math.abs(this.§#p§ - -90 - _loc5_) - _loc4_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr722:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              addr730:
                                                                              §§push(_loc6_);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr738:
                                                                                    _loc8_ = §§pop() + §§pop();
                                                                                    addr737:
                                                                                    §§push(this.§]!7§);
                                                                                    §§push(_loc8_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr744:
                                                                                       §§push(param1);
                                                                                       if(_loc9_ || param3)
                                                                                       {
                                                                                          addr752:
                                                                                          §§push(this.§]!7§);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr756:
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr759:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                §§push(this.§@N§);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr764:
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr768:
                                                                                                      §§push(Number(§§pop() + §§pop()));
                                                                                                      if(!(_loc10_ && this))
                                                                                                      {
                                                                                                         addr776:
                                                                                                         param1 = §§pop();
                                                                                                         addr779:
                                                                                                         §§push(this.§`-§);
                                                                                                         §§push(_loc8_);
                                                                                                         if(_loc9_ || param2)
                                                                                                         {
                                                                                                            addr787:
                                                                                                            §§push(param2);
                                                                                                            if(_loc9_ || param1)
                                                                                                            {
                                                                                                               addr797:
                                                                                                               §§push(§§pop() * (§§pop() - this.§`-§));
                                                                                                               if(!(_loc10_ && param3))
                                                                                                               {
                                                                                                                  addr806:
                                                                                                                  §§push(this.§@N§);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     addr810:
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        addr815:
                                                                                                                        param2 = Number(§§pop() + §§pop());
                                                                                                                        addr813:
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           this.§@N§ = _loc8_;
                                                                                                                           addr821:
                                                                                                                           this.§?!+§ = param1;
                                                                                                                           if(!(_loc10_ && param2))
                                                                                                                           {
                                                                                                                              this.§&D§ = param2;
                                                                                                                              addr834:
                                                                                                                              §§push(this.§@N§);
                                                                                                                              §§push(this.§#!3§);
                                                                                                                              if(_loc9_ || param3)
                                                                                                                              {
                                                                                                                                 addr845:
                                                                                                                                 §§push(0.45);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    addr849:
                                                                                                                                    if(§§pop() <= §§pop() * §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          this.§>!5§ = true;
                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr910);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr865:
                                                                                                                                       §§push(Boolean(this.§>!5§));
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          addr869:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc9_ || param2)
                                                                                                                                             {
                                                                                                                                                addr887:
                                                                                                                                                §§pop();
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   addr897:
                                                                                                                                                   if(this.§@N§ >= this.§#!3§ * 0.8)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr905:
                                                                                                                                                         this.§7!;§();
                                                                                                                                                         addr907:
                                                                                                                                                         this.§>!5§ = false;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr910);
                                                                                                                                                }
                                                                                                                                                §§goto(addr907);
                                                                                                                                             }
                                                                                                                                             §§goto(addr910);
                                                                                                                                          }
                                                                                                                                          §§goto(addr897);
                                                                                                                                       }
                                                                                                                                       §§goto(addr887);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr897);
                                                                                                                           }
                                                                                                                           §§goto(addr910);
                                                                                                                        }
                                                                                                                        §§goto(addr905);
                                                                                                                     }
                                                                                                                     §§goto(addr849);
                                                                                                                  }
                                                                                                                  §§goto(addr897);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr849);
                                                                                                         }
                                                                                                         §§goto(addr813);
                                                                                                      }
                                                                                                      §§goto(addr815);
                                                                                                   }
                                                                                                   §§goto(addr787);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr810);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr797);
                                                                                    }
                                                                                    §§goto(addr787);
                                                                                 }
                                                                              }
                                                                              §§goto(addr849);
                                                                           }
                                                                           §§goto(addr806);
                                                                        }
                                                                        §§goto(addr797);
                                                                     }
                                                                     §§goto(addr764);
                                                                  }
                                                                  §§goto(addr849);
                                                               }
                                                               §§goto(addr768);
                                                            }
                                                            §§goto(addr834);
                                                         }
                                                         §§goto(addr845);
                                                      }
                                                      §§goto(addr686);
                                                   }
                                                   §§goto(addr737);
                                                }
                                                else
                                                {
                                                   addr189:
                                                   §§push(this.§`-§);
                                                   §§push(this.§#!3§);
                                                   §§push(param2);
                                                   if(_loc9_)
                                                   {
                                                      §§push(this.§`-§);
                                                      if(_loc9_ || param2)
                                                      {
                                                         §§push(§§pop() * (§§pop() - §§pop()) / this.§@N§);
                                                         if(_loc9_ || this)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               addr220:
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  param2 = §§pop();
                                                                  if(!_loc10_)
                                                                  {
                                                                     this.§@N§ = this.§#!3§;
                                                                     addr235:
                                                                     this.§?!+§ = param1;
                                                                     this.§&D§ = param2;
                                                                     if(_loc9_)
                                                                     {
                                                                        this.§#p§ = Math.atan2(-(this.§&D§ - this.§`-§),this.§?!+§ - this.§]!7§);
                                                                        if(!(_loc10_ && param3))
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§#p§);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(§§pop() * (180 / Math.PI));
                                                                           }
                                                                           §§pop().§#p§ = §§pop();
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              §§push(this.mDragging);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(false);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr290:
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(param1);
                                                                                          if(_loc9_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() + this.§5G§);
                                                                                          }
                                                                                          §§pop().§?!+§ = §§pop();
                                                                                          §§push(this);
                                                                                          §§push(param2);
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() + this.§1u§);
                                                                                          }
                                                                                          §§pop().§&D§ = §§pop();
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             this.§#p§ = -160;
                                                                                             if(_loc9_ || param3)
                                                                                             {
                                                                                                addr331:
                                                                                                §§push(12);
                                                                                                if(!(_loc10_ && param1))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc9_ || param2)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      §§push(5);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr351:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            addr356:
                                                                                                            §§push(Number(4));
                                                                                                            if(!(_loc10_ && this))
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                               addr365:
                                                                                                               §§push(this.§#!3§);
                                                                                                               §§push(2);
                                                                                                               if(!(_loc10_ && param1))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop() / §§pop()));
                                                                                                                  if(_loc9_ || this)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     §§push(this.§@N§);
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           if(!(_loc10_ && param2))
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       addr409:
                                                                                                                                       §§push(this.§#p§);
                                                                                                                                       §§push(-90);
                                                                                                                                       if(_loc9_ || this)
                                                                                                                                       {
                                                                                                                                          addr417:
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(!(_loc10_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc10_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr455:
                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            addr460:
                                                                                                                                                            §§push(this.§#p§);
                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(-90);
                                                                                                                                                               if(!(_loc10_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                  if(_loc9_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     addr485:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() < §§pop() + §§pop());
                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           addr498:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§]!7§);
                                                                                                                                                                              if(_loc9_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 §§push(param1);
                                                                                                                                                                                 if(_loc9_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§]!7§);
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr521:
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr529:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc9_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop() / this.§@N§);
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr543:
                                                                                                                                                                                                param1 = Number(§§pop());
                                                                                                                                                                                                addr545:
                                                                                                                                                                                                §§push(this.§`-§);
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr551:
                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                   §§push(param2);
                                                                                                                                                                                                   §§push(this.§`-§);
                                                                                                                                                                                                   if(_loc9_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(!(_loc10_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc9_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr576:
                                                                                                                                                                                                            §§push(§§pop() + §§pop() / this.§@N§);
                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  param2 = §§pop();
                                                                                                                                                                                                                  this.§@N§ = _loc7_;
                                                                                                                                                                                                                  this.§?!+§ = param1;
                                                                                                                                                                                                                  addr597:
                                                                                                                                                                                                                  this.§&D§ = param2;
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr602:
                                                                                                                                                                                                                     §§goto(addr834);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr905);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr779);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr628:
                                                                                                                                                                                                               §§push(-90);
                                                                                                                                                                                                               if(!(_loc10_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  if(!(_loc10_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr644:
                                                                                                                                                                                                                     §§push(§§pop() > §§pop() - §§pop() - _loc6_ + _loc5_);
                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr652:
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc10_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr661);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr910:
                                                                                                                                                                                                                           this.§'1§ = true;
                                                                                                                                                                                                                           return true;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr686);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr673);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr834);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr686);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr756);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr737);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr744);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr551);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr797);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr752);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr815);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr606:
                                                                                                                                                                              §§push(this.§@N§ > _loc7_);
                                                                                                                                                                              if(_loc9_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc9_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr622:
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr623:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr628);
                                                                                                                                                                                          §§push(this.§#p§);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr661);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr652);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr869);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr865);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr887);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr722);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr644);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr673);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr545);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr498);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr576);
                                                                                                                                                }
                                                                                                                                                §§goto(addr759);
                                                                                                                                             }
                                                                                                                                             §§goto(addr606);
                                                                                                                                          }
                                                                                                                                          §§goto(addr485);
                                                                                                                                       }
                                                                                                                                       §§goto(addr673);
                                                                                                                                    }
                                                                                                                                    §§goto(addr597);
                                                                                                                                 }
                                                                                                                                 §§goto(addr623);
                                                                                                                              }
                                                                                                                              §§goto(addr455);
                                                                                                                           }
                                                                                                                           §§goto(addr686);
                                                                                                                        }
                                                                                                                        §§goto(addr759);
                                                                                                                     }
                                                                                                                     §§goto(addr738);
                                                                                                                  }
                                                                                                                  §§goto(addr409);
                                                                                                               }
                                                                                                               §§goto(addr417);
                                                                                                            }
                                                                                                            §§goto(addr551);
                                                                                                         }
                                                                                                         §§goto(addr738);
                                                                                                      }
                                                                                                      §§goto(addr356);
                                                                                                   }
                                                                                                   §§goto(addr776);
                                                                                                }
                                                                                                §§goto(addr351);
                                                                                             }
                                                                                             §§goto(addr821);
                                                                                          }
                                                                                          §§goto(addr365);
                                                                                       }
                                                                                       §§goto(addr821);
                                                                                    }
                                                                                    §§goto(addr331);
                                                                                 }
                                                                                 §§goto(addr622);
                                                                              }
                                                                              §§goto(addr652);
                                                                           }
                                                                           §§goto(addr460);
                                                                        }
                                                                        §§goto(addr602);
                                                                     }
                                                                     §§goto(addr661);
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                               §§goto(addr628);
                                                            }
                                                            §§goto(addr543);
                                                         }
                                                         §§goto(addr806);
                                                      }
                                                      §§goto(addr797);
                                                   }
                                                   §§goto(addr529);
                                                }
                                                §§goto(addr744);
                                             }
                                             else
                                             {
                                                §§push(this.§]!7§);
                                                if(_loc9_ || this)
                                                {
                                                   §§push(this.§#!3§);
                                                   §§push(param1);
                                                   §§push(this.§]!7§);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() * (§§pop() - §§pop()));
                                                      if(_loc9_ || this)
                                                      {
                                                         param1 = Number(§§pop() + §§pop() / this.§@N§);
                                                         §§goto(addr189);
                                                      }
                                                      §§goto(addr576);
                                                   }
                                                   §§goto(addr521);
                                                }
                                             }
                                             §§goto(addr834);
                                          }
                                          §§goto(addr661);
                                       }
                                       §§goto(addr597);
                                    }
                                    §§goto(addr235);
                                 }
                                 §§goto(addr834);
                              }
                              §§goto(addr730);
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr865);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr290);
               }
               §§goto(addr701);
            }
            §§goto(addr692);
         }
         §§goto(addr409);
      }
      
      protected function §7!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §3!E§.§<!,§("SlingshotStreched");
         }
      }
      
      public function §8%§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§5!>§);
            §§push(this.§#!$§);
            if(!_loc2_)
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
         if(!(_loc6_ && this))
         {
            §§push(§§pop() - this.§5!>§);
            if(_loc7_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc7_ || this)
            {
               this.§5!>§ = param1;
            }
            §§push(param2);
            if(_loc7_ || param1)
            {
               §§push(§§pop() - this.§#!$§);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && this))
            {
               this.§#!$§ = param2;
               §§push(this);
               §§push(this.§!!5§);
               if(_loc7_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§!!5§ = §§pop();
               if(!(_loc6_ && param1))
               {
                  §§push(this);
                  §§push(this.§`-§);
                  if(_loc7_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§`-§ = §§pop();
                  §§push(this);
                  §§push(this.§&D§);
                  if(_loc7_ || this)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§&D§ = §§pop();
                  §§push(this);
                  §§push(this.§]!7§);
                  if(!(_loc6_ && param3))
                  {
                     §§push(§§pop() + _loc4_);
                  }
                  §§pop().§]!7§ = §§pop();
                  §§push(this);
                  §§push(this.§?!+§);
                  if(_loc7_ || param3)
                  {
                     §§push(§§pop() + _loc4_);
                  }
                  §§pop().§?!+§ = §§pop();
               }
               if(param3)
               {
                  addr151:
                  this.§?!$§(0);
               }
               this.§'1§ = true;
               return;
            }
            §§goto(addr151);
         }
         §§goto(addr30);
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
            if(!(_loc4_ && this))
            {
               addr44:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc2_)
            {
               if(_loc2_ != null)
               {
                  if(_loc5_ || this)
                  {
                     if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr80);
                        }
                        §§goto(addr112);
                     }
                     else
                     {
                        §§push(§3=§.§=!,§);
                        if(!_loc4_)
                        {
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr120);
                  }
                  addr80:
                  §§push(§3=§.§7[§);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc5_)
                     {
                        addr107:
                        §§push(Number(§§pop()));
                     }
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        _loc1_ = §§pop();
                        addr112:
                        §§push(_loc1_);
                        if(_loc5_ || _loc2_)
                        {
                           addr120:
                           §§push(§§pop() * _loc3_);
                        }
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr112);
         }
         §§goto(addr44);
      }
      
      public function §"[§() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0Y§ = null;
         if(_loc2_)
         {
            if(this.§"_§.length > this.§-!3§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr54:
                  _loc1_ = this.§"_§[this.§-!3§];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr54);
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
         this.§'U§(param1);
         if(_loc4_)
         {
            if(this.§'1§)
            {
               this.§?!$§(param1);
               if(_loc4_ || _loc3_)
               {
                  addr37:
                  §§push(this);
                  §§push(this.§,L§);
                  if(_loc4_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§,L§ = §§pop();
                  if(!(_loc5_ && param1))
                  {
                     if(this.§,L§ < 0)
                     {
                     }
                     addr66:
                     if(this.mSlingShotState == § in§)
                     {
                        if(!_loc4_)
                        {
                           addr77:
                           _loc3_ = null;
                           if(this.§"_§.length > 0)
                           {
                              if(!_loc5_)
                              {
                                 _loc3_ = this.§"_§[this.§-!3§];
                              }
                              §§goto(addr282);
                           }
                           if(_loc3_)
                           {
                              _loc3_.§1Q§(param1);
                              if(_loc4_ || this)
                              {
                              }
                              §§goto(addr282);
                           }
                           if(!_loc3_)
                           {
                              this.§'o§(§ in§);
                           }
                           else
                           {
                              §§push(this.mSlingShotState);
                              if(_loc4_ || this)
                              {
                                 §§push(§=0§);
                                 if(_loc4_ || param2)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(this.§,L§ <= 0)
                                       {
                                          this.§'o§(§]9§);
                                          _loc3_.§[U§();
                                       }
                                       §§goto(addr282);
                                    }
                                    else
                                    {
                                       §§push(this.mSlingShotState);
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(§]9§);
                                          if(_loc4_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                §§push(_loc3_.§1]§);
                                                if(_loc4_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_ || param2)
                                                      {
                                                         this.§'o§(§6t§);
                                                      }
                                                      else
                                                      {
                                                         addr185:
                                                         §§push(_loc3_);
                                                         §§push(this.§?!+§);
                                                         if(_loc4_)
                                                         {
                                                            §§push(_loc3_.radius);
                                                            if(_loc4_ || param1)
                                                            {
                                                               §§push(§§pop() * Math.cos(this.§#p§ / (180 / Math.PI)));
                                                               if(_loc4_)
                                                               {
                                                                  addr212:
                                                                  §§push(§§pop() - §§pop());
                                                                  §§push(this.§&D§);
                                                                  if(!(_loc5_ && this))
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
                                                            if(_loc4_ || param1)
                                                            {
                                                               addr261:
                                                               if(this.§5!;§)
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§@N§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(this.§#!3§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr279:
                                                                           §§push(§§pop() / §§pop());
                                                                           §§push(this.§#p§);
                                                                        }
                                                                        §§pop().§?!5§(§§pop(),§§pop());
                                                                        §§goto(addr282);
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                   }
                                                   §§goto(addr282);
                                                }
                                                §§goto(addr261);
                                             }
                                             else
                                             {
                                                addr181:
                                                §§push(this.mSlingShotState);
                                                §§push(§6t§);
                                             }
                                             §§goto(addr282);
                                          }
                                       }
                                       §§goto(addr181);
                                    }
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr185);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr282);
                              }
                              §§goto(addr181);
                           }
                        }
                        else
                        {
                           addr72:
                        }
                        addr282:
                        return;
                     }
                     this.§4!+§(param1,param2);
                     §§goto(addr77);
                  }
                  this.§,L§ = 0;
                  if(_loc4_ || param2)
                  {
                     §§goto(addr66);
                  }
                  §§goto(addr72);
               }
               §§goto(addr66);
            }
         }
         §§goto(addr37);
      }
      
      public function §>f§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§0Y§ = null;
         if(_loc7_)
         {
            if(this.§"_§.length > 0)
            {
               if(_loc7_ || param2)
               {
                  _loc5_ = this.§"_§[this.§-!3§];
                  §§goto(addr61);
               }
               return;
            }
            addr61:
            if(!_loc5_)
            {
               if(_loc6_)
               {
                  §§goto(addr83);
               }
            }
            else
            {
               _loc5_.setPosition(param1,param2);
               if(_loc7_)
               {
                  this.§?!5§(param3,param4);
               }
               §§goto(addr83);
            }
            §§goto(addr83);
         }
         addr83:
      }
      
      protected function §?!5§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0Y§ = null;
         this.§5G§ = §&!1§;
         this.§1u§ = §?B§;
         if(!_loc5_)
         {
            if(this.§"_§.length > 0)
            {
               _loc3_ = this.§"_§[this.§-!3§];
            }
            if(!_loc3_)
            {
               return;
            }
            this.mDragging = false;
            if(_loc4_ || _loc3_)
            {
               this.§5!;§ = false;
               if(!_loc5_)
               {
                  this.§null§ = new Date().time;
                  if(!_loc5_)
                  {
                     this.§7C§.§[!7§(_loc3_,param1,param2);
                     addr92:
                     this.§,!1§(this.§-!3§,_loc3_.§&!"§ > 0);
                     if(!_loc5_)
                     {
                        this.§;s§();
                     }
                     §§goto(addr121);
                  }
                  if(this.§-!3§ >= this.§"_§.length)
                  {
                     if(!_loc4_)
                     {
                     }
                  }
                  else
                  {
                     this.§'o§(§=0§);
                  }
                  §§goto(addr121);
               }
               this.§'o§(§ in§);
               if(_loc4_)
               {
                  §§goto(addr121);
               }
               addr121:
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr92);
      }
      
      protected function §;s§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc3_)
         {
            §§push(§3!E§);
            §§push("BirdShot");
            if(!_loc2_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§<!,§(§§pop());
         }
      }
      
      public function §4!+§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§-!3§);
         if(!(_loc5_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc5_)
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
               if(_loc6_ || param1)
               {
                  if(§§pop() == §,z§)
                  {
                     if(_loc5_ && _loc3_)
                     {
                        continue loop0;
                     }
                     this.§"_§[_loc4_].update(param1,true,param2);
                     if(_loc6_ || param2)
                     {
                     }
                  }
                  else
                  {
                     this.§"_§[_loc4_].update(param1,false,param2);
                     if(_loc5_ && param1)
                     {
                        continue loop0;
                     }
                  }
                  _loc4_++;
                  if(_loc5_ && param1)
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
         var _loc1_:§0Y§ = null;
         var _loc2_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            this.mDragging = false;
            if(_loc6_)
            {
               addr34:
               this.§'!<§();
               if(_loc6_ || _loc3_)
               {
                  if(this.§?]§ >= this.§"_§.length)
                  {
                     if(_loc6_)
                     {
                        return false;
                     }
                  }
               }
            }
            _loc1_ = this.§"_§[this.§?]§];
            if(_loc6_ || _loc1_)
            {
               §§push(§3n§.§]B§(_loc1_.name).score);
               if(!_loc5_)
               {
                  §§push(int(§§pop()));
               }
               _loc2_ = §§pop();
               if(_loc6_)
               {
                  addr88:
                  §§push(this.§7C§);
                  §§push(_loc2_);
                  §§push(§0]§.§,!-§);
                  §§push(true);
                  §§push(_loc1_.x);
                  §§push(_loc1_.y);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(3);
                     if(_loc6_ || _loc2_)
                     {
                        addr114:
                        §§push(§§pop() - §§pop());
                        §§push(§2S§.§`!0§(_loc1_.name));
                     }
                     §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     if(!_loc5_)
                     {
                        addr131:
                        _loc1_.§-X§(-1,true);
                        if(!_loc5_)
                        {
                           var _loc3_:*;
                           §§push((_loc3_ = this).§?]§);
                           if(!(_loc5_ && _loc1_))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc4_:* = §§pop();
                           if(_loc6_)
                           {
                              _loc3_.§?]§ = _loc4_;
                           }
                        }
                     }
                     return true;
                  }
                  §§goto(addr114);
               }
               §§goto(addr131);
            }
            §§goto(addr88);
         }
         §§goto(addr34);
      }
      
      public function §,!%§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0Y§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§"_§)
         {
            if(_loc6_)
            {
               §§push(_loc1_);
               if(!(_loc5_ && _loc2_))
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
         §§push(this.§7h§);
         if(!_loc3_)
         {
            §§push(0);
            if(!(_loc3_ && this))
            {
               if(§§pop() >= §§pop())
               {
                  if(_loc4_)
                  {
                     addr50:
                     §§push(this);
                     §§push(this.§7h§);
                     if(!(_loc3_ && param1))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§7h§ = §§pop();
                     if(this.§7h§ <= 0)
                     {
                        if(_loc4_)
                        {
                           §§push(this.§7C§);
                           if(_loc4_)
                           {
                              §§push(§§pop().objects);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop().§2j§(this.§]!7§,this.§!!5§));
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc4_ || _loc3_)
                                    {
                                       _loc2_ = §§pop();
                                       §§goto(addr169);
                                    }
                                 }
                                 if(§§pop() < 0)
                                 {
                                    this.§8%§(0.1);
                                    if(!(_loc3_ && param1))
                                    {
                                       this.§7h§ = 0;
                                       addr114:
                                    }
                                    else
                                    {
                                       addr152:
                                    }
                                    §§goto(addr169);
                                 }
                                 else
                                 {
                                    §§push(this.§7C§);
                                    if(!_loc3_)
                                    {
                                       addr119:
                                       §§push(§§pop().objects);
                                       if(_loc4_)
                                       {
                                          addr122:
                                          §§push(_loc2_);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(§§pop().§!6§(§§pop()));
                                             if(_loc4_)
                                             {
                                                §§push(§§pop().§[&§);
                                                if(!_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§7h§ = -1;
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr152);
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   else
                                                   {
                                                      addr158:
                                                      §§push(this.§7C§.objects.§!6§(_loc2_).§0!@§());
                                                   }
                                                   §§goto(addr169);
                                                }
                                                if(§§pop())
                                                {
                                                   this.§7h§ = 2000;
                                                   if(_loc3_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   this.§7h§ = 500;
                                                }
                                                §§goto(addr169);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr158);
                                 }
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr152);
               }
               addr169:
               if(!_loc3_)
               {
                  §§push(_loc2_);
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function §!a§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         do
         {
            §§push(this.§7C§.objects.§2j§(this.§]!7§,this.§!!5§));
            if(!(_loc3_ && _loc2_))
            {
               §§push(int(§§pop()));
               if(!(_loc3_ && _loc1_))
               {
                  _loc2_ = §§pop();
                  if(!_loc3_)
                  {
                     §§push(_loc2_);
                     if(!(_loc3_ && _loc1_))
                     {
                        addr67:
                        §§push(-1);
                        if(!(_loc3_ && this))
                        {
                           if(§§pop() != §§pop())
                           {
                              if(_loc4_)
                              {
                                 addr118:
                                 this.§7h§ = -1;
                              }
                           }
                           else
                           {
                              this.§8%§(0.1);
                              if(!_loc3_)
                              {
                                 §§push(_loc1_);
                                 if(_loc4_)
                                 {
                                    addr97:
                                    §§push(§§pop());
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    addr105:
                                    §§push(§§pop() - 1);
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    _loc1_ = §§pop();
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr118);
               }
               §§goto(addr67);
            }
            §§goto(addr97);
         }
         while(§§pop() > §§pop());
         
         if(_loc4_ || _loc1_)
         {
            §§goto(addr118);
         }
         addr121:
      }
      
      public function §^-§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§0W§);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_ || this)
               {
                  §§push(-§§pop());
                  if(_loc3_)
                  {
                     §§goto(addr43);
                  }
                  §§goto(addr51);
               }
               addr43:
               §§pop().x = §§pop();
               if(!_loc4_)
               {
                  addr48:
                  §§push(this.§0W§);
                  §§push(param2);
                  if(_loc3_)
                  {
                     addr51:
                     §§push(-§§pop());
                  }
                  §§pop().y = §§pop();
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.mSlingShotState == §6t§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        addr67:
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(!(_loc2_ && param1))
                        {
                           §§goto(addr81);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr91);
                  }
                  addr81:
                  §§push(Boolean(§§pop()));
                  if(!_loc2_)
                  {
                     addr84:
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(true);
                           if(_loc2_)
                           {
                              §§goto(addr92);
                           }
                        }
                        else
                        {
                           addr91:
                           addr92:
                           return §§pop();
                           §§push(false);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr91);
                  }
                  return §§pop();
               }
            }
            §§goto(addr84);
         }
         §§goto(addr67);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.mSlingShotState == §6t§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     addr45:
                     §§push(this.§@N§);
                     §§push(this.§#!3§);
                     if(_loc2_ || this)
                     {
                        §§push(§§pop() * §6@§);
                     }
                     §§push(§§pop() > §§pop());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.mDragging = false;
            if(_loc3_ || this)
            {
               addr54:
               this.§'o§(§6t§);
            }
            var _loc1_:§0Y§ = this.§"_§[this.§-!3§];
            if(!_loc2_)
            {
               _loc1_.§-X§(§0r§.§<q§);
            }
            return;
         }
         §§goto(addr54);
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
         if(!_loc3_)
         {
            _loc1_.§-X§(§0r§.§ T§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§5!;§ = true;
         }
      }
      
      protected function §,!1§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0Y§ = null;
         if(_loc4_)
         {
            if(param1 < 0)
            {
               if(_loc4_)
               {
                  return;
               }
            }
         }
         if(this.§"_§[param1])
         {
            if(_loc4_)
            {
               _loc3_ = this.§"_§[param1];
               if(_loc4_)
               {
                  this.§72§.removeChild(_loc3_.sprite);
                  if(!(_loc5_ && param1))
                  {
                     if(param2)
                     {
                        if(!_loc5_)
                        {
                           this.§5[§(this.§"_§[param1]);
                           if(_loc5_)
                           {
                           }
                           §§goto(addr97);
                        }
                        addr97:
                        this.§"_§[param1] = null;
                        §§goto(addr102);
                     }
                     _loc3_.dispose();
                     if(!_loc4_)
                     {
                     }
                     addr102:
                     this.§"_§.splice(param1,1);
                     return;
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function §5[§(param1:§0Y§) : void
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
         do
         {
            if(_loc5_ >= _loc3_)
            {
               if(!(_loc9_ && param1))
               {
                  addr336:
                  this.§7C§.particles.§ t§(§2S§.§8x§,§5b§.§?D§,§2S§.§9!>§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,_loc2_ * 5);
                  addr320:
                  break;
               }
               break;
            }
            §§push(_loc4_);
            if(!(_loc9_ && this))
            {
               §§push(§§pop() + Math.random() * (720 / _loc3_));
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
                  §§push(Number(§§pop()));
                  if(!(_loc9_ && param1))
                  {
                     _loc4_ = §§pop();
                     if(!_loc9_)
                     {
                        §§push(180 / Math.PI);
                        if(_loc10_)
                        {
                           _loc6_ = §§pop() / §§pop();
                           §§push(param1.sprite);
                           if(!(_loc9_ && _loc2_))
                           {
                              §§push(-§§pop().width * §#;§.§`!2§);
                              if(!_loc9_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc10_ || _loc2_)
                                 {
                                    addr97:
                                    §§push(§§pop());
                                    if(!_loc9_)
                                    {
                                       addr100:
                                       _loc7_ = §§pop();
                                       addr101:
                                       §§push(Math.random() * -_loc7_);
                                       §§push(2);
                                       if(!_loc9_)
                                       {
                                          addr112:
                                          _loc7_ = Number(§§pop() + §§pop() * §§pop());
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             addr122:
                                             §§push(-param1.sprite.height);
                                             §§push(§#;§.§`!2§);
                                             if(_loc10_ || this)
                                             {
                                                §§push(Number(§§pop() * §§pop()));
                                                if(!_loc9_)
                                                {
                                                   §§push(_loc8_ = §§pop());
                                                   if(_loc10_)
                                                   {
                                                      addr141:
                                                      §§push(Math.random() * -_loc8_);
                                                      if(_loc10_ || param1)
                                                      {
                                                         addr155:
                                                         §§push(§§pop() + §§pop() * 2);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            addr173:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc8_ = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            §§push(this.§7C§);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop().particles);
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                                  §§push(§2S§.§4"§);
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     §§push(§5b§.§?D§);
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        §§push(§2S§.§9!>§);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(param1.x);
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr231:
                                                                                    §§push(param1.y);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc8_);
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          addr244:
                                                                                          §§push(1500);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push("");
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(§2S§.§#!2§(param1.name));
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() * Math.cos(_loc6_));
                                                                                                   }
                                                                                                   §§push(_loc2_);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(_loc10_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() * Math.sin(_loc6_));
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(5);
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() * 20);
                                                                                                   }
                                                                                                   §§pop().§ t§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr320);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr336);
                                                                                    }
                                                                                    §§goto(addr244);
                                                                                 }
                                                                                 §§goto(addr336);
                                                                              }
                                                                              §§goto(addr244);
                                                                           }
                                                                           §§goto(addr231);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr336);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr155);
                                          }
                                          break;
                                       }
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr100);
               }
               §§goto(addr112);
            }
            §§goto(addr97);
            §§goto(addr336);
         }
         while(_loc5_++, _loc10_ || _loc3_);
         
      }
      
      public function §>!"§(param1:§0Y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
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
            if(!(_loc6_ && this))
            {
               if(§§pop() >= this.§"_§.length - 1)
               {
                  if(!_loc6_)
                  {
                     addr192:
                     loop1:
                     while(true)
                     {
                        §§push(this.§72§);
                        while(§§pop().numChildren > 0)
                        {
                           §§push(this.§72§);
                           if(!(_loc6_ && this))
                           {
                              continue loop1;
                           }
                        }
                        §§push(0);
                        if(!(_loc6_ && _loc1_))
                        {
                           break loop0;
                        }
                        loop4:
                        while(§§pop() < this.§"_§.length)
                        {
                           _loc2_ = this.§"_§[_loc1_];
                           if(!_loc6_)
                           {
                              this.§72§.addChildAt(_loc2_.sprite,0);
                              if(_loc7_ || _loc3_)
                              {
                                 _loc1_++;
                              }
                           }
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                     }
                  }
                  return;
               }
               §§push(Number(Math.sqrt((this.§5!>§ - this.§"_§[_loc1_].x) * (this.§5!>§ - this.§"_§[_loc1_].x) + (this.§#!$§ - this.§"_§[_loc1_].y) * (this.§#!$§ - this.§"_§[_loc1_].y))));
               if(_loc7_)
               {
                  _loc3_ = §§pop();
                  §§push(Number(Math.sqrt((this.§5!>§ - this.§"_§[_loc1_ + 1].x) * (this.§5!>§ - this.§"_§[_loc1_ + 1].x) + (this.§#!$§ - this.§"_§[_loc1_ + 1].y) * (this.§#!$§ - this.§"_§[_loc1_ + 1].y))));
                  if(_loc7_)
                  {
                     addr130:
                     §§push(§§pop());
                     if(_loc7_)
                     {
                        _loc4_ = §§pop();
                        addr134:
                        §§push(_loc3_);
                     }
                     if(§§pop() >= §§pop())
                     {
                        continue;
                     }
                     if(_loc7_ || _loc1_)
                     {
                        _loc5_ = this.§"_§[_loc1_];
                        if(!_loc6_)
                        {
                           this.§"_§.splice(_loc1_,1);
                           if(!_loc6_)
                           {
                              this.§"_§.splice(_loc1_ + 1,0,_loc5_);
                              if(!_loc7_)
                              {
                                 continue;
                              }
                           }
                           _loc1_ = int(Math.max(-1,_loc1_ - 2));
                        }
                        continue;
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr134);
               }
               §§goto(addr130);
               §§goto(addr192);
            }
            break;
         }
         _loc1_ = §§pop();
         §§goto(addr253);
      }
      
      public function §<"§(param1:Number, param2:Number) : §0Y§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(_loc3_ < this.§"_§.length)
         {
            if(this.§"_§[_loc3_])
            {
               if(_loc4_)
               {
                  continue;
               }
               if(this.§"_§[_loc3_].isInCoordinates(param1,param2))
               {
                  if(_loc5_)
                  {
                     return this.§"_§[_loc3_];
                  }
                  continue;
               }
            }
            _loc3_++;
            if(!_loc5_)
            {
               break;
            }
         }
         return null;
      }
      
      public function §"!8§(param1:Number, param2:Number) : §3=§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               §§push(this.§5!>§);
               if(!_loc3_)
               {
                  §§push(this.§#!3§);
                  if(!_loc3_)
                  {
                     §§push(4);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() / §§pop());
                        if(!(_loc3_ && param2))
                        {
                           §§push(§§pop() >= §§pop() - §§pop());
                           §§push(§§pop() >= §§pop() - §§pop());
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr75:
                                    §§push(param1);
                                    if(_loc4_)
                                    {
                                       addr78:
                                       §§push(this.§5!>§);
                                       §§push(this.§#!3§);
                                       if(_loc4_)
                                       {
                                          addr84:
                                          §§push(4);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!_loc3_)
                                             {
                                                addr92:
                                                §§push(§§pop() <= §§pop() + §§pop());
                                                §§push(§§pop() <= §§pop() + §§pop());
                                                if(!_loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      if(_loc4_)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc3_)
                                                         {
                                                            addr102:
                                                            §§push(this.§#!$§);
                                                            §§push(this.§#!3§);
                                                            if(_loc4_ || param2)
                                                            {
                                                               §§goto(addr125);
                                                            }
                                                            addr125:
                                                            §§push(§§pop() - §§pop() / 4);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                               if(_loc4_)
                                                               {
                                                                  addr131:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           §§goto(addr148);
                                                                        }
                                                                        return this;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                         addr148:
                                                         if(this.§#!$§ <= this.§!!5§)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr153);
                                                            }
                                                         }
                                                         §§goto(addr153);
                                                      }
                                                      addr153:
                                                      return null;
                                                   }
                                                }
                                                §§goto(addr131);
                                             }
                                          }
                                       }
                                       §§goto(addr125);
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr131);
                        }
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr84);
               }
               §§goto(addr102);
            }
            §§goto(addr78);
         }
         §§goto(addr75);
      }
      
      public function §[0§(param1:§9R§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§0Y§ = null;
         var _loc4_:§?!3§ = null;
         if(_loc5_)
         {
            param1.§2^§ = this.§5!>§;
            if(_loc5_)
            {
               addr30:
               param1.§7!H§ = this.§#!$§;
            }
            var _loc2_:* = Number(0);
            while(_loc2_ < this.§"_§.length)
            {
               _loc3_ = this.§"_§[_loc2_];
               (_loc4_ = new §?!3§()).x = _loc3_.x;
               if(!(_loc6_ && this))
               {
                  _loc4_.y = _loc3_.y;
                  if(!_loc6_)
                  {
                     _loc4_.id = _loc3_.name;
                     if(_loc5_ || this)
                     {
                     }
                     addr107:
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc5_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
                  param1.§;$§(_loc4_);
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
               }
               §§goto(addr107);
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function §,g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§"_§.length > 0)
         {
            this.§>!"§(this.§"_§[0]);
            if(!_loc2_)
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
            if(_loc4_ >= this.§"_§.length)
            {
               if(!(_loc5_ && param1))
               {
                  addr83:
                  §§push(this.§5!>§ > param1.x);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(!(_loc5_ && param2))
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              §§pop();
                              addr107:
                              §§push(this.§5!>§);
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr145);
                           }
                           addr130:
                           §§pop();
                           if(_loc6_)
                           {
                              addr143:
                              addr145:
                              §§push(§§pop() > param1.y);
                              if(_loc6_)
                              {
                                 addr150:
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(_loc6_)
                                    {
                                       §§goto(addr160);
                                    }
                                    §§goto(addr168);
                                 }
                              }
                              addr160:
                              if(this.§#!$§ < param2.y)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    addr168:
                                    _loc3_.push(this);
                                 }
                              }
                              return _loc3_;
                              §§push(this.§#!$§);
                           }
                           §§goto(addr168);
                        }
                        addr114:
                        §§push(§§pop());
                        if(!(_loc5_ && param1))
                        {
                           if(§§pop())
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 §§goto(addr130);
                              }
                           }
                           §§goto(addr150);
                        }
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr130);
               }
               §§goto(addr143);
            }
            else
            {
               if(!this.§"_§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  continue;
               }
               _loc3_.push(this.§"_§[_loc4_]);
               if(_loc6_)
               {
                  continue;
               }
            }
            §§goto(addr107);
         }
         §§goto(addr114);
         §§push(§§pop() < param2.x);
      }
      
      public function §8C§() : Array
      {
         return [this.§^!%§,this.§6+§];
      }
      
      public function §1Y§(param1:String, param2:Number, param3:Number) : §0Y§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§0Y§ = this.§#!%§(param1,param2,param3);
         if(_loc6_ || param3)
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
