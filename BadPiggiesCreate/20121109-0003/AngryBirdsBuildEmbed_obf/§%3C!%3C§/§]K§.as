package §<!<§
{
   import § !r§.§<!V§;
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import §<!B§.b2Vec2;
   import §=U§.§;P§;
   import §=U§.§>?§;
   import §>!'§.§<!3§;
   import §?!6§.§"!0§;
   import §?!6§.§1!!§;
   import §?!6§.§@T§;
   
   public class §]K§
   {
      
      public static const §=!t§:String = "ChannelSlingshot";
      
      public static const §%!"§:Number = 900;
      
      public static const §>!7§:Number = 200;
      
      public static const §7!X§:Number = 200;
      
      public static const §<R§:Number = 1500;
      
      public static const §2!3§:Number = 5000;
      
      public static const §"!t§:Number = 1000;
      
      public static const §`!]§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=!t§ = "ChannelSlingshot";
            if(!_loc2_)
            {
               §%!"§ = 900;
               §>!7§ = 200;
               §7!X§ = 200;
               §<R§ = 1500;
               §2!3§ = 5000;
               §§goto(addr58);
            }
            §§goto(addr68);
         }
         addr58:
         if(!(_loc2_ && _loc1_))
         {
            addr68:
            §`!]§ = 1000;
         }
      }
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §+<§:Number;
      
      public var §6!n§:Number;
      
      private var §-5§:§@T§;
      
      protected var §;i§:Number;
      
      protected var §&!M§:Number = 1;
      
      private var §>E§:Sprite;
      
      private var §#!M§:§;P§;
      
      private var §,!^§:§7!J§;
      
      protected var §[6§:§;§;
      
      private var §%!+§:Number;
      
      private var §6!v§:Boolean = false;
      
      private var §]§:Boolean = false;
      
      protected var §<'§:Boolean = false;
      
      private var §8!2§:Number;
      
      private var §5F§:Number = 0;
      
      private var §^!?§:Number = 0;
      
      private var §"!a§:Number = 0;
      
      private var §=Z§:Number = 1000;
      
      private var §?!m§:Number;
      
      private var §`!^§:Number;
      
      private var §6!X§:int;
      
      private var §"! §:Number = 0;
      
      protected var §""§:Number;
      
      protected var §;!F§:Number;
      
      protected var §=!-§:Number = 0;
      
      private var §^3§:Number = 1;
      
      private var § !a§:Number = 0;
      
      private var §6o§:b2Vec2;
      
      private var §7P§:Number = 1;
      
      public function §]K§(param1:§;§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         super();
         if(_loc7_)
         {
            this.§[6§ = param1;
            if(!(_loc6_ && param2))
            {
               this.§>E§ = param2;
            }
            this.mName = param3;
            if(!_loc6_)
            {
               this.§-5§ = §1!!§.§#P§(this.mName).§1!B§;
               if(_loc7_ || this)
               {
                  this.mX = param4;
                  this.mY = param5;
                  if(!(_loc6_ && param1))
                  {
                     addr86:
                     this.§+<§ = param4;
                     addr89:
                     this.§6!n§ = param5;
                     this.§;i§ = 0;
                     if(!_loc6_)
                     {
                        addr97:
                        this.§6!v§ = false;
                        this.§]§ = false;
                     }
                     this.§5F§ = 0;
                     this.§3!F§();
                  }
                  this.§""§ = 0;
                  return;
               }
               §§goto(addr97);
            }
            §§goto(addr89);
         }
         §§goto(addr86);
      }
      
      public function §;!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§6!v§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§>E§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr48:
                     this.§>E§.dispose();
                     if(_loc1_ && this)
                     {
                     }
                     §§goto(addr59);
                  }
                  this.§>E§ = null;
                  §§goto(addr59);
               }
               addr59:
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function §#w§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§]§);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(!(_loc3_ && _loc2_))
               {
                  addr30:
                  if(!§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        addr39:
                        §§pop();
                        §§push(this.§6!v§);
                        if(_loc2_ || _loc3_)
                        {
                        }
                        addr50:
                        if(§§pop())
                        {
                           if(!(_loc3_ && this))
                           {
                              return;
                           }
                           addr305:
                           if(this.§8!2§ <= 0)
                           {
                              addr309:
                              this.mX = this.§[6§.mX;
                              if(_loc2_)
                              {
                                 this.mY = this.§[6§.mY;
                              }
                              §§goto(addr321);
                           }
                        }
                        else
                        {
                           §§push(this.§&!M§);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(0);
                              if(_loc2_ || this)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    this.§"!a§ = 0;
                                    this.§"! § = 0;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       this.§;i§ = 0;
                                       if(!_loc3_)
                                       {
                                          this.§`!^§ = 0;
                                          this.§&!M§ = 0;
                                          addr108:
                                          §§push(Number(Math.min(param1,this.§8!2§)));
                                          if(!_loc3_)
                                          {
                                             addr116:
                                             param1 = §§pop();
                                             if(!_loc3_)
                                             {
                                                §§push(this);
                                                §§push(this.mX);
                                                if(_loc2_)
                                                {
                                                   §§push(param1);
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.§[6§.mX);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(§§pop() - this.mX);
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            addr168:
                                                            addr147:
                                                            addr169:
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(this.§8!2§);
                                                            }
                                                            §§pop().mX = §§pop() + §§pop();
                                                            §§push(this);
                                                            §§push(this.mY);
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               §§push(param1);
                                                               if(_loc2_ || param1)
                                                               {
                                                                  §§push(this.§[6§.mY);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() - this.mY);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr210:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           addr208:
                                                                           §§push(§§pop() / this.§8!2§);
                                                                        }
                                                                        §§pop().mY = §§pop() + §§pop();
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.mY);
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr248:
                                                                                 §§push(§§pop() / 50);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr235:
                                                                                    §§push(this.§8!2§);
                                                                                    if(_loc2_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() / §%!"§);
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 §§pop().mY = §§pop() - §§pop();
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§;i§);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          §§push(360 - this.§;i§);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§goto(addr282);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                    addr282:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       addr280:
                                                                                       §§push(§§pop() / this.§8!2§);
                                                                                    }
                                                                                    §§pop().§;i§ = §§pop() + §§pop();
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr285:
                                                                                       §§push(this);
                                                                                       §§push(this.§8!2§);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(§§pop() - param1);
                                                                                       }
                                                                                       §§pop().§8!2§ = §§pop();
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                       §§goto(addr332);
                                                                                    }
                                                                                    addr321:
                                                                                    this.§]§ = false;
                                                                                    this.§6!v§ = true;
                                                                                    this.§;i§ = 0;
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr332:
                                                                                       this.§3G§();
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr305);
                                                                              }
                                                                              §§goto(addr235);
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr208);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                         §§goto(addr168);
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr168);
                                                }
                                                §§goto(addr169);
                                             }
                                             §§goto(addr285);
                                          }
                                          §§goto(addr305);
                                       }
                                       §§goto(addr309);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr305);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr332);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr50);
               }
               §§goto(addr39);
            }
            §§goto(addr30);
         }
         §§goto(addr305);
      }
      
      public function §;!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]§ = true;
            this.§8!2§ = §%!"§;
            this.§&K§(§@T§.§@c§);
            if(_loc1_)
            {
               if(this.§"! § != 0)
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr61:
                     §§push(this);
                     §§push(this.mY);
                     if(!_loc2_)
                     {
                        §§push(§§pop() + this.§"! §);
                     }
                     §§pop().mY = §§pop();
                     this.§"! § = 0;
                  }
               }
               return;
            }
         }
         §§goto(addr61);
      }
      
      public function §"E§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§6!v§);
            if(!(_loc4_ && param1))
            {
               §§push(!§§pop());
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr46:
                        §§pop();
                        if(_loc3_ || param1)
                        {
                           §§push(this.§""§);
                           if(!_loc4_)
                           {
                              §§push(0);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(!_loc4_)
                                 {
                                    addr69:
                                    if(§§pop())
                                    {
                                       §§push(this.§;!F§);
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(§§pop() > this.§[6§.§-n§.borders.mBorderGround_B2)
                                          {
                                             §§push(this);
                                             §§push(this.§[6§.§-n§.borders.mBorderGround_B2);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() - this.§;!F§);
                                             }
                                             §§pop().§"8§(§§pop());
                                             if(_loc3_ || _loc2_)
                                             {
                                                this.§""§ = -1;
                                             }
                                          }
                                          §§push(this);
                                          §§push(this.§""§);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().§""§ = §§pop();
                                          §§push(this.§""§);
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(0);
                                             if(_loc3_)
                                             {
                                                §§goto(addr336);
                                             }
                                             if(§§pop() > §§pop())
                                             {
                                                this.§""§ = this.§"!a§;
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   return;
                                                }
                                                addr327:
                                                this.§""§ = 2000;
                                                if(!_loc4_)
                                                {
                                                   addr332:
                                                }
                                             }
                                             else
                                             {
                                                §§push(0);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!isNaN(this.§;!F§))
                                                   {
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§push(this.§[6§);
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§push(§§pop().§-n§);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(§§pop().objects);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(§§pop().§^!!§(this.mX,this.§;!F§));
                                                                  if(_loc3_)
                                                                  {
                                                                     addr207:
                                                                     §§push(int(§§pop()));
                                                                     if(_loc3_)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr214:
                                                                           if(_loc2_ < 0)
                                                                           {
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 addr230:
                                                                                 §§push(this);
                                                                                 §§push(param1);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() / 100);
                                                                                 }
                                                                                 if(§§pop().§"8§(§§pop()))
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       this.§""§ = -1;
                                                                                    }
                                                                                    §§goto(addr242);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.§""§ = 0;
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr242:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr288:
                                                                                       this.§""§ = -1;
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr336);
                                                                                 }
                                                                              }
                                                                              §§goto(addr336);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.§[6§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr247:
                                                                                 §§push(§§pop().§-n§);
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    §§push(§§pop().objects);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop().getObject(§§pop()));
                                                                                          if(_loc3_ || this)
                                                                                          {
                                                                                             §§push(§§pop().§7T§);
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   addr278:
                                                                                                   this.§<'§ = false;
                                                                                                   if(_loc3_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr288);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr327);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr314:
                                                                                                   §§push(this.§[6§.§-n§.objects.getObject(_loc2_));
                                                                                                }
                                                                                                §§goto(addr336);
                                                                                             }
                                                                                             §§goto(addr316);
                                                                                          }
                                                                                          addr316:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             this.§<'§ = false;
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                §§goto(addr327);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             this.§""§ = 500;
                                                                                          }
                                                                                          §§goto(addr336);
                                                                                          §§push(§§pop().§^!%§());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr314);
                                                                           }
                                                                        }
                                                                        §§goto(addr332);
                                                                     }
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                            }
                                                            §§goto(addr314);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr207);
                                             }
                                          }
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr336);
                                 }
                                 §§goto(addr230);
                              }
                              §§goto(addr336);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr278);
                     }
                     §§goto(addr316);
                  }
                  §§goto(addr69);
               }
               §§goto(addr316);
            }
            §§goto(addr46);
         }
         §§goto(addr242);
      }
      
      public function §"8§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.mY);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().mY = §§pop();
            if(_loc3_ || _loc3_)
            {
               addr34:
               §§push(this);
               §§push(this.§;!F§);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§;!F§ = §§pop();
               if(_loc3_ || param1)
               {
                  §§push(this.§;!F§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§[6§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop().§-n§);
                        if(!_loc2_)
                        {
                           §§push(§§pop().borders);
                           if(_loc3_)
                           {
                              §§push(§§pop().mBorderGround_B2);
                              if(_loc3_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    §§push(this.§;!F§);
                                    if(!_loc2_)
                                    {
                                       addr101:
                                       addr100:
                                       addr99:
                                       addr98:
                                       §§push(§§pop() - this.§[6§.§-n§.borders.mBorderGround_B2);
                                       if(_loc3_ || _loc2_)
                                       {
                                       }
                                       addr110:
                                       param1 = §§pop();
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(this);
                                          §§push(this.mY);
                                          if(!(_loc2_ && this))
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().mY = §§pop();
                                          if(!_loc2_)
                                          {
                                             §§push(this);
                                             §§push(this.§;!F§);
                                             if(_loc3_ || this)
                                             {
                                                §§push(§§pop() - param1);
                                             }
                                             §§pop().§;!F§ = §§pop();
                                             if(!(_loc2_ && param1))
                                             {
                                                this.§3G§();
                                                addr165:
                                                §§push(true);
                                                if(_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             §§goto(addr165);
                                          }
                                          else
                                          {
                                             addr171:
                                             §§push(false);
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr110);
                                    §§push(Number(§§pop()));
                                 }
                                 else
                                 {
                                    this.§3G§();
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr101);
               }
            }
            §§goto(addr165);
         }
         §§goto(addr34);
      }
      
      public function §3!F§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§>?§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§"!0§ = §1!!§.§#P§(this.mName).shape;
         if(!_loc5_)
         {
            §§push(_loc1_.§?p§());
            if(_loc4_)
            {
               §§push(§"!0§.§3I§);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     this.§6o§ = _loc1_.§#5§()[0];
                     this.§%!+§ = _loc1_.§4!L§;
                     if(_loc4_ || this)
                     {
                        addr99:
                        this.§#!M§ = this.§[6§.§-n§.§@!o§.§`!!§(this.mName);
                     }
                     if(!this.§#!M§)
                     {
                        this.§%!C§(null);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        this.§%!C§(this.§#!M§.getFrame(0));
                     }
                     §§goto(addr123);
                  }
                  else
                  {
                     addr77:
                     if(_loc1_.§?p§() == §"!0§.§`C§)
                     {
                        this.§6o§ = new b2Vec2(0,0);
                        this.§%!+§ = 1.5;
                        if(!_loc4_)
                        {
                        }
                        §§goto(addr123);
                     }
                  }
                  §§goto(addr99);
               }
            }
            §§goto(addr77);
         }
         addr123:
      }
      
      public function §%!C§(param1:§>?§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(_loc5_)
         {
            if(!param1)
            {
               addr27:
               _loc2_ = this.§[6§.§<q§.textureManager.§8r§();
               if(_loc5_)
               {
                  addr59:
                  if(this.§,!^§ == null)
                  {
                     if(!_loc4_)
                     {
                        addr65:
                        this.§,!^§ = new §7!J§(_loc2_);
                        this.§>E§.addChild(this.§,!^§);
                        if(!_loc4_)
                        {
                           addr82:
                           if(param1)
                           {
                              if(_loc5_)
                              {
                                 §§push(this.§,!^§);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(param1.pivotX);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(-§§pop());
                                       if(_loc5_)
                                       {
                                          §§push(this.§6o§);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc4_)
                                             {
                                                §§push(§7E§.§8!'§);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr132);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr149);
                                       }
                                       addr132:
                                       §§pop().x = §§pop() - §§pop();
                                       §§push(this.§,!^§);
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr144:
                                          §§push(-param1.pivotY);
                                          if(_loc5_)
                                          {
                                             addr149:
                                             §§push(this.§6o§.y);
                                             if(!(_loc4_ && param1))
                                             {
                                                addr160:
                                                §§pop().y = §§pop() - §§pop() / §7E§.§8!'§;
                                                §§push(this.§,!^§);
                                                if(_loc5_)
                                                {
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr225);
                                                addr157:
                                                addr159:
                                             }
                                             §§goto(addr160);
                                          }
                                          else
                                          {
                                             addr212:
                                             §§pop().y = §§pop();
                                             if(!_loc4_)
                                             {
                                                §§goto(addr160);
                                             }
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr144);
                                 }
                              }
                              §§goto(addr219);
                           }
                           else
                           {
                              §§push(this.§,!^§);
                              if(_loc5_)
                              {
                                 §§push(this.§,!^§);
                                 if(_loc5_)
                                 {
                                    §§push(-§§pop().width);
                                    §§push(2);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!_loc4_)
                                       {
                                          §§pop().x = §§pop();
                                          if(!(_loc4_ && this))
                                          {
                                             addr209:
                                             §§push(this.§,!^§);
                                             §§push(-this.§,!^§.height / 2);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr212);
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr212);
                                    }
                                 }
                                 §§goto(addr209);
                              }
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr132);
                     }
                     addr219:
                     §§pop().scaleX = _loc3_;
                     if(!_loc4_)
                     {
                        addr226:
                        this.§,!^§.scaleY = _loc3_;
                        addr225:
                     }
                     this.§3G§();
                     return;
                  }
                  this.§,!^§.texture = _loc2_;
                  §§goto(addr82);
               }
               §§goto(addr65);
            }
            else
            {
               _loc2_ = param1.texture;
               if(!(_loc4_ && param1))
               {
                  §§push(param1.scale);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr59);
         }
         §§goto(addr27);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Boolean = true;
         if(!_loc5_)
         {
            this.§"E§(param1);
            §§push(this.§]§);
            if(_loc6_ || param3)
            {
               if(§§pop())
               {
                  this.§"!a§ = 0;
                  if(!_loc5_)
                  {
                     _loc4_ = false;
                  }
               }
               if(this.mName != "BIRD_SARDINE")
               {
                  if(_loc6_)
                  {
                     this.§2I§(param1);
                     addr60:
                     this.§6!B§(param1);
                     §§push(Boolean(_loc4_));
                     if(_loc6_ || this)
                     {
                        §§push(§§pop());
                        if(!(_loc5_ && param2))
                        {
                           if(§§pop())
                           {
                              if(!(_loc5_ && param3))
                              {
                                 addr98:
                                 §§pop();
                                 addr101:
                                 §§push(param3 == true);
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc6_ || this)
                              {
                                 this.§'8§(param1,param2);
                              }
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr60);
               }
               addr114:
               return;
            }
            §§goto(addr98);
         }
         §§goto(addr60);
      }
      
      public function §2I§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§5F§);
         if(_loc2_)
         {
            §§push(0);
            if(_loc2_)
            {
               if(§§pop() > §§pop())
               {
                  §§push(this);
                  §§push(this.§5F§);
                  if(_loc2_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§5F§ = §§pop();
                  §§push(this.§5F§);
                  if(_loc2_ || _loc3_)
                  {
                     addr41:
                     §§push(0);
                     if(_loc2_ || param1)
                     {
                        if(§§pop() <= §§pop())
                        {
                           this.§5!T§();
                           if(!_loc2_)
                           {
                              addr120:
                              this.§?S§();
                              §§goto(addr122);
                           }
                           addr122:
                           return;
                        }
                     }
                     else
                     {
                        addr70:
                        §§push(§§pop() <= §§pop());
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§pop();
                                    addr99:
                                    §§push(Math.random() * §<R§ < param1);
                                    if(!(_loc3_ && param1))
                                    {
                                       addr108:
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                          }
                                          addr119:
                                          if(!§§pop())
                                          {
                                          }
                                          §§goto(addr120);
                                       }
                                    }
                                    §§goto(addr119);
                                 }
                                 §§pop();
                                 if(_loc2_)
                                 {
                                    §§goto(addr119);
                                    §§push(Boolean(this.§[6§.mSlingShotState));
                                 }
                                 §§goto(addr120);
                              }
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr120);
                  }
                  else
                  {
                     addr69:
                     §§goto(addr70);
                     §§push(0);
                  }
                  §§goto(addr70);
               }
               else
               {
                  §§push(this.§^!?§);
                  if(_loc2_)
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr70);
         }
         §§goto(addr41);
      }
      
      public function §5!T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§5F§ = 0;
            if(_loc2_ || _loc2_)
            {
               addr44:
               this.§%!C§(this.§#!M§.getFrame(0));
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §?S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.mName == "BIRD_SARDINE")
            {
               if(_loc1_ || this)
               {
                  §§goto(addr54);
               }
               else
               {
                  addr67:
                  this.§%!C§(this.§#!M§.getSubAnimation("blink").getFrame(0));
               }
            }
            else
            {
               this.§5F§ = §>!7§;
               if(_loc1_)
               {
                  §§goto(addr67);
               }
            }
            return;
         }
         addr54:
      }
      
      public function §6!B§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§^!?§);
            if(!_loc2_)
            {
               §§push(0);
               if(_loc3_)
               {
                  if(§§pop() > §§pop())
                  {
                     §§push(this);
                     §§push(this.§^!?§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§^!?§ = §§pop();
                     §§push(this.§^!?§);
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr64);
                     }
                  }
                  else
                  {
                     §§push(this.§5F§);
                     if(_loc3_ || param1)
                     {
                        §§goto(addr88);
                        §§push(0);
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr72);
            }
            addr64:
            §§push(0);
            if(_loc3_ || _loc2_)
            {
               addr72:
               if(§§pop() <= §§pop())
               {
                  this.§^Q§();
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               addr88:
               §§push(§§pop() <= §§pop());
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        §§pop();
                        addr120:
                        §§push(Math.random() * §2!3§ < param1);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     this.§&K§();
                  }
               }
            }
            §§goto(addr132);
         }
         addr132:
      }
      
      public function §^Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^!?§ = 0;
            if(!_loc1_)
            {
               addr24:
               this.§%!C§(this.§#!M§.getFrame(0));
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §&K§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         §§push(this.§^!?§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(0);
            if(!_loc4_)
            {
               if(§§pop() > §§pop())
               {
                  if(_loc3_)
                  {
                     this.§^Q§();
                     addr38:
                     addr41:
                     addr40:
                     if(this.§5F§ > 0)
                     {
                        this.§5!T§();
                        if(!_loc3_)
                        {
                        }
                        addr56:
                        §§push(§@T§.§`u§);
                        if(!_loc4_)
                        {
                           §§push(int(§§pop()));
                        }
                        param1 = §§pop();
                        if(!_loc4_)
                        {
                           addr74:
                           this.§^!?§ = §7!X§;
                           this.§%!C§(this.§#!M§.getSubAnimation("yell").getFrame(0));
                           §§push(this.§6!v§);
                           if(_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              §§push(Boolean(§§pop()));
                              if(!(_loc4_ && param2))
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(_loc3_ || param1)
                                    {
                                       addr107:
                                       §§push(this.§]§);
                                       if(!(_loc4_ && param2))
                                       {
                                          addr127:
                                          addr128:
                                          §§push(Boolean(§§pop()));
                                          if(!Boolean(§§pop()))
                                          {
                                             addr129:
                                             §§pop();
                                             §§goto(addr156);
                                          }
                                          if(§§pop())
                                          {
                                             §<!3§.§1a§(param1,this.§-5§);
                                             if(!_loc3_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §<!3§.§1a§(param1,this.§-5§,§=!t§);
                                          }
                                          §§goto(addr156);
                                       }
                                       §§goto(addr140);
                                    }
                                    addr156:
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(param2);
                                       if(_loc3_)
                                       {
                                          addr140:
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr107);
                     }
                     §§push(param1);
                     if(_loc3_ || this)
                     {
                        if(§§pop() < 0)
                        {
                           §§goto(addr56);
                        }
                        §§goto(addr74);
                     }
                  }
                  §§goto(addr56);
               }
               §§goto(addr38);
            }
            §§goto(addr41);
         }
         §§goto(addr40);
      }
      
      public function §'8§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         §§push(this.§"!a§);
         §§push(0);
         if(!(_loc6_ && param2))
         {
            if(§§pop() > §§pop())
            {
               if(_loc7_)
               {
                  §§push(this);
                  §§push(this.§"!a§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§"!a§ = §§pop();
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(this.§"!a§);
                     §§push(0);
                     if(!_loc6_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           var _loc4_:*;
                           §§push((_loc4_ = this).§6!X§);
                           if(_loc7_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc7_)
                           {
                              _loc4_.§6!X§ = _loc5_;
                           }
                           if(!_loc6_)
                           {
                              §§push(this);
                              §§push(this.§`!^§);
                              if(_loc7_ || param1)
                              {
                                 §§push(§§pop() * 0.4);
                              }
                              §§pop().§`!^§ = §§pop();
                              §§push(!this.§6!v§);
                              if(_loc7_ || param1)
                              {
                                 §§push(§§pop());
                                 if(_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          §§pop();
                                          if(_loc7_ || param1)
                                          {
                                             §§push(this.§6!X§);
                                             if(_loc7_ || param2)
                                             {
                                                §§push(2);
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr130:
                                                   if(§§pop() < §§pop())
                                                   {
                                                      addr134:
                                                      §§push(this.§6!X§ > 1);
                                                      §§push(this.§6!X§ > 1);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               addr146:
                                                               §§pop();
                                                               §§push(this.§`!^§);
                                                               §§push(-1);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     addr165:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr168:
                                                                           this.§`!^§ = -1;
                                                                           addr171:
                                                                           this.§?!m§ = this.§`!^§;
                                                                           if(_loc7_)
                                                                           {
                                                                              addr177:
                                                                              this.§"!a§ = §`!]§;
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 addr187:
                                                                                 §§push(this);
                                                                                 §§push(this.§"!a§);
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    §§push(§§pop() * (Math.abs(this.§?!m§) / 2));
                                                                                 }
                                                                                 §§pop().§"!a§ = §§pop();
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    this.§=Z§ = this.§"!a§;
                                                                                    this.§;i§ = 0;
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       this.§&!M§ = 0;
                                                                                       addr480:
                                                                                       this.§3G§();
                                                                                       if(!(_loc7_ || param1))
                                                                                       {
                                                                                          addr549:
                                                                                          this.§`&§();
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr489:
                                                                                       }
                                                                                       addr292:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr510:
                                                                                       §§push(!this.§6!v§);
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          addr530:
                                                                                          §§push(§§pop());
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr533:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr541);
                                                                                          }
                                                                                          addr541:
                                                                                          §§goto(addr540);
                                                                                       }
                                                                                       §§pop();
                                                                                       §§push(!this.§]§);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr540:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr542:
                                                                                             §§pop();
                                                                                             §§goto(addr551);
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr549);
                                                                                          }
                                                                                          §§goto(addr551);
                                                                                       }
                                                                                       §§goto(addr541);
                                                                                    }
                                                                                    §§goto(addr551);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr426:
                                                                                    addr414:
                                                                                    §§push(§<!V§.§;]§(_loc3_,false));
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       addr425:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc3_ = §§pop();
                                                                                    §§goto(addr427);
                                                                                 }
                                                                              }
                                                                              §§goto(addr549);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr245:
                                                                              this.§`&§(2.25);
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 §§goto(addr292);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr307:
                                                                                 §§push(this.§=Z§);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() - this.§"!a§);
                                                                                    §§push(this.§=Z§);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(2);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr321:
                                                                                          §§push(§§pop() / (§§pop() / §§pop()));
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr325:
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!(_loc6_ && param2))
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   addr341:
                                                                                                   §§push(§<!V§.§;]§(_loc3_));
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc7_ || this)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         §§push(this);
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§?!m§);
                                                                                                         }
                                                                                                         §§pop().§"! § = §§pop();
                                                                                                         if(!(_loc7_ || param1))
                                                                                                         {
                                                                                                            §§goto(addr427);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr370:
                                                                                                         }
                                                                                                         §§goto(addr450);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr425);
                                                                                                      }
                                                                                                      if(_loc7_ || param2)
                                                                                                      {
                                                                                                         addr450:
                                                                                                         §§push(this);
                                                                                                         §§push(360);
                                                                                                         §§push(§<!V§);
                                                                                                         §§push(this.§=Z§);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§push(this.§"!a§);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc7_ || _loc3_)
                                                                                                               {
                                                                                                                  addr471:
                                                                                                                  §§push(§§pop() / this.§=Z§);
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop().§;]§(§§pop()));
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * this.§&!M§);
                                                                                                               }
                                                                                                               §§pop().§;i§ = §§pop();
                                                                                                               §§goto(addr480);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr471);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr545);
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   §§goto(addr426);
                                                                                                }
                                                                                                §§goto(addr370);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr411:
                                                                                                _loc3_ = §§pop();
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr414);
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr425);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr404:
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr408:
                                                                                             §§push(Number(§§pop() / §§pop()));
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§goto(addr411);
                                                                                             }
                                                                                             §§goto(addr425);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr495:
                                                                                             §§push(§§pop() < §§pop());
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr498:
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§goto(addr510);
                                                                                                      }
                                                                                                      §§goto(addr542);
                                                                                                   }
                                                                                                   §§goto(addr530);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr533);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr533);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr391:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(this.§=Z§);
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             §§goto(addr404);
                                                                                             §§push(2);
                                                                                          }
                                                                                          §§goto(addr495);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr426);
                                                                                 }
                                                                                 §§goto(addr325);
                                                                              }
                                                                           }
                                                                           §§goto(addr426);
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                     §§goto(addr171);
                                                                  }
                                                                  §§goto(addr498);
                                                               }
                                                               else
                                                               {
                                                                  addr381:
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     §§goto(addr391);
                                                                     §§push(this.§"!a§);
                                                                  }
                                                               }
                                                               §§goto(addr411);
                                                            }
                                                            else
                                                            {
                                                               addr230:
                                                               §§push(§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§pop();
                                                                     §§push(Boolean(param2));
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§goto(addr245);
                                                                     }
                                                                     §§goto(addr510);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§"!a§ = 0;
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        this.§"! § = 0;
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           this.§;i§ = 0;
                                                                           this.§`!^§ = 0;
                                                                           §§goto(addr480);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr426);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr489);
                                                               }
                                                            }
                                                            §§goto(addr533);
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      §§goto(addr533);
                                                   }
                                                   else
                                                   {
                                                      §§push(!this.§6!v§);
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr230);
                                                      }
                                                   }
                                                   §§goto(addr542);
                                                }
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr130);
                                 }
                              }
                              §§goto(addr533);
                           }
                           §§goto(addr426);
                        }
                        else
                        {
                           §§push(this.§"!a§);
                           §§push(this.§=Z§);
                           §§push(2);
                           if(_loc7_ || param1)
                           {
                              if(§§pop() >= §§pop() / §§pop())
                              {
                                 §§goto(addr307);
                              }
                              else
                              {
                                 §§push(this.§=Z§);
                                 if(_loc7_ || param2)
                                 {
                                    §§goto(addr381);
                                    §§push(2);
                                 }
                              }
                              §§goto(addr408);
                           }
                        }
                        §§goto(addr321);
                     }
                     §§goto(addr381);
                  }
                  §§goto(addr341);
               }
               §§goto(addr168);
            }
            else
            {
               §§push(Math.random() * §"!t§);
               §§push(param1);
            }
            §§goto(addr495);
         }
         §§goto(addr381);
      }
      
      public function §`&§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.mName);
         if(_loc3_ || this)
         {
            §§push("BIRD_SARDINE");
            if(!_loc2_)
            {
               if(§§pop() == §§pop())
               {
                  return;
               }
               this.§6!X§ = 0;
               if(!(_loc2_ && _loc3_))
               {
                  this.§"!a§ = §`!]§;
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§"! § = 0;
                     if(!(_loc2_ && param1))
                     {
                        §§push(this);
                        §§push(0.75);
                        if(_loc3_)
                        {
                           §§push(Math.random() * 1.5);
                           if(_loc3_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc3_)
                              {
                                 addr76:
                                 §§push(-§§pop());
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr85:
                                    §§push(§§pop() * param1);
                                 }
                              }
                              §§pop().§?!m§ = §§pop();
                              if(!_loc2_)
                              {
                                 this.§`!^§ = this.§?!m§;
                                 §§push(this);
                                 §§push(this.§"!a§);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(§§pop() * (Math.abs(this.§?!m§) / 3));
                                 }
                                 §§pop().§"!a§ = §§pop();
                                 if(_loc3_ || param1)
                                 {
                                    this.§=Z§ = this.§"!a§;
                                    if(!_loc2_)
                                    {
                                       §§push(this.mName);
                                       if(!_loc2_)
                                       {
                                          §§push("BIRD_WHITE");
                                          if(!_loc2_)
                                          {
                                             addr141:
                                             §§push(§§pop() == §§pop());
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop());
                                                if(_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            addr158:
                                                            §§push(this.mName);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr167:
                                                               §§push("BIRD_BLACK");
                                                               if(!_loc2_)
                                                               {
                                                                  addr170:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     addr178:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr182:
                                                                           §§pop();
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr189:
                                                                              if(this.mName == "RED_BIG")
                                                                              {
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    addr197:
                                                                                    this.§&!M§ = 0;
                                                                                    addr278:
                                                                                    return;
                                                                                    addr200:
                                                                                 }
                                                                                 §§goto(addr278);
                                                                              }
                                                                              else if(this.§"!a§ < 350)
                                                                              {
                                                                                 if(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    addr212:
                                                                                    this.§&!M§ = 0;
                                                                                 }
                                                                                 §§goto(addr278);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(Math.random() > 0.5)
                                                                                    {
                                                                                       addr224:
                                                                                       §§push(1);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr232:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§pop().§&!M§ = §§pop();
                                                                                       §§push(this);
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          if(Math.random() > 0.5)
                                                                                          {
                                                                                             addr257:
                                                                                             §§push(this.§&!M§);
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc3_ || param1)
                                                                                                {
                                                                                                }
                                                                                                addr277:
                                                                                                §§pop().§&!M§ = §§pop();
                                                                                                §§goto(addr278);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(Number(0));
                                                                                          }
                                                                                          §§goto(addr277);
                                                                                       }
                                                                                       §§goto(addr257);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(-1);
                                                                                    }
                                                                                    §§goto(addr232);
                                                                                 }
                                                                                 §§goto(addr224);
                                                                              }
                                                                              §§goto(addr278);
                                                                           }
                                                                           §§goto(addr212);
                                                                        }
                                                                     }
                                                                     §§goto(addr189);
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                }
                                                §§goto(addr178);
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr197);
                                 }
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr158);
                  }
               }
               §§goto(addr200);
            }
            §§goto(addr141);
         }
         §§goto(addr189);
      }
      
      public function §3G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§>E§);
            if(!_loc1_)
            {
               §§push(this.mX);
               if(!_loc1_)
               {
                  §§push(§7E§.§8!'§);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§pop().x = §§pop() / §§pop();
                     if(_loc2_)
                     {
                        §§push(this.§>E§);
                        if(!(_loc1_ && this))
                        {
                           §§push(this.mY);
                           if(_loc2_ || _loc2_)
                           {
                              addr83:
                              §§push(this.§"! §);
                              if(!_loc1_)
                              {
                                 addr87:
                                 §§push(§§pop() + §§pop());
                                 §§push(§7E§.§8!'§);
                              }
                              §§push(§§pop() / §§pop());
                           }
                           §§pop().y = §§pop();
                           if(_loc2_)
                           {
                              addr96:
                              this.§>E§.rotation = this.§;i§ / 180 * Math.PI;
                           }
                        }
                        §§goto(addr96);
                     }
                     return;
                  }
                  §§goto(addr87);
               }
               §§goto(addr83);
            }
         }
         §§goto(addr96);
      }
      
      public function §'!J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<'§ = true;
            this.§6!v§ = false;
            if(!(_loc2_ && _loc1_))
            {
               this.§]§ = false;
               if(_loc1_ || _loc1_)
               {
                  this.§6!X§ = 0;
                  this.§""§ = 0;
                  if(!_loc2_)
                  {
                     this.§"!a§ = 0;
                     §§push(this);
                     §§push(this.mY);
                     if(!_loc2_)
                     {
                        §§push(this.§=!-§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc1_ || _loc1_)
                           {
                              addr91:
                              §§push(§§pop() + this.radius);
                           }
                           §§pop().§;!F§ = §§pop();
                           this.§"!a§ = 0;
                           if(_loc1_)
                           {
                              addr98:
                              this.§"! § = 0;
                              this.§;i§ = 0;
                              addr104:
                              this.§`!^§ = 0;
                           }
                           this.§&!M§ = 0;
                           §§goto(addr110);
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr104);
               }
               §§goto(addr98);
            }
            addr110:
            return;
         }
         §§goto(addr98);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(!(_loc5_ && param2))
         {
            §§push(_loc3_);
            §§push(this.§%!+§);
            if(_loc4_ || param2)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!_loc5_)
               {
                  §§push(true);
                  if(_loc4_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr90:
                  §§push(false);
               }
               return §§pop();
            }
         }
         §§goto(addr90);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.mX);
            if(_loc6_ || param2)
            {
               §§push(param3);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc5_ && param3))
                  {
                     §§push(§§pop());
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc6_ || param1)
                           {
                              addr66:
                              §§push(this.mX);
                              if(_loc6_ || param3)
                              {
                                 §§push(param4);
                                 if(_loc6_)
                                 {
                                    §§goto(addr79);
                                 }
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr96);
                        }
                        addr79:
                        §§push(§§pop() <= §§pop());
                        §§push(§§pop() <= §§pop());
                        if(_loc6_ || this)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(!(_loc5_ && param2))
                              {
                                 addr96:
                                 §§push(this.mY);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(param1);
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(§§pop() >= §§pop());
                                       if(_loc6_ || this)
                                       {
                                          §§goto(addr131);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr135);
                           }
                        }
                        §§goto(addr131);
                     }
                     addr131:
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr135:
                           §§pop();
                           §§push(this.mY <= param2);
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr135);
               }
               §§goto(addr79);
            }
            §§goto(addr135);
         }
         §§goto(addr66);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.mX);
            if(!_loc4_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc4_ && param2))
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     §§pop();
                     addr43:
                     §§push(this.mY == param2);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(!§§pop());
                     }
                  }
                  if(§§pop())
                  {
                     _loc3_ = true;
                     if(!_loc5_)
                     {
                     }
                     addr98:
                     this.§""§ = 100;
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§3G§();
                        if(_loc5_ || param1)
                        {
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 addr121:
                                 this.§[6§.§!!=§();
                              }
                           }
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr121);
                  }
                  this.mX = param1;
                  if(_loc5_)
                  {
                     this.mY = param2;
                     if(_loc5_)
                     {
                        §§push(this);
                        §§push(this.mY);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + this.§=!-§);
                        }
                        §§pop().§;!F§ = §§pop();
                        if(_loc5_)
                        {
                           §§goto(addr98);
                        }
                     }
                     addr124:
                     return;
                  }
                  §§goto(addr121);
               }
            }
            §§goto(addr43);
         }
         §§goto(addr98);
      }
      
      public function §+!V§() : §7!J§
      {
         return this.§,!^§;
      }
      
      public function get § !7§() : Number
      {
         return this.§"!a§;
      }
      
      public function get § !w§() : Number
      {
         return this.§""§;
      }
      
      public function set § !w§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§""§ = param1;
         }
      }
      
      public function get §]f§() : Number
      {
         return this.§^3§;
      }
      
      public function get §`!i§() : Boolean
      {
         return this.§6!v§;
      }
      
      public function get radius() : Number
      {
         return this.§%!+§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§>E§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §]f§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§^3§ = param1;
         }
      }
      
      public function get §2!@§() : Number
      {
         return this.§ !a§;
      }
      
      public function set §2!@§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !a§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§7P§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§7P§ = param1;
         }
      }
   }
}
