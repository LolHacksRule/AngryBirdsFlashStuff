package §8u§
{
   import §,!C§.§6m§;
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§91§;
   import §5`§.§%F§;
   import §5`§.§+R§;
   import §5`§.§+q§;
   import §7!=§.Texture;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §44§
   {
      
      public static const §;<§:Number = 1000;
      
      public static const §8g§:Number = 500;
      
      private static var §'h§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §;<§ = 1000;
            if(_loc1_)
            {
               §8g§ = 500;
               if(_loc1_)
               {
                  addr43:
                  §'h§ = null;
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      private var §&V§:§0r§;
      
      public var §5H§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §try§:Number;
      
      public var §&!C§:Number;
      
      public var § ,§:int = -1;
      
      private var §&r§:String;
      
      private var §-!C§:§+R§;
      
      private var §>_§:§+R§;
      
      private var §^j§:§4K§;
      
      private var §>Q§:Number = 0;
      
      private var §3W§:Number = 0;
      
      public var §<8§:int = -1;
      
      private var §8$§:int = -1;
      
      private var §-A§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §;!-§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §]m§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §08§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §32§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §7`§:String = "fly";
      
      public var §@l§:String = "fly_yell";
      
      public var § !<§:GlowFilter;
      
      private var §40§:Vector.<§91§>;
      
      private var §9O§:§+R§;
      
      private var §62§:Sprite = null;
      
      private var §33§:§!E§;
      
      public function §44§(param1:§0r§, param2:Sprite, param3:§!E§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            if(!(_loc5_ && param1))
            {
               this.§33§ = param3;
               §§goto(addr40);
            }
            §§goto(addr50);
         }
         addr40:
         this.§&V§ = param1;
         this.§&r§ = this.§&V§.§>!"§;
         if(_loc4_)
         {
            addr50:
            this.§40§ = new Vector.<§91§>();
         }
         this.§62§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§91§ = null;
         if(_loc3_)
         {
            this.§,x§();
            if(!(_loc2_ && this))
            {
               §§goto(addr51);
            }
            §§goto(addr54);
         }
         addr51:
         if(this.§40§)
         {
            addr54:
            while(this.§40§.length > 0)
            {
               _loc1_ = this.§40§.pop();
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.dispose();
               }
            }
            if(_loc3_)
            {
               this.§40§ = null;
            }
         }
      }
      
      public function §+!>§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.mW = param3;
            if(_loc5_)
            {
               this.mH = param4;
               if(!_loc6_)
               {
                  this.§ ,§ = param1;
                  if(_loc6_)
                  {
                  }
                  §§goto(addr68);
               }
               this.§&!C§ = param2;
               if(_loc5_ || param3)
               {
               }
               §§goto(addr68);
            }
         }
         addr68:
         this.§4!+§();
      }
      
      public function §6x§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(param1)
         {
            if(!(_loc2_ && param1))
            {
               this.§try§ = 1;
               return;
            }
            addr72:
            this.§try§ = 1 / this.§try§;
            if(_loc3_ || param1)
            {
               addr85:
               this.§try§ = Math.min(11,this.§try§);
            }
         }
         else
         {
            §§push(this);
            §§push(this.mW);
            if(!_loc2_)
            {
               §§push(§§pop() / this.mH);
            }
            §§pop().§try§ = §§pop();
            if(!_loc2_)
            {
               if(this.§try§ < 1)
               {
                  §§goto(addr72);
               }
               §§goto(addr85);
            }
         }
      }
      
      public function §#!5§(param1:§+q§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§%F§ = null;
         var _loc3_:Texture = null;
         if(_loc6_)
         {
            §§push(this.§&V§.isGround());
            if(_loc6_ || this)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr57:
                     this.§>_§ = this.§-!C§;
                     var _loc4_:* = Number(1);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(this.§>_§);
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              addr78:
                              _loc2_ = this.§>_§.getFrame(0);
                              addr76:
                              if(_loc6_)
                              {
                                 §§push(_loc2_.scale);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc4_ = §§pop();
                              }
                              _loc3_ = _loc2_.texture;
                           }
                           else
                           {
                              _loc3_ = this.§33§.textureManager.§9!?§();
                           }
                           this.§^j§ = new §4K§(_loc3_);
                           if(_loc2_)
                           {
                              §§push(this.§^j§);
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(_loc2_.pivotX);
                                 if(!_loc5_)
                                 {
                                    §§push(-§§pop());
                                    if(_loc6_)
                                    {
                                       §§pop().x = §§pop();
                                       if(!_loc5_)
                                       {
                                          §§push(this.§^j§);
                                          if(_loc6_)
                                          {
                                             addr148:
                                             §§push(-_loc2_.pivotY);
                                             if(_loc6_)
                                             {
                                                §§pop().y = §§pop();
                                             }
                                             else
                                             {
                                                addr175:
                                                §§push(2);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr186:
                                                      §§pop().x = §§pop();
                                                      §§goto(addr214);
                                                   }
                                                   addr214:
                                                   §§goto(addr213);
                                                }
                                                §§pop().y = §§pop() / §§pop();
                                             }
                                             §§push(this.§^j§);
                                             if(!(_loc5_ && param1))
                                             {
                                                addr207:
                                                §§push(_loc4_);
                                                if(!_loc5_)
                                                {
                                                   §§pop().scaleX = §§pop();
                                                   addr213:
                                                   §§push(this.§^j§);
                                                   if(_loc6_)
                                                   {
                                                      addr193:
                                                      §§push(-this.§^j§.height);
                                                      §§push(2);
                                                   }
                                                   §§pop().scaleY = _loc4_;
                                                   if(_loc6_)
                                                   {
                                                      this.mW = this.§^j§.width / 2;
                                                      if(_loc6_)
                                                      {
                                                         this.mH = this.§^j§.height / 2;
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   this.§62§.addChild(this.§^j§);
                                                   addr255:
                                                   return true;
                                                   §§push(this.§^j§);
                                                }
                                             }
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr207);
                           }
                           else
                           {
                              §§push(this.§^j§);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(this.§^j§);
                                 if(!_loc5_)
                                 {
                                    §§push(-§§pop().width);
                                    if(_loc6_ || param1)
                                    {
                                       §§goto(addr175);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr193);
                              }
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr76);
                  }
               }
               else
               {
                  this.§9O§ = param1.§,!;§("SPARKLES");
                  if(_loc6_)
                  {
                     this.§-!C§ = param1.§,!;§(this.§&r§);
                     if(!_loc6_)
                     {
                     }
                  }
                  §§goto(addr57);
               }
               §§goto(addr57);
            }
            return §§pop();
         }
         §§goto(addr57);
      }
      
      public function §17§(param1:§6m§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§#!+§);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               §§push(§6m§.§#a§);
               if(!(_loc6_ && this))
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           addr114:
                           §§push(0);
                           if(!(_loc6_ && _loc3_))
                           {
                              addr132:
                           }
                           else
                           {
                              addr147:
                           }
                        }
                        else
                        {
                           addr139:
                           §§push(1);
                           if(!(_loc6_ && _loc2_))
                           {
                              §§goto(addr147);
                           }
                        }
                     }
                     else
                     {
                        §§push(§6m§.§8-§);
                        if(!_loc6_)
                        {
                           addr138:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr139);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr138);
               }
               §§goto(addr132);
            }
            §§goto(addr114);
         }
         addr153:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1.§&!-§();
               _loc3_ = _loc2_[0];
               if(_loc5_ || this)
               {
                  §§push(this);
                  §§push(_loc3_.x);
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(§§pop() / §!E§.§#N§);
                  }
                  §§pop().§>Q§ = §§pop();
                  if(!(_loc6_ && param1))
                  {
                     §§push(this);
                     §§push(_loc3_.y);
                     if(!_loc6_)
                     {
                        §§push(§§pop() / §!E§.§#N§);
                     }
                     §§pop().§3W§ = §§pop();
                     if(!_loc5_)
                     {
                     }
                     break;
                  }
                  break;
               }
               addr154:
               this.§'q§();
               break;
            case 1:
               §§goto(addr154);
            default:
               §§goto(addr154);
         }
      }
      
      public function §-<§() : Array
      {
         return §+x§.§-<§(null,this.§&V§.§%z§());
      }
      
      public function §?B§() : Array
      {
         return §+x§.§?B§(null,this.§&V§.§%z§());
      }
      
      public function §"!G§() : Array
      {
         return §+x§.§"!G§(null);
      }
      
      public function §4!+§() : void
      {
      }
      
      public function §`u§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§62§.scaleX = this.§62§.scaleY = param1;
         }
      }
      
      public function §'q§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§%F§ = null;
         if(!this.§-!C§)
         {
            return;
         }
         if(this.§]m§)
         {
            this.§-A§ = 1;
         }
         else
         {
            §§push(this.§&V§);
            if(_loc4_)
            {
               §§push(§§pop().getSpecialAnimationProgress());
               if(!_loc5_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     §§push(§§pop() >= §§pop());
                     §§push(§§pop() >= §§pop());
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc4_ || _loc1_)
                           {
                              §§push(this.§-!C§);
                              §§push(this.§;!-§);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop().getSubAnimation(§§pop()));
                                 if(!_loc5_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr80:
                                       if(§§pop())
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             this.§>_§ = this.§-!C§.getSubAnimation(this.§;!-§);
                                             if(_loc4_)
                                             {
                                                this.§-A§ = this.§>_§.getFrameCount() * this.§&V§.getSpecialAnimationProgress();
                                                if(_loc4_)
                                                {
                                                   §§push(this.§-A§ == this.§>_§.getFrameCount() - 1);
                                                   if(this.§-A§ == this.§>_§.getFrameCount() - 1)
                                                   {
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         §§pop();
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            addr134:
                                                            §§push(this.§&V§.getSpecialAnimationTimeLeft());
                                                            if(_loc4_)
                                                            {
                                                               §§push(100);
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  addr145:
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr148:
                                                                     if(§§pop())
                                                                     {
                                                                        var _loc2_:*;
                                                                        §§push((_loc2_ = this).§-A§);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        var _loc3_:* = §§pop();
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           _loc2_.§-A§ = _loc3_;
                                                                        }
                                                                        if(!(_loc4_ || _loc1_))
                                                                        {
                                                                           addr211:
                                                                           §§push(this.§-!C§);
                                                                           §§push(this.§;!-§);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop().getSubAnimation(§§pop()));
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr226:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       this.§>_§ = this.§-!C§.getSubAnimation(this.§;!-§);
                                                                                       this.mIsSpecial = true;
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          addr506:
                                                                                          §§push(this.§>_§);
                                                                                          if(!(_loc5_ && _loc1_))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr518:
                                                                                                _loc1_ = this.§>_§.getFrame(this.§-A§);
                                                                                                if(!(_loc5_ && _loc1_))
                                                                                                {
                                                                                                   §§push(this.§^j§);
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               addr556:
                                                                                                               §§pop();
                                                                                                               §§goto(addr678);
                                                                                                            }
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc1_))
                                                                                                            {
                                                                                                               §§push(this.§^j§);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§pop().texture = _loc1_.texture;
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(this.§^j§);
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(_loc1_.pivotX);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§push(this.§>Q§);
                                                                                                                              if(!(_loc5_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc4_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr616);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr631);
                                                                                                                           }
                                                                                                                           addr616:
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           §§push(this.§^j§);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              addr623:
                                                                                                                              §§push(-_loc1_.pivotY);
                                                                                                                              if(!(_loc5_ && _loc1_))
                                                                                                                              {
                                                                                                                                 addr631:
                                                                                                                                 §§push(§§pop() - this.§3W§);
                                                                                                                                 if(!(_loc5_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    addr651:
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    §§push(this.§^j§);
                                                                                                                                    if(!(_loc5_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr661);
                                                                                                                                    }
                                                                                                                                    §§goto(addr675);
                                                                                                                                 }
                                                                                                                                 §§goto(addr665);
                                                                                                                              }
                                                                                                                              §§goto(addr651);
                                                                                                                           }
                                                                                                                           addr661:
                                                                                                                           §§push(_loc1_.scale);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              addr665:
                                                                                                                              §§pop().scaleX = §§pop();
                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr675:
                                                                                                                                 §§push(this.§^j§);
                                                                                                                                 §§push(_loc1_.scale);
                                                                                                                              }
                                                                                                                              §§goto(addr678);
                                                                                                                           }
                                                                                                                           §§pop().scaleY = §§pop();
                                                                                                                           §§goto(addr678);
                                                                                                                        }
                                                                                                                        §§goto(addr623);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr678);
                                                                                                               }
                                                                                                               §§goto(addr661);
                                                                                                            }
                                                                                                            §§goto(addr616);
                                                                                                         }
                                                                                                         addr678:
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(Boolean(_loc1_));
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr556);
                                                                                                   }
                                                                                                   §§goto(addr675);
                                                                                                }
                                                                                                §§goto(addr616);
                                                                                             }
                                                                                             §§goto(addr556);
                                                                                          }
                                                                                          §§goto(addr518);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr349:
                                                                                    }
                                                                                    §§goto(addr506);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.mTryToScream);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr251:
                                                                                       §§push(0);
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          addr259:
                                                                                          §§push(§§pop() > §§pop());
                                                                                          if(!(_loc5_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                addr275:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      addr283:
                                                                                                      §§pop();
                                                                                                      §§push(this.mTryToFly);
                                                                                                      if(_loc4_ || _loc1_)
                                                                                                      {
                                                                                                         addr295:
                                                                                                         §§push(§§pop() > 0);
                                                                                                         if(§§pop() > 0)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr298:
                                                                                                            §§push(this.§-!C§);
                                                                                                            §§push(this.§@l§);
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               addr309:
                                                                                                               §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                               {
                                                                                                                  addr318:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     this.§>_§ = this.§-!C§.getSubAnimation(this.§@l§);
                                                                                                                     addr336:
                                                                                                                     this.mIsScreaming = true;
                                                                                                                     this.mIsFlying = true;
                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§goto(addr349);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr452:
                                                                                                                        this.§>_§ = this.§-!C§.getSubAnimation(this.§32§);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           this.mIsBlinking = true;
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              addr466:
                                                                                                                              §§goto(addr506);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr496:
                                                                                                                           this.mIsFlying = true;
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§goto(addr506);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr518);
                                                                                                                     addr319:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(this.mTryToScream);
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr373:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr374:
                                                                                                                                    §§pop();
                                                                                                                                    if(!(_loc5_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       §§push(this.§-!C§);
                                                                                                                                       if(_loc4_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(this.§08§);
                                                                                                                                          if(!(_loc5_ && this))
                                                                                                                                          {
                                                                                                                                             addr400:
                                                                                                                                             §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                             if(!(_loc5_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr409:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   this.§>_§ = this.§-!C§.getSubAnimation(this.§08§);
                                                                                                                                                   this.mIsScreaming = true;
                                                                                                                                                   addr420:
                                                                                                                                                   §§goto(addr506);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr424:
                                                                                                                                                   §§push(this.mTryToBlink > 0);
                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr432:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr434:
                                                                                                                                                         §§pop();
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§-!C§);
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr441:
                                                                                                                                                               §§push(this.§32§);
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  addr445:
                                                                                                                                                                  §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr449:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr452);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr466);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.mTryToFly);
                                                                                                                                                                        if(_loc4_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr477:
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           if(Boolean(§§pop()))
                                                                                                                                                                           {
                                                                                                                                                                              addr488:
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr484:
                                                                                                                                                                                 §§push(this.§-!C§);
                                                                                                                                                                                 §§push(this.§7`§);
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr489:
                                                                                                                                                                                 this.§>_§ = this.§-!C§.getSubAnimation(this.§7`§);
                                                                                                                                                                                 §§goto(addr496);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 this.§>_§ = this.§-!C§;
                                                                                                                                                                                 §§goto(addr506);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr488);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr477);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr487:
                                                                                                                                                                  §§goto(addr488);
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr487);
                                                                                                                                                               §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr484);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr489);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr449);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr487);
                                                                                                                                          }
                                                                                                                                          §§goto(addr445);
                                                                                                                                       }
                                                                                                                                       §§goto(addr441);
                                                                                                                                    }
                                                                                                                                    §§goto(addr489);
                                                                                                                                 }
                                                                                                                                 §§goto(addr409);
                                                                                                                              }
                                                                                                                              §§goto(addr477);
                                                                                                                           }
                                                                                                                           §§goto(addr434);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr424);
                                                                                                                  }
                                                                                                                  §§goto(addr506);
                                                                                                               }
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                            §§goto(addr400);
                                                                                                         }
                                                                                                         §§goto(addr318);
                                                                                                      }
                                                                                                      §§goto(addr488);
                                                                                                   }
                                                                                                   §§goto(addr432);
                                                                                                }
                                                                                                §§goto(addr295);
                                                                                             }
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                          §§goto(addr283);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr424);
                                                                                 }
                                                                              }
                                                                              §§goto(addr449);
                                                                           }
                                                                           §§goto(addr309);
                                                                        }
                                                                     }
                                                                     §§goto(addr506);
                                                                  }
                                                                  §§goto(addr477);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr420);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr148);
                                                }
                                                §§goto(addr336);
                                             }
                                             §§goto(addr298);
                                          }
                                          §§goto(addr319);
                                       }
                                       else
                                       {
                                          §§push(this.mTryToSpecial);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(§§pop());
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         §§goto(addr211);
                                                      }
                                                      §§goto(addr349);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr275);
                                             }
                                             §§goto(addr318);
                                          }
                                       }
                                       §§goto(addr477);
                                    }
                                    §§goto(addr374);
                                 }
                              }
                              §§goto(addr445);
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr432);
                  }
                  §§goto(addr145);
               }
               §§goto(addr251);
            }
            §§goto(addr134);
         }
         §§goto(addr506);
      }
      
      public function §-l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§62§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§<8§);
            if(_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr37:
                     this.§>!C§();
                  }
               }
               §§push(0);
            }
            var _loc1_:* = §§pop();
            if(_loc3_)
            {
               §§push(1);
               if(!_loc2_)
               {
                  §§push(this.§&V§.§@^§);
                  if(_loc3_)
                  {
                     §§push(§§pop() / this.§&V§.§%!J§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() * this.§<8§);
                  }
                  §§push(int(§§pop()));
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_ = §§pop();
                     if(!(_loc2_ && this))
                     {
                        addr103:
                        if(_loc1_ != this.§8$§)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              this.§8$§ = _loc1_;
                              if(_loc3_ || _loc1_)
                              {
                                 this.§-A§ = this.§8$§;
                                 if(!_loc3_)
                                 {
                                 }
                                 §§goto(addr131);
                              }
                           }
                        }
                        §§goto(addr131);
                     }
                     this.§'q§();
                     §§goto(addr131);
                  }
               }
               §§goto(addr103);
            }
            addr131:
            return;
         }
         §§goto(addr37);
      }
      
      public function §>!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§-!C§)
            {
               if(!_loc1_)
               {
                  this.§<8§ = this.§-!C§.getFrameCount();
               }
            }
         }
      }
      
      public function §&p§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§ !<§ = new GlowFilter();
            if(!(_loc4_ && param3))
            {
               this.§ !<§.blurX = param2;
               if(_loc5_ || this)
               {
                  addr66:
                  this.§ !<§.blurY = param3;
                  if(_loc5_ || param2)
                  {
                  }
                  §§goto(addr81);
               }
               this.§ !<§.color = param1;
            }
            addr81:
            return;
         }
         §§goto(addr66);
      }
      
      public function §,x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§ !<§ = null;
         }
      }
      
      public function §,9§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§&V§.§;?§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§!F§(_loc2_);
            if(!(_loc4_ && this))
            {
               _loc2_++;
               if(_loc4_ && _loc3_)
               {
                  break;
               }
            }
         }
      }
      
      public function §,l§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§40§.length - 1;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() >= 0)
            {
               this.§40§[_loc2_].updateLifeTime(param1);
               if(!_loc3_)
               {
                  if(this.§40§[_loc2_].lifeTime < 0)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        addr67:
                        this.§!F§(_loc2_);
                        if(_loc3_ && this)
                        {
                           break;
                        }
                     }
                     break;
                  }
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                  }
                  continue;
               }
               §§goto(addr67);
            }
            addr94:
            return;
         }
      }
      
      private function §!F§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            if(!this.§9O§)
            {
               if(!(_loc6_ && _loc2_))
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:int = 0;
            if(_loc7_ || _loc3_)
            {
               if(Math.random() < 0.5)
               {
                  if(_loc7_ || this)
                  {
                     _loc2_ = 1;
                  }
               }
            }
            var _loc3_:§%F§ = this.§9O§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§91§ = null;
            if(!_loc6_)
            {
               if(param1 < this.§40§.length)
               {
                  addr83:
                  (_loc5_ = this.§40§[param1]).§%L§(_loc4_);
                  if(!_loc6_)
                  {
                     _loc5_.§"A§(_loc3_.texture);
                     if(_loc7_ || _loc3_)
                     {
                        addr141:
                        §§push(_loc5_.image);
                        if(_loc7_)
                        {
                           §§push(_loc3_.pivotX);
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(-§§pop());
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(this.§^j§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop().width / 2);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc7_)
                                       {
                                          §§push(Math.random() * this.§^j§.width);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             addr187:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc6_)
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc7_)
                                                {
                                                   addr207:
                                                   §§push(_loc5_.image);
                                                   §§push(-_loc3_.pivotY);
                                                   if(_loc7_)
                                                   {
                                                      addr210:
                                                      addr212:
                                                      §§push(this.§^j§.height / 2);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§goto(addr232);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr232);
                                                }
                                                addr232:
                                                §§goto(addr222);
                                             }
                                             §§goto(addr210);
                                          }
                                          addr222:
                                          §§push(§§pop() - §§pop());
                                          if(_loc7_)
                                          {
                                             addr225:
                                             §§push(Math.random() * this.§^j§.height);
                                          }
                                          §§pop().y = §§pop();
                                          return;
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr225);
                           }
                        }
                        §§goto(addr207);
                        addr115:
                     }
                     §§goto(addr232);
                  }
                  §§goto(addr115);
               }
               else
               {
                  _loc5_ = new §91§(_loc3_.texture,_loc4_);
                  if(_loc7_ || _loc3_)
                  {
                     this.§40§.push(_loc5_);
                     if(!_loc6_)
                     {
                        this.§62§.addChild(_loc5_.image);
                     }
                  }
               }
               §§goto(addr141);
            }
            §§goto(addr83);
         }
         addr34:
      }
      
      public function §!`§() : §4K§
      {
         return this.§^j§;
      }
   }
}
