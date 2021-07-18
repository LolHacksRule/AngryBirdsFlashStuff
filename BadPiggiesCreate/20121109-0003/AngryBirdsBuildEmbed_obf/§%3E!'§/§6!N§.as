package §>!'§
{
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import §<!<§.§1u§;
   import §<!<§.§7E§;
   import §<!B§.b2Vec2;
   import §=U§.§&!U§;
   import §=U§.§;P§;
   import §=U§.§>?§;
   import §?!6§.§"!0§;
   import flash.filters.GlowFilter;
   
   public class §6!N§
   {
      
      public static const §0+§:Number = 1000;
      
      public static const §>!7§:Number = 500;
      
      private static var §9!U§:Array = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §0+§ = 1000;
            if(!(_loc1_ && _loc2_))
            {
               §>!7§ = 500;
               if(!_loc1_)
               {
                  addr49:
                  §9!U§ = null;
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      private var §^!d§:§<!3§;
      
      public var §-!5§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §2F§:Number;
      
      public var §+h§:Number;
      
      public var §];§:int = -1;
      
      private var §2!j§:String;
      
      private var §#!M§:§;P§;
      
      private var §@F§:§;P§;
      
      private var §,!^§:§7!J§;
      
      private var §+!g§:Number = 0;
      
      private var §<§:Number = 0;
      
      public var §6!=§:int = -1;
      
      private var §4u§:int = -1;
      
      private var §"S§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §1V§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §+!O§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §extends§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §6v§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §,!M§:String = "fly";
      
      public var §&S§:String = "fly_yell";
      
      public var §4!3§:GlowFilter;
      
      private var §"!1§:Vector.<§1u§>;
      
      private var §4!"§:§;P§;
      
      private var §>E§:Sprite = null;
      
      private var §-n§:§7E§;
      
      public function §6!N§(param1:§<!3§, param2:Sprite, param3:§7E§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         this.§-n§ = param3;
         this.§^!d§ = param1;
         this.§2!j§ = this.§^!d§.§>p§;
         if(_loc4_)
         {
            this.§"!1§ = new Vector.<§1u§>();
            this.§>E§ = param2;
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§1u§ = null;
         if(_loc3_)
         {
            this.§8d§();
            if(!_loc2_)
            {
               §§goto(addr46);
            }
            §§goto(addr49);
         }
         addr46:
         if(this.§"!1§)
         {
            addr49:
            while(this.§"!1§.length > 0)
            {
               _loc1_ = this.§"!1§.pop();
               if(_loc3_)
               {
                  _loc1_.dispose();
               }
            }
            if(_loc3_ || this)
            {
               this.§"!1§ = null;
            }
         }
      }
      
      public function §-!,§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.mW = param3;
            if(_loc5_)
            {
               this.mH = param4;
               if(!_loc6_)
               {
                  §§goto(addr53);
               }
               §§goto(addr63);
            }
            addr53:
            this.§];§ = param1;
            if(!(_loc6_ && this))
            {
               addr63:
               this.§+h§ = param2;
               if(!_loc5_)
               {
               }
               §§goto(addr70);
            }
            this.§,!+§();
            addr70:
            return;
         }
         §§goto(addr63);
      }
      
      public function §in §(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1)
         {
            this.§2F§ = 1;
            if(!_loc3_)
            {
               return;
            }
         }
         else
         {
            §§push(this);
            §§push(this.mW);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop() / this.mH);
            }
            §§pop().§2F§ = §§pop();
            if(_loc2_)
            {
               if(this.§2F§ < 1)
               {
                  this.§2F§ = 1 / this.§2F§;
               }
               this.§2F§ = Math.min(11,this.§2F§);
            }
         }
      }
      
      public function §3!F§(param1:§&!U§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§>?§ = null;
         var _loc3_:Texture = null;
         if(_loc5_ || param1)
         {
            §§push(this.§^!d§.isGround());
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§goto(addr38);
                  }
               }
               else
               {
                  this.§4!"§ = param1.§`!!§("SPARKLES");
                  if(!(_loc6_ && _loc2_))
                  {
                     addr53:
                     this.§#!M§ = param1.§`!!§(this.§2!j§);
                     if(_loc5_ || param1)
                     {
                     }
                     addr70:
                     var _loc4_:* = Number(1);
                     if(!_loc6_)
                     {
                        §§push(this.§@F§);
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              addr82:
                              _loc2_ = this.§@F§.getFrame(0);
                              addr80:
                              if(_loc5_)
                              {
                                 §§push(_loc2_.scale);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc4_ = §§pop();
                              }
                              _loc3_ = _loc2_.texture;
                           }
                           else
                           {
                              _loc3_ = this.§-n§.textureManager.§8r§();
                           }
                           this.§,!^§ = new §7!J§(_loc3_);
                           if(!_loc6_)
                           {
                              if(_loc2_)
                              {
                                 §§push(this.§,!^§);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(_loc2_.pivotX);
                                    if(_loc5_)
                                    {
                                       §§pop().x = -§§pop();
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(this.§,!^§);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr157);
                                          }
                                          else
                                          {
                                             addr171:
                                             §§push(this.§,!^§);
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§goto(addr182);
                                                §§push(-§§pop().width);
                                             }
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr214);
                                    }
                                    addr157:
                                    §§push(-_loc2_.pivotY);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§pop().y = §§pop();
                                       addr214:
                                       §§push(this.§,!^§);
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr223:
                                          §§push(_loc4_);
                                          if(_loc5_)
                                          {
                                             addr226:
                                             §§pop().scaleX = §§pop();
                                             addr229:
                                             §§push(this.§,!^§);
                                             §§push(_loc4_);
                                          }
                                       }
                                       §§goto(addr229);
                                    }
                                    else
                                    {
                                       addr182:
                                       §§push(2);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§pop().x = §§pop();
                                             §§push(this.§,!^§);
                                             if(_loc5_)
                                             {
                                                §§goto(addr203);
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr226);
                                       }
                                       addr203:
                                       addr200:
                                       §§push(-this.§,!^§.height / 2);
                                       if(!_loc6_)
                                       {
                                          §§pop().y = §§pop();
                                          if(!(_loc6_ && param1))
                                          {
                                             §§goto(addr214);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr230);
                                    }
                                    if(_loc5_ || param1)
                                    {
                                       this.mH = this.§,!^§.height / 2;
                                       if(_loc5_)
                                       {
                                          this.§>E§.addChild(this.§,!^§);
                                       }
                                    }
                                    return true;
                                 }
                              }
                              else
                              {
                                 §§push(this.§,!^§);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr171);
                                 }
                              }
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr80);
                  }
                  this.§@F§ = this.§#!M§;
               }
               §§goto(addr70);
            }
            addr38:
            return false;
         }
         §§goto(addr53);
      }
      
      public function §&u§(param1:§"!0§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§71§);
         if(_loc6_ || _loc3_)
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(§"!0§.§3I§);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                           }
                        }
                        else
                        {
                           addr125:
                           §§push(1);
                           if(_loc6_ || _loc2_)
                           {
                              addr133:
                           }
                        }
                        addr139:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1.§#5§();
                              _loc3_ = _loc2_[0];
                              if(!_loc5_)
                              {
                                 §§push(this);
                                 §§push(_loc3_.x);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() / §7E§.§8!'§);
                                 }
                                 §§pop().§+!g§ = §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(this);
                                    §§push(_loc3_.y);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() / §7E§.§8!'§);
                                    }
                                    §§pop().§<§ = §§pop();
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              §§goto(addr142);
                           case 1:
                        }
                        this.§]T§();
                        addr142:
                        return;
                        addr138:
                     }
                     else
                     {
                        §§push(§"!0§.§`C§);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(_loc4_);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr133);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr125);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr138);
               }
               §§goto(addr133);
            }
            §§goto(addr125);
         }
         §§goto(addr139);
      }
      
      public function §!!p§() : Array
      {
         return §!B§.§!!p§(null,this.§^!d§.§;!Z§());
      }
      
      public function §!!F§() : Array
      {
         return §!B§.§!!F§(null,this.§^!d§.§;!Z§());
      }
      
      public function §]!P§() : Array
      {
         return §!B§.§]!P§(null);
      }
      
      public function §,!+§() : void
      {
      }
      
      public function §&!Q§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§>E§.scaleX = this.§>E§.scaleY = param1;
         }
      }
      
      public function §]T§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>?§ = null;
         if(!this.§#!M§)
         {
            if(!(_loc4_ && _loc1_))
            {
               return;
            }
            addr260:
         }
         else
         {
            §§push(this.§+!O§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  this.§"S§ = 1;
                  if(!(_loc4_ && _loc1_))
                  {
                     addr492:
                     §§push(this.§@F§);
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           addr499:
                           _loc1_ = this.§@F§.getFrame(this.§"S§);
                           if(_loc5_ || _loc2_)
                           {
                              §§push(this.§,!^§);
                              if(_loc5_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§pop();
                                          §§push(Boolean(_loc1_));
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(this.§,!^§);
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          §§pop().texture = _loc1_.texture;
                                          §§push(this.§,!^§);
                                          if(_loc5_)
                                          {
                                             §§push(_loc1_.pivotX);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§push(-§§pop());
                                                if(_loc5_)
                                                {
                                                   §§push(this.§+!g§);
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            addr581:
                                                            §§push(this.§,!^§);
                                                            if(!(_loc4_ && this))
                                                            {
                                                               addr592:
                                                               §§push(-_loc1_.pivotY);
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr597);
                                                               }
                                                               §§goto(addr615);
                                                            }
                                                         }
                                                         §§goto(addr634);
                                                      }
                                                      §§goto(addr631);
                                                   }
                                                   §§goto(addr597);
                                                }
                                                §§goto(addr631);
                                             }
                                          }
                                          §§goto(addr592);
                                       }
                                       §§goto(addr631);
                                    }
                                    §§goto(addr618);
                                 }
                                 §§goto(addr597);
                              }
                              §§goto(addr592);
                           }
                           §§goto(addr581);
                        }
                        addr597:
                        §§push(§§pop() - this.§<§);
                        if(!(_loc4_ && this))
                        {
                           addr615:
                           §§pop().y = §§pop();
                           if(_loc5_)
                           {
                              addr618:
                              §§push(this.§,!^§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(_loc1_.scale);
                                 if(_loc5_)
                                 {
                                    addr631:
                                    §§pop().scaleX = §§pop();
                                    addr634:
                                    §§push(this.§,!^§);
                                    §§push(_loc1_.scale);
                                 }
                              }
                           }
                           §§goto(addr634);
                        }
                        §§pop().scaleY = §§pop();
                        return;
                     }
                     §§goto(addr499);
                  }
                  else
                  {
                     addr487:
                     §§goto(addr492);
                  }
               }
               else
               {
                  §§push(this.§^!d§);
                  if(!_loc4_)
                  {
                     §§push(§§pop().getSpecialAnimationProgress());
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() >= §§pop());
                           §§push(§§pop() >= §§pop());
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    §§push(this.§#!M§);
                                    §§push(this.§1V§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop().getSubAnimation(§§pop()));
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr92:
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                this.§@F§ = this.§#!M§.getSubAnimation(this.§1V§);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   this.§"S§ = this.§@F§.getFrameCount() * this.§^!d§.getSpecialAnimationProgress();
                                                   §§push(this.§"S§ == this.§@F§.getFrameCount() - 1);
                                                   §§push(this.§"S§ == this.§@F§.getFrameCount() - 1);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§pop();
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               addr151:
                                                               §§push(this.§^!d§.getSpecialAnimationTimeLeft());
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  §§push(100);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr165:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              var _loc2_:*;
                                                                              §§push((_loc2_ = this).§"S§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                              }
                                                                              var _loc3_:* = §§pop();
                                                                              if(!_loc4_)
                                                                              {
                                                                                 _loc2_.§"S§ = _loc3_;
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                              }
                                                                              §§goto(addr492);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr424:
                                                                              §§push(this.§#!M§);
                                                                              §§push(this.§6v§);
                                                                              if(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 addr435:
                                                                                 §§push(§§pop().getSubAnimation(§§pop()));
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr438:
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       addr446:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr447:
                                                                                          this.§@F§ = this.§#!M§.getSubAnimation(this.§6v§);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr456:
                                                                                             this.mIsBlinking = true;
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr476:
                                                                                                if(this.§#!M§.getSubAnimation(this.§,!M§))
                                                                                                {
                                                                                                   this.§@F§ = this.§#!M§.getSubAnimation(this.§,!M§);
                                                                                                   addr484:
                                                                                                   this.mIsFlying = true;
                                                                                                   §§goto(addr487);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   this.§@F§ = this.§#!M§;
                                                                                                   §§goto(addr492);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr492);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr464:
                                                                                          §§push(Boolean(this.mTryToFly));
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr467:
                                                                                             if(§§pop())
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr476);
                                                                                          }
                                                                                          §§pop();
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr476);
                                                                           }
                                                                        }
                                                                        §§goto(addr492);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr367:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              §§pop();
                                                                              §§push(this.§#!M§);
                                                                              if(_loc5_ || _loc1_)
                                                                              {
                                                                                 §§push(this.§extends§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr390:
                                                                                    §§push(§§pop().getSubAnimation(§§pop()));
                                                                                    if(!(_loc4_ && _loc1_))
                                                                                    {
                                                                                       addr399:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             this.§@F§ = this.§#!M§.getSubAnimation(this.§extends§);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                this.mIsScreaming = true;
                                                                                                §§goto(addr492);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr424);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr484);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr418:
                                                                                          §§push(this.mTryToBlink > 0);
                                                                                          if(this.mTryToBlink > 0)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§goto(addr424);
                                                                                             }
                                                                                             §§goto(addr456);
                                                                                          }
                                                                                          §§goto(addr446);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr438);
                                                                                 }
                                                                                 §§goto(addr435);
                                                                              }
                                                                              §§goto(addr476);
                                                                           }
                                                                           §§goto(addr467);
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr270:
                                                                  §§push(0);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     addr279:
                                                                     §§push(§§pop() > §§pop());
                                                                     §§push(§§pop() > §§pop());
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§pop();
                                                                           §§push(this.mTryToFly > 0);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr295:
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §§push(this.§#!M§);
                                                                                    §§push(this.§&S§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop().getSubAnimation(§§pop()));
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr332:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                this.§@F§ = this.§#!M§.getSubAnimation(this.§&S§);
                                                                                                addr340:
                                                                                                this.mIsScreaming = true;
                                                                                                this.mIsFlying = true;
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   addr353:
                                                                                                }
                                                                                                §§goto(addr492);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.mTryToScream);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      §§goto(addr367);
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr418);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr418);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr476);
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           §§goto(addr476);
                                                                        }
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                               }
                                                               §§goto(addr418);
                                                            }
                                                            else
                                                            {
                                                               addr250:
                                                               this.§@F§ = this.§#!M§.getSubAnimation(this.§1V§);
                                                               this.mIsSpecial = true;
                                                               §§goto(addr260);
                                                            }
                                                         }
                                                         §§goto(addr279);
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   §§goto(addr467);
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr492);
                                          }
                                          else
                                          {
                                             §§push(this.mTryToSpecial);
                                             if(_loc5_ || _loc1_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            §§push(this.§#!M§);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(this.§1V§);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(§§pop().getSubAnimation(§§pop()));
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     addr241:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        addr249:
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr250);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.mTryToScream);
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              §§goto(addr270);
                                                                           }
                                                                           §§goto(addr418);
                                                                        }
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                                  §§goto(addr476);
                                                               }
                                                               §§goto(addr390);
                                                            }
                                                            §§goto(addr476);
                                                         }
                                                         §§goto(addr340);
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                }
                                                §§goto(addr418);
                                             }
                                          }
                                          §§goto(addr464);
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr476);
                                 }
                                 §§goto(addr353);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr418);
                        }
                        §§goto(addr279);
                     }
                     §§goto(addr418);
                  }
                  §§goto(addr151);
               }
               §§goto(addr492);
            }
            §§goto(addr332);
         }
         §§goto(addr492);
      }
      
      public function §'!i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>E§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§6!=§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() < 0)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     this.§ !i§();
                     addr43:
                     §§push(0);
                  }
               }
               §§goto(addr43);
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               §§push(1);
               if(_loc2_)
               {
                  §§push(this.§^!d§.§!!>§);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop() / this.§^!d§.§1!s§);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc2_)
                  {
                     §§push(§§pop() * this.§6!=§);
                  }
                  §§push(int(§§pop()));
                  if(!(_loc3_ && this))
                  {
                     addr88:
                     _loc1_ = §§pop();
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr112);
                  }
                  addr107:
                  if(_loc1_ != this.§4u§)
                  {
                     if(!_loc3_)
                     {
                        addr112:
                        this.§4u§ = _loc1_;
                        if(_loc2_ || _loc3_)
                        {
                           addr122:
                           this.§"S§ = this.§4u§;
                           if(!_loc2_)
                           {
                           }
                           §§goto(addr130);
                        }
                        this.§]T§();
                     }
                  }
                  addr130:
                  return;
               }
               §§goto(addr88);
            }
            §§goto(addr122);
         }
         §§goto(addr43);
      }
      
      public function § !i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§#!M§)
            {
               if(!_loc1_)
               {
                  this.§6!=§ = this.§#!M§.getFrameCount();
               }
            }
         }
      }
      
      public function §-!Q§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§4!3§ = new GlowFilter();
            if(_loc4_)
            {
               this.§4!3§.blurX = param2;
               if(_loc4_ || param1)
               {
               }
               §§goto(addr66);
            }
            this.§4!3§.blurY = param3;
            if(_loc5_ && param1)
            {
            }
            §§goto(addr66);
         }
         addr66:
         this.§4!3§.color = param1;
      }
      
      public function §8d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4!3§ = null;
         }
      }
      
      public function §,y§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§^!d§.§'J§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§?!T§(_loc2_);
            if(!_loc3_)
            {
               break;
            }
            _loc2_++;
            if(!_loc3_)
            {
               break;
            }
         }
      }
      
      public function §2!g§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§"!1§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() >= 0)
            {
               this.§"!1§[_loc2_].updateLifeTime(param1);
               if(_loc3_)
               {
                  if(this.§"!1§[_loc2_].lifeTime < 0)
                  {
                     if(_loc3_ || this)
                     {
                        this.§?!T§(_loc2_);
                        if(_loc4_)
                        {
                        }
                        break;
                     }
                     break;
                  }
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  _loc2_ = §§pop();
                  if(!(_loc3_ || param1))
                  {
                     break;
                  }
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §?!T§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || _loc3_)
         {
            if(!this.§4!"§)
            {
               if(_loc6_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         if(_loc6_ || this)
         {
            if(Math.random() < 0.5)
            {
               if(!_loc7_)
               {
                  addr49:
                  _loc2_ = 1;
               }
            }
            var _loc3_:§>?§ = this.§4!"§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(_loc6_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§1u§ = null;
            if(_loc6_)
            {
               if(param1 < this.§"!1§.length)
               {
                  addr82:
                  (_loc5_ = this.§"!1§[param1]).§^2§(_loc4_);
                  if(!_loc7_)
                  {
                     _loc5_.§?O§(_loc3_.texture);
                     if(_loc6_ || this)
                     {
                        addr135:
                        §§push(_loc5_.image);
                        if(_loc6_)
                        {
                           §§push(_loc3_.pivotX);
                           if(!_loc7_)
                           {
                              §§push(-§§pop());
                              if(_loc6_)
                              {
                                 §§push(this.§,!^§);
                                 if(_loc6_ || param1)
                                 {
                                    §§push(§§pop().width / 2);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc7_)
                                       {
                                          §§push(Math.random() * this.§,!^§.width);
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             addr176:
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_)
                                             {
                                                §§pop().x = §§pop();
                                                if(!_loc7_)
                                                {
                                                   addr186:
                                                   §§push(_loc5_.image);
                                                   §§push(-_loc3_.pivotY);
                                                   if(_loc6_)
                                                   {
                                                      addr201:
                                                      §§push(this.§,!^§.height / 2);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§goto(addr226);
                                                      }
                                                      addr226:
                                                      addr211:
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc7_ && this))
                                                      {
                                                         addr219:
                                                         §§push(Math.random() * this.§,!^§.height);
                                                      }
                                                      §§pop().y = §§pop();
                                                      return;
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr211);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr219);
                           }
                        }
                        §§goto(addr186);
                        addr114:
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr114);
               }
               else
               {
                  _loc5_ = new §1u§(_loc3_.texture,_loc4_);
                  if(_loc6_)
                  {
                     this.§"!1§.push(_loc5_);
                     if(!_loc6_)
                     {
                     }
                     §§goto(addr135);
                  }
                  this.§>E§.addChild(_loc5_.image);
               }
               §§goto(addr135);
            }
            §§goto(addr82);
         }
         §§goto(addr49);
      }
      
      public function §+!V§() : §7!J§
      {
         return this.§,!^§;
      }
   }
}
