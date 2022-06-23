package §3G§
{
   import §,!C§.§0v§;
   import §,!C§.§6m§;
   import §,!C§.§implements§;
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §5`§.§%F§;
   import §5`§.§+R§;
   import §7!=§.Texture;
   import §8u§.§0r§;
   import §>K§.§+;§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §6A§
   {
      
      public static const §+Z§:String = "ChannelSlingshot";
      
      public static const §2!,§:Number = 900;
      
      public static const §8g§:Number = 200;
      
      public static const § %§:Number = 200;
      
      public static const §[3§:Number = 1500;
      
      public static const §+e§:Number = 5000;
      
      public static const §-!4§:Number = 1000;
      
      public static const §&e§:Number = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+Z§ = "ChannelSlingshot";
            §2!,§ = 900;
            §8g§ = 200;
            if(!_loc1_)
            {
               § %§ = 200;
               if(!(_loc1_ && _loc2_))
               {
                  §[3§ = 1500;
                  addr63:
                  §+e§ = 5000;
                  if(_loc2_)
                  {
                     addr68:
                     §-!4§ = 1000;
                     if(_loc1_)
                     {
                     }
                     §§goto(addr76);
                  }
                  §&e§ = 1000;
               }
               addr76:
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr68);
      }
      
      protected var mName:String;
      
      protected var §^C§:Number;
      
      protected var §0§:Number;
      
      protected var §?q§:Number;
      
      protected var §#Y§:Number;
      
      private var §`v§:§implements§;
      
      protected var §@!$§:Number;
      
      protected var §'C§:Number = 1;
      
      private var §62§:Sprite;
      
      protected var §-!C§:§+R§;
      
      private var §^j§:§4K§;
      
      protected var §>!?§:§3X§;
      
      private var §`g§:Number;
      
      private var §3!D§:Boolean = false;
      
      private var §[%§:Boolean = false;
      
      protected var §"u§:Boolean = false;
      
      private var §[!6§:Number;
      
      private var § A§:Number = 0;
      
      private var §8!C§:Number = 0;
      
      private var §'!4§:Number = 0;
      
      private var §]z§:Number = 1000;
      
      private var §^k§:Number;
      
      private var §0i§:Number;
      
      private var §<A§:int;
      
      private var §3f§:Number = 0;
      
      protected var §>q§:Number;
      
      protected var §^5§:Number;
      
      private var §&1§:Number = 1;
      
      private var §=m§:Number = 0;
      
      private var §>E§:b2Vec2;
      
      private var §]H§:Number = 1;
      
      public function §6A§(param1:§3X§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         super();
         if(_loc7_ || param1)
         {
            this.§>!?§ = param1;
            if(!(_loc6_ && param1))
            {
               this.§62§ = param2;
               if(!_loc6_)
               {
                  this.mName = param3;
                  if(_loc7_)
                  {
                     this.§`v§ = §0v§.§&2§(this.mName).§#T§;
                     this.§^C§ = param4;
                     this.§0§ = param5;
                     if(!_loc6_)
                     {
                        addr71:
                        this.§?q§ = param4;
                        addr84:
                        this.§#Y§ = param5;
                        this.§@!$§ = 0;
                        this.§3!D§ = false;
                        if(_loc7_ || param2)
                        {
                           addr100:
                           this.§[%§ = false;
                           this.§ A§ = 0;
                           if(_loc7_)
                           {
                              this.§#!5§();
                           }
                        }
                     }
                     §§goto(addr84);
                  }
                  this.§>q§ = 0;
                  return;
               }
               §§goto(addr100);
            }
         }
         §§goto(addr71);
      }
      
      public function §9!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§3!D§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§62§);
            if(_loc1_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr48);
            }
            §§pop().dispose();
            if(_loc1_ || _loc2_)
            {
               this.§62§ = null;
            }
         }
         addr48:
         if(_loc1_)
         {
            §§push(this.§62§);
         }
      }
      
      public function §,5§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§[%§);
         if(!_loc2_)
         {
            §§push(!§§pop());
            if(!_loc2_)
            {
               addr24:
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(this.§3!D§);
                        if(_loc3_ || _loc3_)
                        {
                           addr41:
                           if(§§pop())
                           {
                              return;
                           }
                           §§push(this.§'C§);
                           if(!_loc2_)
                           {
                              §§push(0);
                              if(!(_loc2_ && param1))
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    addr56:
                                    this.§'!4§ = 0;
                                    if(_loc3_)
                                    {
                                       this.§3f§ = 0;
                                       if(_loc3_)
                                       {
                                          this.§@!$§ = 0;
                                          if(!_loc2_)
                                          {
                                             this.§0i§ = 0;
                                             if(_loc3_ || _loc3_)
                                             {
                                             }
                                             addr86:
                                             §§push(Number(Math.min(param1,this.§[!6§)));
                                             if(_loc3_)
                                             {
                                                param1 = §§pop();
                                                if(_loc3_)
                                                {
                                                   §§push(this);
                                                   §§push(this.§^C§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§>!?§.§^C§);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() - this.§^C§);
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr126);
                                                            }
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§goto(addr126);
                                                   }
                                                   addr126:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc3_ || this)
                                                   {
                                                      §§push(this.§[!6§);
                                                   }
                                                   §§pop().§^C§ = §§pop() + §§pop();
                                                   §§push(this);
                                                   §§push(this.§0§);
                                                   if(_loc3_ || param1)
                                                   {
                                                      §§push(param1);
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§>!?§.§0§);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            §§push(§§pop() - this.§0§);
                                                            if(_loc3_)
                                                            {
                                                               §§goto(addr177);
                                                            }
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   addr177:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc2_ && this))
                                                   {
                                                      §§push(this.§[!6§);
                                                   }
                                                   §§pop().§0§ = §§pop() + §§pop();
                                                   §§push(this);
                                                   §§push(this.§0§);
                                                   if(!(_loc2_ && this))
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(§§pop() / 50);
                                                         if(!_loc2_)
                                                         {
                                                            §§push(this.§[!6§);
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§push(§§pop() / §2!,§);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   §§pop().§0§ = §§pop();
                                                   §§push(this);
                                                   §§push(this.§@!$§);
                                                   if(_loc3_)
                                                   {
                                                      §§push(param1);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(360 - this.§@!$§);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§goto(addr246);
                                                         }
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   §§goto(addr246);
                                                }
                                                addr246:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc2_ && this))
                                                {
                                                   addr244:
                                                   §§push(§§pop() / this.§[!6§);
                                                }
                                                §§pop().§@!$§ = §§pop() + §§pop();
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§push(this);
                                                   §§push(this.§[!6§);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() - param1);
                                                   }
                                                   §§pop().§[!6§ = §§pop();
                                                   if(_loc3_ || param1)
                                                   {
                                                      addr281:
                                                      if(this.§[!6§ <= 0)
                                                      {
                                                         this.§^C§ = this.§>!?§.§^C§;
                                                         if(_loc2_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   this.§0§ = this.§>!?§.§0§;
                                                }
                                                this.§[%§ = false;
                                                this.§3!D§ = true;
                                                this.§@!$§ = 0;
                                                §§goto(addr304);
                                             }
                                             §§goto(addr281);
                                          }
                                          this.§'C§ = 0;
                                          if(!_loc2_)
                                          {
                                             §§goto(addr86);
                                          }
                                          §§goto(addr281);
                                       }
                                       addr304:
                                       this.§@!>§();
                                       return;
                                    }
                                    §§goto(addr281);
                                 }
                                 §§goto(addr86);
                              }
                           }
                           §§goto(addr281);
                        }
                        §§goto(addr41);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr41);
               }
            }
            §§goto(addr41);
         }
         §§goto(addr24);
      }
      
      public function §=U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[%§ = true;
            this.§[!6§ = §2!,§;
            if(!(_loc2_ && _loc2_))
            {
               this.§&6§(§implements§.§7l§);
               if(_loc1_)
               {
                  if(this.§3f§ != 0)
                  {
                     if(!_loc2_)
                     {
                        addr63:
                        §§push(this);
                        §§push(this.§0§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() + this.§3f§);
                        }
                        §§pop().§0§ = §§pop();
                        if(_loc1_)
                        {
                           addr74:
                           this.§3f§ = 0;
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr74);
         }
         §§goto(addr63);
      }
      
      public function §]o§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            §§push(this.§3!D§);
            if(!(_loc4_ && this))
            {
               §§push(!§§pop());
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(this.§>q§);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(0);
                              if(_loc3_)
                              {
                                 addr62:
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(this.§^5§);
                                       if(!_loc4_)
                                       {
                                          if(§§pop() > this.§>!?§.§33§.§0>§.§-F§)
                                          {
                                             §§push(this);
                                             §§push(this.§>!?§.§33§.§0>§.§-F§);
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(§§pop() - this.§^5§);
                                             }
                                             §§pop().§%B§(§§pop());
                                             if(_loc3_)
                                             {
                                                this.§>q§ = -1;
                                                addr97:
                                                §§push(this);
                                                §§push(this.§>q§);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§>q§ = §§pop();
                                                §§push(this.§>q§);
                                                if(!_loc4_)
                                                {
                                                   addr109:
                                                   §§push(0);
                                                   if(_loc3_)
                                                   {
                                                      addr112:
                                                      if(§§pop() <= §§pop())
                                                      {
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§goto(addr318);
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            if(!isNaN(this.§^5§))
                                                            {
                                                               §§push(this.§>!?§);
                                                               if(_loc3_ || param1)
                                                               {
                                                                  §§push(§§pop().§33§);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop().objects);
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop().§@F§(this.§^C§,this.§^5§));
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           addr206:
                                                                           §§push(int(§§pop()));
                                                                           if(!_loc4_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 §§goto(addr217);
                                                                              }
                                                                              addr318:
                                                                              if(!(_loc4_ && param1))
                                                                              {
                                                                                 addr131:
                                                                                 this.§>q§ = this.§'!4§;
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 addr217:
                                                                                 §§push(_loc2_);
                                                                              }
                                                                              this.§"u§ = false;
                                                                              this.§>q§ = 2000;
                                                                              §§goto(addr322);
                                                                           }
                                                                           addr218:
                                                                           if(§§pop() < 0)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr229:
                                                                                 §§push(this);
                                                                                 §§push(param1);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() / 100);
                                                                                 }
                                                                                 if(§§pop().§%B§(§§pop()))
                                                                                 {
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       this.§>q§ = -1;
                                                                                       addr251:
                                                                                       addr322:
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          addr122:
                                                                                          §§push(this.§'!4§);
                                                                                          §§push(0);
                                                                                       }
                                                                                       return;
                                                                                       addr240:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.§>q§ = 0;
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       §§goto(addr251);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr293:
                                                                                 this.§>q§ = -1;
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.§>!?§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop().§33§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr259:
                                                                                    §§push(§§pop().objects);
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop().§6!"§(§§pop()));
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!§§pop().§@!+§)
                                                                                             {
                                                                                                addr280:
                                                                                                this.§"u§ = false;
                                                                                                §§goto(addr293);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr302:
                                                                                                §§push(this.§>!?§.§33§.objects.§6!"§(_loc2_));
                                                                                             }
                                                                                             §§goto(addr322);
                                                                                          }
                                                                                          addr304:
                                                                                          if(§§pop().§-[§())
                                                                                          {
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                §§goto(addr318);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             this.§>q§ = 500;
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr302);
                                                                           }
                                                                        }
                                                                        §§goto(addr218);
                                                                     }
                                                                     §§goto(addr302);
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr302);
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                }
                                                §§goto(addr122);
                                             }
                                             §§goto(addr280);
                                          }
                                          §§goto(addr97);
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr240);
                                 }
                                 §§goto(addr322);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr229);
                  }
                  §§goto(addr62);
               }
            }
            §§goto(addr304);
         }
         §§goto(addr318);
      }
      
      public function §%B§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this);
         §§push(this.§0§);
         if(_loc2_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§0§ = §§pop();
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.§^5§);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§^5§ = §§pop();
            if(!_loc3_)
            {
               §§push(this.§^5§);
               if(!_loc3_)
               {
                  §§push(this.§>!?§);
                  if(!_loc3_)
                  {
                     §§push(§§pop().§33§);
                     if(_loc2_ || this)
                     {
                        §§push(§§pop().§0>§);
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop().§-F§);
                           if(!(_loc3_ && _loc2_))
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(_loc2_ || param1)
                                 {
                                    §§push(this.§^5§);
                                    if(!_loc3_)
                                    {
                                       addr105:
                                       addr104:
                                       addr103:
                                       addr102:
                                       addr100:
                                       §§push(§§pop() - this.§>!?§.§33§.§0>§.§-F§);
                                       if(!(_loc3_ && this))
                                       {
                                          addr113:
                                          §§push(Number(§§pop()));
                                       }
                                       param1 = §§pop();
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr122:
                                          §§push(this);
                                          §§push(this.§0§);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().§0§ = §§pop();
                                          if(_loc2_ || this)
                                          {
                                          }
                                          §§goto(addr173);
                                       }
                                       §§push(this);
                                       §§push(this.§^5§);
                                       if(_loc2_)
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().§^5§ = §§pop();
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          this.§@!>§();
                                          §§push(true);
                                          if(!(_loc3_ && this))
                                          {
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr173);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr173);
                              }
                              addr173:
                              this.§@!>§();
                              return false;
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr102);
               }
               §§goto(addr100);
            }
         }
         §§goto(addr122);
      }
      
      public function §#!5§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§%F§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§6m§ = §0v§.§&2§(this.mName).shape;
         §§push(_loc1_.§,W§());
         if(_loc5_ || this)
         {
            §§push(§6m§.§#a§);
            if(!(_loc4_ && _loc1_))
            {
               if(§§pop() == §§pop())
               {
                  this.§>E§ = _loc1_.§&!-§()[0];
                  this.§`g§ = _loc1_.§5;§;
               }
               else
               {
                  addr74:
                  if(_loc1_.§,W§() == §6m§.§8-§)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        this.§>E§ = new b2Vec2(0,0);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§goto(addr95);
                        }
                        §§goto(addr127);
                     }
                     addr95:
                     this.§`g§ = 1.5;
                     if(_loc5_ || this)
                     {
                        addr115:
                        this.§-!C§ = this.§>!?§.§33§.§ use§.§,!;§(this.mName);
                     }
                     if(!this.§-!C§)
                     {
                        addr127:
                        this.§^f§(null);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        this.§^f§(this.§-!C§.getFrame(0));
                     }
                     return;
                  }
               }
               §§goto(addr115);
            }
         }
         §§goto(addr74);
      }
      
      public function §^f§(param1:§%F§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(!_loc5_)
         {
            if(!param1)
            {
               addr26:
               _loc2_ = this.§>!?§.§6u§.textureManager.§9!?§();
               if(_loc4_ || _loc2_)
               {
                  addr58:
                  §§push(this.§^j§);
                  if(!_loc5_)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.§^j§ = new §4K§(_loc2_);
                           if(!(_loc5_ && this))
                           {
                              addr83:
                              this.§62§.addChild(this.§^j§);
                              if(_loc5_)
                              {
                              }
                              addr236:
                              this.§^j§.y = -this.§^j§.height / 2;
                              §§push(this.§^j§);
                              §§push(_loc3_);
                              if(_loc4_)
                              {
                                 §§goto(addr243);
                              }
                              §§goto(addr249);
                              addr229:
                              addr233:
                           }
                           addr102:
                           if(param1)
                           {
                              §§push(this.§^j§);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(param1.pivotX);
                                 if(_loc4_ || param1)
                                 {
                                    §§push(-§§pop());
                                    §§push(this.§>E§);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(§!E§.§#N§);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§pop().x = §§pop() - §§pop();
                                                §§push(this.§^j§);
                                                if(_loc4_)
                                                {
                                                   addr168:
                                                   §§push(-param1.pivotY);
                                                   §§push(this.§>E§.y);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      addr178:
                                                      §§push(§§pop() / §!E§.§#N§);
                                                   }
                                                }
                                                §§goto(addr249);
                                             }
                                             §§push(§§pop() - §§pop());
                                             if(_loc4_ || param1)
                                             {
                                                §§pop().y = §§pop();
                                                addr188:
                                             }
                                             else
                                             {
                                                addr209:
                                                §§push(2);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§pop().x = §§pop() / §§pop();
                                                   §§goto(addr229);
                                                }
                                                §§goto(addr236);
                                             }
                                             §§goto(addr236);
                                          }
                                       }
                                       §§goto(addr178);
                                    }
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr249);
                           }
                           else
                           {
                              §§push(this.§^j§);
                              §§push(this.§^j§);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(-§§pop().width);
                                 if(_loc4_ || this)
                                 {
                                    §§goto(addr209);
                                 }
                                 addr243:
                                 §§pop().scaleX = §§pop();
                                 if(!_loc5_)
                                 {
                                    addr249:
                                    this.§^j§.scaleY = _loc3_;
                                 }
                                 this.§@!>§();
                                 return;
                              }
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr188);
                     }
                     else
                     {
                        this.§^j§.texture = _loc2_;
                        if(!(_loc5_ && this))
                        {
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr236);
                  }
                  §§goto(addr249);
               }
               §§goto(addr83);
            }
            else
            {
               _loc2_ = param1.texture;
               if(_loc4_)
               {
                  §§push(param1.scale);
                  if(_loc4_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr58);
         }
         §§goto(addr26);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc5_)
         {
            this.§]o§(param1);
            if(_loc5_ || param3)
            {
               §§push(this.§[%§);
               if(!(_loc6_ && param3))
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        this.§'!4§ = 0;
                        if(!(_loc6_ && param2))
                        {
                           _loc4_ = false;
                           addr64:
                           if(this.mName != "BIRD_SARDINE")
                           {
                              if(!(_loc6_ && param3))
                              {
                                 this.§>i§(param1);
                                 this.§&&§(param1);
                                 addr75:
                                 if(_loc5_)
                                 {
                                    addr93:
                                    §§push(Boolean(_loc4_));
                                    if(!_loc6_)
                                    {
                                       addr97:
                                       §§push(§§pop());
                                       if(!(_loc6_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             addr106:
                                             §§pop();
                                             addr109:
                                             §§push(param3 == true);
                                          }
                                          if(§§pop())
                                          {
                                             addr111:
                                             this.§0!?§(param1,param2);
                                             §§goto(addr115);
                                          }
                                          addr115:
                                          return;
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr106);
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr64);
               }
               §§goto(addr97);
            }
            §§goto(addr106);
         }
         §§goto(addr111);
      }
      
      public function §>i§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§ A§);
         if(_loc3_)
         {
            §§push(0);
            if(!_loc2_)
            {
               if(§§pop() > §§pop())
               {
                  §§push(this);
                  §§push(this.§ A§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§ A§ = §§pop();
                  §§push(this.§ A§);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        addr55:
                        if(§§pop() <= §§pop())
                        {
                           this.§<;§();
                        }
                     }
                     else
                     {
                        addr64:
                        §§push(§§pop() <= §§pop());
                        if(!_loc2_)
                        {
                           §§push(§§pop());
                           if(_loc3_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§pop();
                                    if(!_loc2_)
                                    {
                                       addr95:
                                       §§push(Math.random() * §[3§ < param1);
                                       if(_loc3_)
                                       {
                                          addr99:
                                          if(§§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                §§goto(addr103);
                                             }
                                          }
                                          §§goto(addr110);
                                       }
                                       §§goto(addr103);
                                    }
                                    §§goto(addr106);
                                 }
                                 addr103:
                                 §§pop();
                                 if(_loc3_)
                                 {
                                    addr110:
                                    addr106:
                                    if(this.§>!?§.mSlingShotState)
                                    {
                                    }
                                    §§goto(addr113);
                                 }
                                 this.§3!,§();
                                 addr113:
                                 return;
                              }
                           }
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr110);
                  }
                  else
                  {
                     addr63:
                     §§push(0);
                  }
                  §§goto(addr64);
               }
               else
               {
                  §§push(this.§8!C§);
                  if(!_loc2_)
                  {
                     §§goto(addr63);
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr55);
         }
         §§goto(addr95);
      }
      
      public function §<;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§ A§ = 0;
            if(!_loc2_)
            {
               this.§^f§(this.§-!C§.getFrame(0));
            }
         }
      }
      
      public function §3!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.mName == "BIRD_SARDINE")
            {
               if(!_loc2_)
               {
                  §§goto(addr34);
               }
            }
            this.§ A§ = §8g§;
            if(!_loc2_)
            {
               this.§^f§(this.§-!C§.getSubAnimation("blink").getFrame(0));
            }
            return;
         }
         addr34:
      }
      
      public function §&&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§8!C§);
            if(!_loc2_)
            {
               §§push(0);
               if(_loc3_)
               {
                  if(§§pop() > §§pop())
                  {
                     §§goto(addr32);
                  }
                  else
                  {
                     §§push(this.§ A§);
                     if(_loc3_ || this)
                     {
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr69);
            }
            §§goto(addr61);
         }
         addr32:
         §§push(this);
         §§push(this.§8!C§);
         if(!_loc2_)
         {
            §§push(§§pop() - param1);
         }
         §§pop().§8!C§ = §§pop();
         if(_loc3_ || this)
         {
            §§push(this.§8!C§);
            if(_loc3_)
            {
               addr61:
               §§push(0);
               if(!(_loc2_ && this))
               {
                  addr69:
                  if(§§pop() <= §§pop())
                  {
                     if(_loc3_)
                     {
                        this.§do §();
                     }
                  }
               }
               §§goto(addr129);
            }
            else
            {
               addr84:
               §§push(0);
            }
            §§push(§§pop() <= §§pop());
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr112);
                  }
               }
               §§goto(addr126);
            }
            addr112:
            §§pop();
            if(!(_loc2_ && param1))
            {
               addr126:
               if(Math.random() * §+e§ < param1)
               {
               }
               §§goto(addr129);
            }
            this.§&6§();
            §§goto(addr129);
         }
         addr129:
      }
      
      public function §do §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§8!C§ = 0;
            if(!_loc2_)
            {
               addr23:
               this.§^f§(this.§-!C§.getFrame(0));
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §&6§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(this.mName == "BIRD_SARDINE")
            {
               if(!_loc4_)
               {
                  return;
               }
               §§goto(addr55);
            }
            else
            {
               §§push(this.§8!C§);
               if(_loc3_)
               {
                  §§push(0);
                  if(!(_loc4_ && param1))
                  {
                     if(§§pop() > §§pop())
                     {
                        this.§do §();
                        if(!_loc4_)
                        {
                           addr49:
                           if(this.§ A§ > 0)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr55);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr64);
                        }
                        addr55:
                        this.§<;§();
                        if(!(_loc4_ && param2))
                        {
                           addr64:
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§goto(addr97);
                           }
                           param1 = §§pop();
                           if(!(_loc4_ && param1))
                           {
                              §§goto(addr97);
                           }
                           §§goto(addr161);
                        }
                        addr97:
                        if(§§pop() < 0)
                        {
                           §§push(§implements§.§^d§);
                           if(!(_loc4_ && param1))
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        this.§8!C§ = § %§;
                        this.§^f§(this.§-!C§.getSubAnimation("yell").getFrame(0));
                        if(_loc3_ || this)
                        {
                           §§push(Boolean(this.§3!D§));
                           §§push(Boolean(this.§3!D§));
                           if(!(_loc4_ && this))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc4_ && param2))
                                 {
                                    §§pop();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§goto(addr152);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr161);
                              }
                           }
                           §§goto(addr157);
                        }
                        addr152:
                        §§push(this.§[%§);
                        if(!_loc4_)
                        {
                           addr157:
                           §§push(Boolean(§§pop()));
                           if(!Boolean(§§pop()))
                           {
                              if(!_loc4_)
                              {
                                 addr161:
                                 §§pop();
                                 addr162:
                                 §§push(param2);
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr166);
                              }
                              §§push(Boolean(§§pop()));
                           }
                        }
                        addr166:
                        if(§§pop())
                        {
                           §0r§.§>Y§(param1,this.§`v§);
                        }
                        else
                        {
                           §0r§.§>Y§(param1,this.§`v§,§+Z§);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr49);
            }
         }
         §§goto(addr64);
      }
      
      public function §0!?§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(!_loc6_)
         {
            §§push(this.§'!4§);
            if(_loc7_ || _loc3_)
            {
               §§push(0);
               if(_loc7_ || _loc3_)
               {
                  if(§§pop() > §§pop())
                  {
                     §§push(this);
                     §§push(this.§'!4§);
                     if(_loc7_ || param2)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§'!4§ = §§pop();
                     §§push(this.§'!4§);
                     if(_loc7_)
                     {
                        §§push(0);
                        if(!(_loc6_ && param1))
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc7_ || param1)
                              {
                                 var _loc4_:*;
                                 §§push((_loc4_ = this).§<A§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(_loc7_ || param2)
                                 {
                                    _loc4_.§<A§ = _loc5_;
                                 }
                                 §§push(this);
                                 §§push(this.§0i§);
                                 if(_loc7_ || param1)
                                 {
                                    §§push(§§pop() * 0.4);
                                 }
                                 §§pop().§0i§ = §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(this.§3!D§);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(!§§pop());
                                       if(_loc7_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc6_ && param2))
                                          {
                                             if(§§pop())
                                             {
                                                §§pop();
                                                §§push(this.§<A§);
                                                if(_loc7_)
                                                {
                                                   §§push(2);
                                                   if(_loc7_)
                                                   {
                                                      addr137:
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            addr143:
                                                            §§push(this.§<A§ > 1);
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  addr149:
                                                                  if(§§pop())
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(this.§0i§);
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           §§push(-1);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr166:
                                                                              addr165:
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 this.§0i§ = -1;
                                                                              }
                                                                              this.§^k§ = this.§0i§;
                                                                              if(!_loc6_)
                                                                              {
                                                                                 this.§'!4§ = §&e§;
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§'!4§);
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§push(§§pop() * (Math.abs(this.§^k§) / 2));
                                                                                    }
                                                                                    §§pop().§'!4§ = §§pop();
                                                                                    this.§]z§ = this.§'!4§;
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr210:
                                                                                       this.§@!$§ = 0;
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          this.§'C§ = 0;
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             addr504:
                                                                                             this.§@!>§();
                                                                                             addr296:
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr566:
                                                                                                §§push(!this.§[%§);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr571:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§goto(addr587);
                                                                                                   }
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr585:
                                                                                                   this.§>&§();
                                                                                                }
                                                                                             }
                                                                                             addr587:
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                addr581:
                                                                                                §§push(!this.§"u§);
                                                                                             }
                                                                                             return;
                                                                                             addr296:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr273:
                                                                                             §§goto(addr296);
                                                                                          }
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       §§goto(addr566);
                                                                                    }
                                                                                    §§goto(addr273);
                                                                                 }
                                                                                 §§goto(addr585);
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr387:
                                                                              §§push(§§pop() / §§pop());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr403:
                                                                                 addr402:
                                                                                 §§push(this.§'!4§);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    addr400:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    §§push(this.§]z§);
                                                                                 }
                                                                                 §§push(§§pop() / (§§pop() / 2));
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr415:
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§+;§.§=z§(_loc3_,false));
                                                                                       }
                                                                                       §§goto(addr585);
                                                                                    }
                                                                                 }
                                                                                 addr423:
                                                                                 _loc3_ = Number(§§pop());
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§^k§);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.§^k§);
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    §§pop().§3f§ = §§pop();
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr459:
                                                                                       §§push(this);
                                                                                       §§push(360);
                                                                                       §§push(§+;§);
                                                                                       §§push(this.§]z§);
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          §§push(this.§'!4§);
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                addr490:
                                                                                                §§push(§§pop() / this.§]z§);
                                                                                             }
                                                                                             §§push(§§pop() * §§pop().§=z§(§§pop()));
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() * this.§'C§);
                                                                                             }
                                                                                             §§pop().§@!$§ = §§pop();
                                                                                             §§goto(addr504);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr490);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr534:
                                                                                       §§push(this.§3!D§);
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          addr543:
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr558:
                                                                                             §§pop();
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                §§goto(addr566);
                                                                                             }
                                                                                             §§goto(addr581);
                                                                                          }
                                                                                          §§goto(addr571);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr571);
                                                                                 }
                                                                                 §§goto(addr585);
                                                                              }
                                                                              §§goto(addr415);
                                                                           }
                                                                        }
                                                                        §§goto(addr423);
                                                                     }
                                                                     §§goto(addr585);
                                                                  }
                                                                  §§goto(addr166);
                                                               }
                                                               else
                                                               {
                                                                  addr251:
                                                                  if(§§pop())
                                                                  {
                                                                     §§pop();
                                                                     §§push(param2);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        addr262:
                                                                        if(§§pop())
                                                                        {
                                                                           this.§>&§(2.25);
                                                                           if(!(_loc6_ && param2))
                                                                           {
                                                                              §§goto(addr273);
                                                                           }
                                                                           §§goto(addr504);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.§'!4§ = 0;
                                                                           this.§3f§ = 0;
                                                                           this.§@!$§ = 0;
                                                                        }
                                                                        this.§0i§ = 0;
                                                                        §§goto(addr504);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr522:
                                                                        §§push(§§pop());
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           addr530:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr534);
                                                                              }
                                                                              §§goto(addr581);
                                                                           }
                                                                           §§goto(addr534);
                                                                        }
                                                                     }
                                                                     §§goto(addr571);
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr235:
                                                               §§push(!§§pop());
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     §§goto(addr251);
                                                                  }
                                                                  §§goto(addr530);
                                                               }
                                                            }
                                                            §§goto(addr522);
                                                         }
                                                         else
                                                         {
                                                            addr329:
                                                            §§push(this.§]z§);
                                                            if(_loc7_)
                                                            {
                                                               §§push(this.§'!4§);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     addr340:
                                                                     §§push(this.§]z§);
                                                                     §§push(2);
                                                                     if(_loc7_)
                                                                     {
                                                                        addr347:
                                                                        §§push(Number(§§pop() / (§§pop() / §§pop())));
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           §§push(Number(§+;§.§=z§(_loc3_)));
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              §§push(this);
                                                                              §§push(_loc3_);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(§§pop() * this.§^k§);
                                                                              }
                                                                              §§pop().§3f§ = §§pop();
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 addr383:
                                                                                 §§goto(addr459);
                                                                              }
                                                                              §§goto(addr566);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr423);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr415);
                                                                        }
                                                                        §§goto(addr585);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr403);
                                                                     }
                                                                  }
                                                                  §§goto(addr347);
                                                               }
                                                               else
                                                               {
                                                                  addr514:
                                                                  §§push(§§pop() < §§pop());
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§goto(addr522);
                                                                  }
                                                               }
                                                               §§goto(addr543);
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§3!D§);
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr235);
                                                         }
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                }
                                                §§goto(addr143);
                                             }
                                             §§goto(addr137);
                                          }
                                          §§goto(addr149);
                                       }
                                       §§goto(addr558);
                                    }
                                    §§goto(addr571);
                                 }
                                 §§goto(addr329);
                              }
                              §§goto(addr504);
                           }
                           else
                           {
                              §§push(this.§'!4§);
                              if(!(_loc6_ && this))
                              {
                                 §§push(this.§]z§);
                                 if(_loc7_)
                                 {
                                    §§push(2);
                                    if(_loc7_ || this)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!_loc6_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc7_ || param2)
                                             {
                                                §§goto(addr329);
                                             }
                                             §§goto(addr459);
                                          }
                                          else
                                          {
                                             addr386:
                                             §§goto(addr387);
                                             §§push(this.§]z§);
                                             §§push(2);
                                          }
                                          §§goto(addr415);
                                       }
                                       §§goto(addr347);
                                    }
                                    §§goto(addr403);
                                 }
                                 §§goto(addr402);
                              }
                              §§goto(addr386);
                           }
                        }
                        §§goto(addr387);
                     }
                     §§goto(addr400);
                  }
                  else
                  {
                     §§push(Math.random() * §-!4§);
                     §§push(param1);
                  }
                  §§goto(addr514);
               }
               §§goto(addr165);
            }
            §§goto(addr386);
         }
         §§goto(addr383);
      }
      
      public function §>&§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.mName);
         if(!_loc3_)
         {
            §§push("BIRD_SARDINE");
            if(_loc2_)
            {
               if(§§pop() == §§pop())
               {
                  return;
               }
               this.§<A§ = 0;
               if(_loc2_ || this)
               {
                  this.§'!4§ = §&e§;
                  if(_loc2_)
                  {
                     this.§3f§ = 0;
                     if(_loc2_)
                     {
                        §§push(this);
                        §§push(0.75);
                        if(_loc2_)
                        {
                           §§push(Math.random() * 1.5);
                           if(_loc2_ || param1)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc3_ && this))
                              {
                                 addr68:
                                 §§push(-§§pop());
                                 if(_loc2_)
                                 {
                                    addr72:
                                    §§push(§§pop() * param1);
                                 }
                              }
                              §§pop().§^k§ = §§pop();
                              this.§0i§ = this.§^k§;
                              if(_loc2_)
                              {
                                 §§push(this);
                                 §§push(this.§'!4§);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() * (Math.abs(this.§^k§) / 3));
                                 }
                                 §§pop().§'!4§ = §§pop();
                                 this.§]z§ = this.§'!4§;
                                 if(_loc2_)
                                 {
                                    §§push(this.mName);
                                    if(_loc2_)
                                    {
                                       addr103:
                                       §§push("BIRD_WHITE");
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc3_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      §§pop();
                                                      §§push(this.mName);
                                                      if(_loc2_ || param1)
                                                      {
                                                         §§push("BIRD_BLACK");
                                                         if(_loc2_)
                                                         {
                                                            addr143:
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               addr151:
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                  }
                                                                  addr167:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        addr175:
                                                                        this.§'C§ = 0;
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr265:
                                                                           return;
                                                                           addr180:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr185:
                                                                           this.§'C§ = 0;
                                                                           if(_loc3_)
                                                                           {
                                                                           }
                                                                           §§goto(addr265);
                                                                        }
                                                                        §§goto(addr265);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr221:
                                                                        §§push(this);
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           if(Math.random() > 0.5)
                                                                           {
                                                                              addr244:
                                                                              §§push(this.§'C§);
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc2_ || param1)
                                                                                 {
                                                                                 }
                                                                                 addr264:
                                                                                 §§pop().§'C§ = §§pop();
                                                                                 §§goto(addr265);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(Number(0));
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        §§goto(addr244);
                                                                     }
                                                                  }
                                                                  else if(this.§'!4§ < 350)
                                                                  {
                                                                     §§goto(addr185);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this);
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(Math.random() > 0.5)
                                                                        {
                                                                           addr199:
                                                                           §§push(1);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr212:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§pop().§'C§ = §§pop();
                                                                           if(_loc2_ || param1)
                                                                           {
                                                                              §§goto(addr221);
                                                                           }
                                                                           §§goto(addr265);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(-1);
                                                                        }
                                                                        §§goto(addr212);
                                                                     }
                                                                     §§goto(addr199);
                                                                  }
                                                                  §§goto(addr185);
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            §§pop();
                                                            if(_loc2_ || this)
                                                            {
                                                               addr166:
                                                               §§push(this.mName == "RED_BIG");
                                                            }
                                                            §§goto(addr265);
                                                         }
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr167);
                                                }
                                             }
                                          }
                                          §§goto(addr151);
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr265);
               }
               §§goto(addr180);
            }
            §§goto(addr143);
         }
         §§goto(addr103);
      }
      
      public function §@!>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§62§);
            if(_loc1_)
            {
               §§push(this.§^C§);
               if(_loc1_)
               {
                  §§push(§!E§.§#N§);
                  if(_loc1_ || _loc2_)
                  {
                     §§pop().x = §§pop() / §§pop();
                     if(_loc1_ || this)
                     {
                        §§push(this.§62§);
                        if(_loc1_ || this)
                        {
                           §§push(this.§0§);
                           if(_loc1_)
                           {
                              §§push(this.§3f§);
                              if(!(_loc2_ && this))
                              {
                                 addr76:
                                 §§push(§§pop() + §§pop());
                                 §§push(§!E§.§#N§);
                              }
                              §§push(§§pop() / §§pop());
                              if(_loc1_ || _loc2_)
                              {
                                 §§pop().y = §§pop();
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr107:
                                    addr105:
                                    §§push(this.§62§);
                                    §§push(this.§@!$§);
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr116:
                                       §§push(§§pop() / 180);
                                       if(_loc1_ || _loc2_)
                                       {
                                          addr125:
                                          §§push(§§pop() * Math.PI);
                                       }
                                    }
                                    §§pop().rotation = §§pop();
                                    §§goto(addr129);
                                 }
                                 addr129:
                                 return;
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr107);
         }
         §§goto(addr105);
      }
      
      public function §34§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"u§ = true;
            this.§3!D§ = false;
            this.§[%§ = false;
            if(!_loc2_)
            {
               this.§<A§ = 0;
               if(_loc1_ || _loc2_)
               {
                  this.§>q§ = 0;
                  if(_loc1_)
                  {
                     this.§'!4§ = 0;
                     if(_loc1_)
                     {
                        this.§'!4§ = 0;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr79);
                        }
                     }
                     §§goto(addr90);
                  }
                  addr79:
                  this.§3f§ = 0;
                  §§goto(addr82);
               }
            }
            addr82:
            this.§@!$§ = 0;
            if(_loc1_)
            {
               addr87:
               this.§0i§ = 0;
               addr90:
               this.§'C§ = 0;
            }
            return;
         }
         §§goto(addr87);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.sqrt((param1 - this.§^C§) * (param1 - this.§^C§) + (param2 - this.§0§) * (param2 - this.§0§));
         if(!_loc4_)
         {
            §§push(_loc3_);
            §§push(this.§`g§);
            if(!_loc4_)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!(_loc4_ && param1))
               {
                  §§push(true);
                  if(_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr81:
                  §§push(false);
               }
               return §§pop();
            }
         }
         §§goto(addr81);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§^C§);
            if(_loc6_ || param2)
            {
               §§push(param3);
               if(_loc6_)
               {
                  §§push(§§pop() >= §§pop());
                  §§push(§§pop() >= §§pop());
                  if(_loc6_ || param2)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           addr54:
                           §§push(this.§^C§);
                           if(!_loc5_)
                           {
                              §§push(param4);
                              if(!(_loc5_ && param1))
                              {
                                 addr67:
                                 §§push(§§pop() <= §§pop());
                                 §§push(§§pop() <= §§pop());
                                 if(_loc6_ || this)
                                 {
                                    addr75:
                                    if(§§pop())
                                    {
                                       if(_loc6_ || this)
                                       {
                                          §§pop();
                                          if(!(_loc5_ && param3))
                                          {
                                             addr101:
                                             §§push(this.§0§);
                                             if(!_loc5_)
                                             {
                                                addr105:
                                                §§push(param1);
                                                if(!_loc5_)
                                                {
                                                   return §§pop() >= §§pop() && this.§0§ <= param2;
                                                   addr109:
                                                }
                                             }
                                          }
                                          §§goto(addr115);
                                       }
                                    }
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr75);
               }
               §§goto(addr67);
            }
            §§goto(addr115);
         }
         §§goto(addr54);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = false;
         if(_loc4_)
         {
            §§push(this.§^C§);
            if(!_loc5_)
            {
               §§push(param1);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() != §§pop());
                  if(!(§§pop() != §§pop()))
                  {
                     §§pop();
                     addr50:
                     §§push(this.§0§ == param2);
                     if(!(_loc5_ && param1))
                     {
                        §§push(!§§pop());
                     }
                  }
                  if(§§pop())
                  {
                     §§push(true);
                     if(_loc4_ || this)
                     {
                        _loc3_ = §§pop();
                        if(_loc4_)
                        {
                           addr81:
                           this.§^C§ = param1;
                           this.§0§ = param2;
                           if(!_loc5_)
                           {
                              this.§>q§ = 100;
                              this.§@!>§();
                           }
                        }
                        §§push(_loc3_);
                     }
                     if(§§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           this.§>!?§.§@-§();
                        }
                     }
                     return;
                  }
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §!`§() : §4K§
      {
         return this.§^j§;
      }
      
      public function get §!!!§() : Number
      {
         return this.§'!4§;
      }
      
      public function get §51§() : Number
      {
         return this.§>q§;
      }
      
      public function set §51§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>q§ = param1;
         }
      }
      
      public function get §0!=§() : Number
      {
         return this.§&1§;
      }
      
      public function get §4!%§() : Boolean
      {
         return this.§3!D§;
      }
      
      public function get radius() : Number
      {
         return this.§`g§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§62§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §0!=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§&1§ = param1;
         }
      }
      
      public function get §"@§() : Number
      {
         return this.§=m§;
      }
      
      public function set §"@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§=m§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§]H§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§]H§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§^C§;
      }
      
      public function get y() : Number
      {
         return this.§0§;
      }
      
      public function get §]O§() : Number
      {
         return this.§?q§;
      }
      
      public function get §@'§() : Number
      {
         return this.§#Y§;
      }
   }
}
