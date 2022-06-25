package §%x§
{
   import §-!0§.§4b§;
   import §-!0§.§9X§;
   import §0!<§.§>!!§;
   import §?^§.§8!?§;
   import §?^§.Sprite;
   import §]!9§.§>2§;
   import §`K§.§0r§;
   import §`K§.§2z§;
   import §`K§.§3n§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import each.Texture;
   
   public class §0Y§
   {
      
      public static const §,]§:String = "ChannelSlingshot";
      
      public static const §,M§:Number = 900;
      
      public static const §&!'§:Number = 200;
      
      public static const §5!$§:Number = 200;
      
      public static const §,8§:Number = 1500;
      
      public static const §[!'§:Number = 5000;
      
      public static const §]T§:Number = 1000;
      
      public static const §"!F§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §0Y§))
         {
            §,]§ = "ChannelSlingshot";
            if(_loc1_)
            {
               §,M§ = 900;
               addr51:
               §&!'§ = 200;
               if(!_loc2_)
               {
                  §5!$§ = 200;
                  §,8§ = 1500;
                  §[!'§ = 5000;
                  if(_loc1_)
                  {
                     §§goto(addr67);
                  }
               }
               §§goto(addr77);
            }
            addr67:
            §]T§ = 1000;
            if(_loc1_ || _loc2_)
            {
               addr77:
               §"!F§ = 1000;
            }
            return;
         }
         §§goto(addr51);
      }
      
      protected var mName:String;
      
      protected var §5!>§:Number;
      
      protected var §#!$§:Number;
      
      protected var §2f§:Number;
      
      protected var §#j§:Number;
      
      private var §]`§:§0r§;
      
      protected var §+H§:Number;
      
      protected var §#%§:Number = 1;
      
      private var §0W§:Sprite;
      
      protected var §=!'§:§4b§;
      
      private var §;!G§:§8!?§;
      
      protected var §@3§:§3=§;
      
      private var §,N§:Number;
      
      private var §4Q§:Boolean = false;
      
      private var §9I§:Boolean = false;
      
      protected var §'A§:Boolean = false;
      
      private var §]0§:Number;
      
      private var §@7§:Number = 0;
      
      private var §9m§:Number = 0;
      
      private var §&%§:Number = 0;
      
      private var §%l§:Number = 1000;
      
      private var §0S§:Number;
      
      private var §=J§:Number;
      
      private var §5^§:int;
      
      private var §!!B§:Number = 0;
      
      protected var §7h§:Number;
      
      protected var §!!5§:Number;
      
      private var § V§:Number = 1;
      
      private var §3§:Number = 0;
      
      private var §94§:b2Vec2;
      
      private var §=!%§:Number = 1;
      
      public function §0Y§(param1:§3=§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
            if(_loc6_)
            {
               this.§@3§ = param1;
               if(_loc6_)
               {
                  this.§0W§ = param2;
                  if(_loc6_ || param2)
                  {
                     this.mName = param3;
                     if(_loc6_ || param3)
                     {
                        this.§]`§ = §3n§.§]B§(this.mName).§6!6§;
                        if(!_loc7_)
                        {
                           this.§5!>§ = param4;
                           if(!(_loc7_ && param3))
                           {
                              addr76:
                              this.§#!$§ = param5;
                           }
                           §§goto(addr132);
                        }
                        this.§2f§ = param4;
                        if(!(_loc7_ && param1))
                        {
                           addr89:
                           this.§#j§ = param5;
                           if(!(_loc7_ && param2))
                           {
                              this.§+H§ = 0;
                              this.§4Q§ = false;
                              if(!_loc7_)
                              {
                                 addr117:
                                 this.§9I§ = false;
                              }
                              this.§@7§ = 0;
                              if(_loc6_ || param3)
                              {
                                 this.§5y§();
                              }
                           }
                        }
                        §§goto(addr132);
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr117);
            }
            §§goto(addr89);
         }
         addr132:
         this.§7h§ = 0;
      }
      
      public function §^!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§4Q§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§0W§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr47:
                     this.§0W§.dispose();
                     if(_loc1_ || _loc2_)
                     {
                     }
                     §§goto(addr58);
                  }
                  this.§0W§ = null;
                  §§goto(addr58);
               }
               addr58:
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function §1Q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§9I§);
            if(!(_loc2_ && param1))
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        addr35:
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(this.§4Q§);
                           if(_loc3_ || this)
                           {
                              addr48:
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                                 addr310:
                                 this.§9I§ = false;
                                 if(_loc3_)
                                 {
                                    this.§4Q§ = true;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr325:
                                       this.§+H§ = 0;
                                       if(_loc3_)
                                       {
                                          addr330:
                                          this.§6i§();
                                       }
                                    }
                                    return;
                                 }
                              }
                              else
                              {
                                 §§push(this.§#%§);
                                 if(_loc3_)
                                 {
                                    §§push(0);
                                    if(_loc3_ || param1)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§&%§ = 0;
                                             if(_loc3_)
                                             {
                                                this.§!!B§ = 0;
                                                this.§+H§ = 0;
                                                this.§=J§ = 0;
                                                addr88:
                                                this.§#%§ = 0;
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr98:
                                                   §§push(Number(Math.min(param1,this.§]0§)));
                                                   if(!_loc2_)
                                                   {
                                                      param1 = §§pop();
                                                      if(_loc3_ || param1)
                                                      {
                                                         addr114:
                                                         §§push(this);
                                                         §§push(this.§5!>§);
                                                         if(_loc3_)
                                                         {
                                                            §§push(param1);
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§push(this.§@3§.§5!>§);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() - this.§5!>§);
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     addr163:
                                                                     addr142:
                                                                     addr164:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(this.§]0§);
                                                                     }
                                                                     §§pop().§5!>§ = §§pop() + §§pop();
                                                                     §§push(this);
                                                                     §§push(this.§#!$§);
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(param1);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(this.§@3§.§#!$§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop() - this.§#!$§);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr199:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    §§push(this.§]0§);
                                                                                 }
                                                                                 §§pop().§#!$§ = §§pop() + §§pop();
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§#!$§);
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          addr233:
                                                                                          §§push(§§pop() / 50);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr225:
                                                                                             §§push(this.§]0§);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(§§pop() / §,M§);
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          §§pop().§#!$§ = §§pop() - §§pop();
                                                                                          §§push(this);
                                                                                          §§push(this.§+H§);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                §§push(360 - this.§+H§);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr265:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc2_ && this))
                                                                                                   {
                                                                                                      addr263:
                                                                                                      §§push(§§pop() / this.§]0§);
                                                                                                   }
                                                                                                   §§pop().§+H§ = §§pop() + §§pop();
                                                                                                   §§push(this);
                                                                                                   §§push(this.§]0§);
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() - param1);
                                                                                                   }
                                                                                                   §§pop().§]0§ = §§pop();
                                                                                                   if(this.§]0§ <= 0)
                                                                                                   {
                                                                                                      addr283:
                                                                                                      this.§5!>§ = this.§@3§.§5!>§;
                                                                                                      if(_loc3_ || param1)
                                                                                                      {
                                                                                                         this.§#!$§ = this.§@3§.§#!$§;
                                                                                                         §§goto(addr310);
                                                                                                      }
                                                                                                      §§goto(addr325);
                                                                                                   }
                                                                                                   §§goto(addr330);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr263);
                                                                                          }
                                                                                          §§goto(addr265);
                                                                                       }
                                                                                       §§goto(addr225);
                                                                                    }
                                                                                    §§goto(addr233);
                                                                                 }
                                                                                 §§goto(addr283);
                                                                              }
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr199);
                                                                  }
                                                                  §§goto(addr163);
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               §§goto(addr142);
                                                            }
                                                            §§goto(addr163);
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                   §§goto(addr265);
                                                }
                                             }
                                             §§goto(addr114);
                                          }
                                          §§goto(addr325);
                                       }
                                       §§goto(addr98);
                                    }
                                 }
                                 §§goto(addr265);
                              }
                              §§goto(addr330);
                           }
                           §§goto(addr48);
                        }
                        §§goto(addr114);
                     }
                  }
               }
               §§goto(addr48);
            }
            §§goto(addr35);
         }
         §§goto(addr88);
      }
      
      public function §[U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9I§ = true;
            if(!_loc1_)
            {
               this.§]0§ = §,M§;
               if(!(_loc1_ && _loc2_))
               {
                  this.§-X§(§0r§.§"!A§);
                  if(_loc2_)
                  {
                     addr60:
                     if(this.§!!B§ != 0)
                     {
                        §§push(this);
                        §§push(this.§#!$§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§pop() + this.§!!B§);
                        }
                        §§pop().§#!$§ = §§pop();
                        if(!_loc1_)
                        {
                           addr80:
                           this.§!!B§ = 0;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr80);
            }
         }
         §§goto(addr60);
      }
      
      public function §'U§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!_loc3_)
         {
            §§push(this.§4Q§);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     §§pop();
                     §§push(this.§7h§);
                     if(_loc4_)
                     {
                        §§push(0);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop() >= §§pop());
                           if(_loc4_)
                           {
                              addr51:
                              if(§§pop())
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(this.§!!5§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(§§pop() > this.§@3§.§7C§.§`,§.§=s§)
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(this);
                                             §§push(this.§@3§.§7C§.§`,§.§=s§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() - this.§!!5§);
                                             }
                                             §§pop().§8%§(§§pop());
                                             if(!_loc3_)
                                             {
                                                this.§7h§ = -1;
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr100:
                                                   §§push(this);
                                                   §§push(this.§7h§);
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push(§§pop() - param1);
                                                   }
                                                   §§pop().§7h§ = §§pop();
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   addr333:
                                                   return;
                                                   addr245:
                                                }
                                                §§push(this.§7h§);
                                                if(!_loc3_)
                                                {
                                                   addr119:
                                                   §§push(0);
                                                   if(!_loc3_)
                                                   {
                                                      addr122:
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            addr133:
                                                            if(this.§&%§ > 0)
                                                            {
                                                               addr134:
                                                               this.§7h§ = this.§&%§;
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  return;
                                                               }
                                                               §§goto(addr333);
                                                            }
                                                            else
                                                            {
                                                               §§push(0);
                                                               if(!_loc3_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(!isNaN(this.§!!5§))
                                                                  {
                                                                     §§push(this.§@3§);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        §§push(§§pop().§7C§);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop().objects);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop().§2j§(this.§5!>§,this.§!!5§));
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 addr192:
                                                                                 §§push(int(§§pop()));
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       addr209:
                                                                                       if(_loc2_ < 0)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(param1);
                                                                                          if(!(_loc3_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() / 100);
                                                                                          }
                                                                                          if(!§§pop().§8%§(§§pop()))
                                                                                          {
                                                                                             this.§7h§ = 0;
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§goto(addr245);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr329:
                                                                                                §§goto(addr333);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(this.§@3§);
                                                                                          if(!(_loc3_ && param1))
                                                                                          {
                                                                                             addr255:
                                                                                             §§push(§§pop().§7C§);
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                addr263:
                                                                                                §§push(§§pop().objects);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr266:
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop().§!6§(§§pop()));
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         addr283:
                                                                                                         if(!§§pop().§[&§)
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               this.§'A§ = false;
                                                                                                               this.§7h§ = -1;
                                                                                                            }
                                                                                                            §§goto(addr333);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr313:
                                                                                                            §§push(this.§@3§.§7C§.objects.§!6§(_loc2_));
                                                                                                         }
                                                                                                         §§goto(addr333);
                                                                                                      }
                                                                                                      addr315:
                                                                                                      if(§§pop().§0!@§())
                                                                                                      {
                                                                                                         addr316:
                                                                                                         this.§'A§ = false;
                                                                                                         if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            this.§7h§ = 2000;
                                                                                                            §§goto(addr329);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.§7h§ = 500;
                                                                                                      }
                                                                                                      §§goto(addr333);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr313);
                                                                                       }
                                                                                    }
                                                                                    this.§7h§ = -1;
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       addr234:
                                                                                    }
                                                                                    §§goto(addr333);
                                                                                 }
                                                                              }
                                                                              §§goto(addr209);
                                                                           }
                                                                           §§goto(addr266);
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                                  §§goto(addr209);
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                }
                                                §§goto(addr133);
                                             }
                                             §§goto(addr316);
                                          }
                                       }
                                       §§goto(addr100);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr315);
               }
            }
            §§goto(addr51);
         }
         §§goto(addr100);
      }
      
      public function §8%§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this);
         §§push(this.§#!$§);
         if(_loc3_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§#!$§ = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.§!!5§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§!!5§ = §§pop();
            §§push(this.§!!5§);
            if(_loc3_)
            {
               §§push(this.§@3§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop().§7C§);
                  if(_loc3_)
                  {
                     §§push(§§pop().§`,§);
                     if(!_loc2_)
                     {
                        §§push(§§pop().§=s§);
                        if(_loc3_ || this)
                        {
                           if(§§pop() > §§pop())
                           {
                              §§push(this.§!!5§);
                              if(!(_loc2_ && this))
                              {
                                 addr92:
                                 addr91:
                                 addr90:
                                 addr89:
                                 §§push(§§pop() - this.§@3§.§7C§.§`,§.§=s§);
                                 if(_loc3_ || param1)
                                 {
                                 }
                                 addr101:
                                 param1 = §§pop();
                                 if(_loc3_)
                                 {
                                    §§push(this);
                                    §§push(this.§#!$§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§#!$§ = §§pop();
                                    §§push(this);
                                    §§push(this.§!!5§);
                                    if(_loc3_ || this)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§!!5§ = §§pop();
                                    §§goto(addr135);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr101);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr90);
               }
               §§goto(addr89);
            }
            §§goto(addr92);
         }
         addr135:
         this.§6i§();
         if(_loc3_)
         {
            addr139:
            §§push(true);
            if(_loc3_ || _loc2_)
            {
               return §§pop();
            }
         }
         else
         {
            addr148:
            this.§6i§();
            §§push(false);
         }
         return §§pop();
      }
      
      public function §5y§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§9X§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§2z§ = §3n§.§]B§(this.mName).shape;
         if(!(_loc4_ && _loc1_))
         {
            §§push(_loc1_.§'4§());
            if(!_loc4_)
            {
               §§push(§2z§.§,j§);
               if(!(_loc4_ && _loc1_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§94§ = _loc1_.§!!H§()[0];
                        if(_loc4_)
                        {
                        }
                        addr108:
                        this.§=!'§ = this.§@3§.§7C§.§+!!§.§,V§(this.mName);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr134);
                        }
                        §§goto(addr144);
                     }
                     this.§,N§ = _loc1_.§9p§;
                     if(_loc5_)
                     {
                        §§goto(addr108);
                     }
                     §§goto(addr144);
                  }
                  else
                  {
                     addr87:
                     if(_loc1_.§'4§() == §2z§.§#!B§)
                     {
                        if(_loc5_)
                        {
                           this.§94§ = new b2Vec2(0,0);
                           if(_loc5_)
                           {
                              this.§,N§ = 1.5;
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§goto(addr108);
                              }
                              §§goto(addr144);
                           }
                           addr134:
                           if(!this.§=!'§)
                           {
                              if(_loc5_ || this)
                              {
                                 addr144:
                                 this.§&<§(null);
                                 if(!_loc5_)
                                 {
                                 }
                                 §§goto(addr156);
                              }
                           }
                           else
                           {
                              this.§&<§(this.§=!'§.getFrame(0));
                           }
                           addr156:
                           return;
                        }
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr108);
               }
            }
            §§goto(addr87);
         }
         §§goto(addr144);
      }
      
      public function §&<§(param1:§9X§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(_loc5_ || this)
         {
            if(!param1)
            {
               addr32:
               _loc2_ = this.§@3§.§!-§.textureManager.§?K§();
            }
            else
            {
               _loc2_ = param1.texture;
               if(!(_loc4_ && _loc3_))
               {
                  §§push(param1.scale);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            if(this.§;!G§ == null)
            {
               this.§;!G§ = new §8!?§(_loc2_);
               this.§0W§.addChild(this.§;!G§);
               addr78:
               if(param1)
               {
                  if(_loc5_)
                  {
                     §§push(this.§;!G§);
                     §§push(param1.pivotX);
                     if(_loc5_ || this)
                     {
                        §§push(-§§pop());
                        §§push(this.§94§);
                        if(!_loc4_)
                        {
                           §§push(§§pop().x);
                           if(!(_loc4_ && param1))
                           {
                              §§push(§#;§.§`!2§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() / §§pop());
                                 if(_loc5_)
                                 {
                                    §§pop().x = §§pop() - §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(this.§;!G§);
                                       if(!(_loc4_ && param1))
                                       {
                                          §§goto(addr138);
                                       }
                                       else
                                       {
                                          addr213:
                                          §§pop().y = -this.§;!G§.height / 2;
                                          addr208:
                                       }
                                    }
                                    §§goto(addr215);
                                 }
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr148);
                     }
                     addr138:
                     §§push(-param1.pivotY);
                     if(_loc5_ || _loc2_)
                     {
                        addr148:
                        §§push(this.§94§.y);
                        if(_loc5_ || this)
                        {
                           addr159:
                           §§push(§§pop() - §§pop() / §#;§.§`!2§);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§pop().y = §§pop();
                              addr217:
                              this.§;!G§.scaleX = _loc3_;
                              §§push(this.§;!G§);
                              §§push(_loc3_);
                              addr215:
                              addr168:
                           }
                        }
                        §§goto(addr159);
                     }
                     §§pop().scaleY = §§pop();
                     if(!_loc4_)
                     {
                        this.§6i§();
                     }
                     return;
                  }
                  §§goto(addr168);
               }
               else
               {
                  §§push(this.§;!G§);
                  if(!(_loc4_ && this))
                  {
                     §§push(this.§;!G§);
                     if(!_loc4_)
                     {
                        §§push(-§§pop().width);
                        if(_loc5_ || this)
                        {
                           §§push(2);
                           if(!_loc4_)
                           {
                              §§pop().x = §§pop() / §§pop();
                              §§goto(addr208);
                              §§push(this.§;!G§);
                           }
                        }
                     }
                     §§goto(addr213);
                  }
               }
               §§goto(addr217);
            }
            else
            {
               this.§;!G§.texture = _loc2_;
               if(_loc5_)
               {
                  §§goto(addr78);
               }
            }
            §§goto(addr217);
         }
         §§goto(addr32);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = true;
         if(_loc6_)
         {
            this.§'U§(param1);
            if(this.§9I§)
            {
               if(!_loc5_)
               {
                  this.§&%§ = 0;
               }
               §§push(false);
               if(_loc6_)
               {
                  _loc4_ = §§pop();
                  §§goto(addr95);
               }
               §§push(§§pop());
               if(_loc6_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        if(_loc6_ || param3)
                        {
                           addr89:
                           §§push(param3 == true);
                        }
                        §§goto(addr95);
                     }
                  }
                  if(§§pop())
                  {
                     this.§9k§(param1,param2);
                  }
                  §§goto(addr95);
               }
               §§goto(addr89);
            }
            §§goto(addr95);
         }
         addr95:
         if(this.mName != "BIRD_SARDINE")
         {
            this.§'!A§(param1);
            this.§=W§(param1);
            §§push(Boolean(_loc4_));
         }
      }
      
      public function §'!A§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§@7§);
            if(_loc2_)
            {
               §§push(0);
               if(_loc2_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(this);
                        §§push(this.§@7§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§@7§ = §§pop();
                        §§push(this.§@7§);
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                              addr43:
                              if(§§pop() <= §§pop())
                              {
                                 this.§46§();
                              }
                           }
                           else
                           {
                              addr67:
                              §§push(§§pop() <= §§pop());
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr81:
                                          §§pop();
                                          §§push(Math.random() * §,8§ < param1);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§goto(addr105);
                                          }
                                          §§goto(addr109);
                                       }
                                    }
                                    §§goto(addr105);
                                 }
                                 addr105:
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       addr109:
                                       §§pop();
                                       §§push(Boolean(this.§@3§.mSlingShotState));
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       addr122:
                                       this.§3O§();
                                    }
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr81);
                           }
                           addr124:
                           return;
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr122);
                  }
                  else
                  {
                     §§push(this.§9m§);
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr67);
                        §§push(0);
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr43);
            }
            §§goto(addr81);
         }
         §§goto(addr109);
      }
      
      public function §46§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@7§ = 0;
            if(!(_loc2_ && _loc2_))
            {
               addr28:
               this.§&<§(this.§=!'§.getFrame(0));
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §3O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.mName == "BIRD_SARDINE")
            {
               if(!(_loc1_ && _loc1_))
               {
                  §§goto(addr40);
               }
               else
               {
                  addr48:
                  this.§&<§(this.§=!'§.getSubAnimation("blink").getFrame(0));
               }
            }
            else
            {
               this.§@7§ = §&!'§;
               if(_loc2_)
               {
                  §§goto(addr48);
               }
            }
            return;
         }
         addr40:
      }
      
      public function §=W§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§9m§);
            if(!(_loc2_ && this))
            {
               §§push(0);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc3_ || this)
                     {
                        §§push(this);
                        §§push(this.§9m§);
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§9m§ = §§pop();
                        if(_loc3_ || param1)
                        {
                           §§push(this.§9m§);
                           if(!_loc2_)
                           {
                              §§push(0);
                              if(_loc3_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    this.§3e§();
                                 }
                              }
                              else
                              {
                                 addr95:
                                 §§push(§§pop() <= §§pop());
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr117);
                                       }
                                    }
                                    §§goto(addr131);
                                 }
                                 addr117:
                                 §§pop();
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr131:
                                    if(Math.random() * §[!'§ < param1)
                                    {
                                       if(!_loc3_)
                                       {
                                       }
                                    }
                                    §§goto(addr136);
                                 }
                                 this.§-X§();
                                 §§goto(addr136);
                              }
                              §§goto(addr136);
                           }
                           else
                           {
                              addr94:
                              §§goto(addr95);
                              §§push(0);
                           }
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr136);
                  }
                  else
                  {
                     §§push(this.§@7§);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr94);
                     }
                     §§goto(addr131);
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr131);
         }
         addr136:
      }
      
      public function §3e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9m§ = 0;
            if(!_loc2_)
            {
               addr23:
               this.§&<§(this.§=!'§.getFrame(0));
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §-X§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.mName == "BIRD_SARDINE")
            {
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               §§push(this.§9m§);
               if(!_loc4_)
               {
                  §§push(0);
                  if(_loc3_ || param1)
                  {
                     if(§§pop() > §§pop())
                     {
                        this.§3e§();
                        if(_loc4_ && param1)
                        {
                        }
                        addr123:
                        §§push(Boolean(this.§9I§));
                        if(_loc3_ || this)
                        {
                           addr133:
                           if(!§§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 addr142:
                                 §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr160:
                                    §§push(param2);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§goto(addr169);
                                    }
                                    addr169:
                                    §§goto(addr168);
                                 }
                                 §§goto(addr170);
                              }
                              addr168:
                              if(§§pop())
                              {
                                 addr170:
                                 §>2§.§51§(param1,this.§]`§);
                                 if(!_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §>2§.§51§(param1,this.§]`§,§,]§);
                              }
                              return;
                           }
                        }
                        §§goto(addr169);
                     }
                     addr56:
                     §§push(this.§@7§);
                     §§push(0);
                  }
                  if(§§pop() > §§pop())
                  {
                     this.§46§();
                     if(_loc3_ || this)
                     {
                        addr67:
                        §§push(param1);
                        if(_loc3_ || _loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              addr100:
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§0r§.§7!§);
                                 if(!_loc4_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              this.§9m§ = §5!$§;
                              this.§&<§(this.§=!'§.getSubAnimation("yell").getFrame(0));
                              §§push(Boolean(this.§4Q§));
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          addr122:
                                          §§pop();
                                          §§goto(addr123);
                                       }
                                       §§goto(addr142);
                                    }
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr100);
                        }
                        param1 = §§pop();
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr67);
               }
               §§goto(addr56);
            }
            §§goto(addr123);
         }
         §§goto(addr160);
      }
      
      public function §9k§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc7_)
         {
            §§push(this.§&%§);
            §§push(0);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() > §§pop())
               {
                  §§push(this);
                  §§push(this.§&%§);
                  if(_loc7_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§&%§ = §§pop();
                  if(!(_loc6_ && this))
                  {
                     §§push(this.§&%§);
                     if(!(_loc6_ && param2))
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           addr59:
                           if(§§pop() <= §§pop())
                           {
                              var _loc4_:*;
                              §§push((_loc4_ = this).§5^§);
                              if(!(_loc6_ && this))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc5_:* = §§pop();
                              if(!_loc6_)
                              {
                                 _loc4_.§5^§ = _loc5_;
                              }
                              §§push(this);
                              §§push(this.§=J§);
                              if(_loc7_)
                              {
                                 §§push(§§pop() * 0.4);
                              }
                              §§pop().§=J§ = §§pop();
                              if(!_loc6_)
                              {
                                 §§push(!this.§4Q§);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop());
                                    if(_loc7_ || param2)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(this.§5^§);
                                             if(_loc7_)
                                             {
                                                §§push(2);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   if(_loc7_)
                                                   {
                                                      addr132:
                                                      if(§§pop())
                                                      {
                                                         addr136:
                                                         §§push(this.§5^§ > 1);
                                                         §§push(this.§5^§ > 1);
                                                         if(_loc7_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr148:
                                                                     §§push(this.§=J§);
                                                                     §§push(-1);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr151:
                                                                        §§push(§§pop() < §§pop());
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           addr159:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                                 this.§=J§ = -1;
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    addr177:
                                                                                    this.§0S§ = this.§=J§;
                                                                                    this.§&%§ = §"!F§;
                                                                                    §§push(this);
                                                                                    §§push(this.§&%§);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() * (Math.abs(this.§0S§) / 2));
                                                                                    }
                                                                                    §§pop().§&%§ = §§pop();
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       addr204:
                                                                                       this.§%l§ = this.§&%§;
                                                                                       this.§+H§ = 0;
                                                                                       this.§#%§ = 0;
                                                                                       addr507:
                                                                                       this.§6i§();
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr539:
                                                                                          §§push(!this.§4Q§);
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             addr547:
                                                                                             §§push(§§pop());
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr550:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      addr569:
                                                                                                      §§push(this.§9I§);
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         addr579:
                                                                                                         addr580:
                                                                                                         §§push(!§§pop());
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr583:
                                                                                                               §§pop();
                                                                                                               §§goto(addr594);
                                                                                                            }
                                                                                                            §§goto(addr588);
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr592:
                                                                                                               this.§0!'§();
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr594);
                                                                                                      }
                                                                                                      §§goto(addr588);
                                                                                                   }
                                                                                                   addr594:
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr588:
                                                                                                      §§push(!this.§'A§);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr579);
                                                                                             }
                                                                                             §§goto(addr580);
                                                                                          }
                                                                                          §§goto(addr583);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr511:
                                                                                       }
                                                                                       §§goto(addr583);
                                                                                       addr269:
                                                                                    }
                                                                                    §§goto(addr569);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr259:
                                                                                    this.§=J§ = 0;
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr269);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr588);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr455:
                                                                                 §§push(this);
                                                                                 §§push(360);
                                                                                 §§push(§>!!§);
                                                                                 §§push(this.§%l§);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§push(this.§&%§);
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          addr486:
                                                                                          §§push(§§pop() / this.§%l§);
                                                                                       }
                                                                                       §§push(§§pop() * §§pop().§1s§(§§pop()));
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() * this.§#%§);
                                                                                       }
                                                                                       §§pop().§+H§ = §§pop();
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          §§goto(addr507);
                                                                                       }
                                                                                       §§goto(addr511);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr486);
                                                                              }
                                                                           }
                                                                           §§goto(addr177);
                                                                        }
                                                                        §§goto(addr539);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr356:
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           addr370:
                                                                           §§push(§§pop() - this.§&%§);
                                                                           §§push(this.§%l§ / 2);
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              addr378:
                                                                              §§push(§§pop() / §§pop());
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc7_ || param2)
                                                                                 {
                                                                                    addr394:
                                                                                    _loc3_ = §§pop();
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       §§push(§>!!§.§1s§(_loc3_,false));
                                                                                       if(_loc7_ || param2)
                                                                                       {
                                                                                          addr413:
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc7_ || param1))
                                                                                          {
                                                                                             addr516:
                                                                                             §§push(§§pop() < param1);
                                                                                             §§push(§§pop() < param1);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr521:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      addr529:
                                                                                                      §§pop();
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         §§goto(addr539);
                                                                                                      }
                                                                                                      §§goto(addr569);
                                                                                                   }
                                                                                                   §§goto(addr579);
                                                                                                }
                                                                                                §§goto(addr547);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr550);
                                                                                       }
                                                                                       _loc3_ = §§pop();
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          addr429:
                                                                                          §§push(this);
                                                                                          §§push(this.§0S§);
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                §§push(this.§0S§);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§pop().§!!B§ = §§pop();
                                                                                          §§goto(addr455);
                                                                                       }
                                                                                       §§goto(addr583);
                                                                                    }
                                                                                    §§goto(addr588);
                                                                                 }
                                                                                 §§goto(addr413);
                                                                              }
                                                                           }
                                                                           §§goto(addr516);
                                                                        }
                                                                        §§goto(addr413);
                                                                     }
                                                                  }
                                                                  §§goto(addr177);
                                                               }
                                                               §§goto(addr539);
                                                            }
                                                            §§goto(addr159);
                                                         }
                                                         else
                                                         {
                                                            addr221:
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§pop();
                                                                  §§push(param2);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr229:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           this.§0!'§(2.25);
                                                                           §§goto(addr507);
                                                                        }
                                                                        §§goto(addr583);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.§&%§ = 0;
                                                                        addr244:
                                                                        this.§!!B§ = 0;
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           this.§+H§ = 0;
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr259);
                                                                           }
                                                                           §§goto(addr592);
                                                                        }
                                                                        §§goto(addr539);
                                                                     }
                                                                  }
                                                                  §§goto(addr583);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr529);
                                                               }
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(!this.§4Q§);
                                                         §§push(!this.§4Q§);
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr221);
                                                         }
                                                      }
                                                      §§goto(addr579);
                                                   }
                                                   §§goto(addr547);
                                                }
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr521);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr204);
                           }
                           else
                           {
                              §§push(this.§&%§);
                              if(_loc7_ || param2)
                              {
                                 §§push(this.§%l§);
                                 if(!_loc6_)
                                 {
                                    §§push(2);
                                    if(_loc7_)
                                    {
                                       if(§§pop() >= §§pop() / §§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(this.§%l§ - this.§&%§);
                                             if(!_loc6_)
                                             {
                                                §§push(this.§%l§);
                                                if(_loc7_)
                                                {
                                                   §§push(2);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                   }
                                                   §§goto(addr370);
                                                }
                                                addr321:
                                                §§push(Number(§§pop() / §§pop()));
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   _loc3_ = §§pop();
                                                   §§push(§>!!§.§1s§(_loc3_));
                                                   if(!_loc6_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this);
                                                      §§push(_loc3_);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(§§pop() * this.§0S§);
                                                      }
                                                      §§pop().§!!B§ = §§pop();
                                                      §§goto(addr455);
                                                   }
                                                   §§goto(addr511);
                                                }
                                                else
                                                {
                                                   §§goto(addr370);
                                                }
                                             }
                                             §§goto(addr394);
                                          }
                                          §§goto(addr429);
                                       }
                                       else
                                       {
                                          §§goto(addr356);
                                          §§push(this.§%l§);
                                          §§push(2);
                                       }
                                       §§goto(addr413);
                                    }
                                    §§goto(addr370);
                                 }
                                 §§goto(addr378);
                              }
                              §§goto(addr321);
                           }
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr204);
               }
               else
               {
                  §§push(Math.random() * §]T§);
               }
               §§goto(addr516);
            }
            §§goto(addr59);
         }
         §§goto(addr244);
      }
      
      public function §0!'§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.mName);
            if(_loc3_)
            {
               §§push("BIRD_SARDINE");
               if(_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr27);
                  }
                  else
                  {
                     this.§5^§ = 0;
                     if(!_loc2_)
                     {
                        this.§&%§ = §"!F§;
                        if(_loc3_ || _loc2_)
                        {
                           this.§!!B§ = 0;
                           if(_loc3_)
                           {
                              §§push(this);
                              §§push(0.75);
                              if(!_loc2_)
                              {
                                 §§push(Math.random() * 1.5);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       §§push(-§§pop());
                                       if(!_loc2_)
                                       {
                                          addr66:
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().§0S§ = §§pop();
                                       this.§=J§ = this.§0S§;
                                       if(_loc3_)
                                       {
                                          addr75:
                                          §§push(this);
                                          §§push(this.§&%§);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(§§pop() * (Math.abs(this.§0S§) / 3));
                                          }
                                          §§pop().§&%§ = §§pop();
                                          if(!(_loc2_ && param1))
                                          {
                                             this.§%l§ = this.§&%§;
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(this.mName);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push("BIRD_WHITE");
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc3_ || this)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§pop();
                                                                  addr182:
                                                                  §§push(this.mName);
                                                                  if(_loc3_)
                                                                  {
                                                                     addr152:
                                                                     §§push("BIRD_BLACK");
                                                                     if(!(_loc2_ && param1))
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           addr168:
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc2_ && param1)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr184);
                                                                        }
                                                                     }
                                                                     addr183:
                                                                     addr184:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           this.§#%§ = 0;
                                                                           addr190:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr197:
                                                                           this.§#%§ = 0;
                                                                        }
                                                                     }
                                                                     else if(this.§&%§ < 350)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§goto(addr197);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           if(Math.random() > 0.5)
                                                                           {
                                                                              §§goto(addr214);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(-1);
                                                                           }
                                                                           §§goto(addr227);
                                                                        }
                                                                        addr214:
                                                                        §§push(1);
                                                                        if(!(_loc2_ && _loc3_))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc2_)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr227:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§pop().§#%§ = §§pop();
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           §§push(this);
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              if(Math.random() > 0.5)
                                                                              {
                                                                                 addr259:
                                                                                 §§push(this.§#%§);
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(Number(0));
                                                                              }
                                                                              §§pop().§#%§ = §§pop();
                                                                              §§goto(addr280);
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        §§goto(addr280);
                                                                     }
                                                                     addr280:
                                                                     return;
                                                                     §§push(§§pop() == §§pop());
                                                                  }
                                                                  §§goto(addr183);
                                                                  §§push("RED_BIG");
                                                               }
                                                               §§pop();
                                                               if(_loc3_)
                                                               {
                                                                  §§goto(addr182);
                                                                  §§push(this.mName);
                                                               }
                                                               §§goto(addr280);
                                                            }
                                                         }
                                                         §§goto(addr168);
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr182);
                                             }
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr197);
                                    }
                                 }
                              }
                              §§goto(addr66);
                           }
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr183);
            }
            §§goto(addr152);
         }
         addr27:
      }
      
      public function §6i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§0W§);
            if(_loc1_)
            {
               §§push(this.§5!>§);
               if(!_loc2_)
               {
                  §§push(§#;§.§`!2§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc2_)
                     {
                        §§pop().x = §§pop();
                        if(_loc1_ || _loc1_)
                        {
                           addr61:
                           §§push(this.§0W§);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(this.§#!$§);
                              §§push(this.§!!B§);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr96:
                                    §§push(§§pop() / §#;§.§`!2§);
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§pop().y = §§pop();
                                       if(_loc1_)
                                       {
                                          addr111:
                                          §§push(this.§0W§);
                                          §§push(this.§+H§ / 180);
                                          if(_loc1_ || _loc1_)
                                          {
                                             addr123:
                                             §§pop().rotation = §§pop() * Math.PI;
                                          }
                                          §§goto(addr123);
                                       }
                                       return;
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr96);
                           }
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr123);
                  }
               }
               §§goto(addr96);
            }
            §§goto(addr111);
         }
         §§goto(addr61);
      }
      
      public function §`!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§'A§ = true;
         this.§4Q§ = false;
         this.§9I§ = false;
         if(!_loc1_)
         {
            this.§5^§ = 0;
            this.§7h§ = 0;
            this.§&%§ = 0;
            if(!(_loc1_ && _loc2_))
            {
               this.§&%§ = 0;
               if(_loc2_)
               {
                  this.§!!B§ = 0;
                  addr72:
                  this.§+H§ = 0;
                  this.§=J§ = 0;
                  this.§#%§ = 0;
               }
               return;
            }
         }
         §§goto(addr72);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = Math.sqrt((param1 - this.§5!>§) * (param1 - this.§5!>§) + (param2 - this.§#!$§) * (param2 - this.§#!$§));
         if(_loc4_)
         {
            §§push(_loc3_);
            §§push(this.§,N§);
            if(!_loc5_)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!_loc5_)
               {
                  addr71:
                  §§push(true);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr75:
                  §§push(false);
               }
               return §§pop();
            }
            §§goto(addr75);
         }
         §§goto(addr71);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            §§push(this.§5!>§);
            if(!(_loc6_ && param2))
            {
               §§push(param3);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() >= §§pop());
                  §§push(§§pop() >= §§pop());
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           §§push(this.§5!>§);
                           if(!(_loc6_ && this))
                           {
                              addr72:
                              §§push(param4);
                              if(_loc5_)
                              {
                                 addr76:
                                 §§push(§§pop() <= §§pop());
                                 §§push(§§pop() <= §§pop());
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(this.§#!$§);
                                          if(_loc5_ || param2)
                                          {
                                             §§push(param1);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(§§pop() >= §§pop());
                                                if(_loc5_)
                                                {
                                                   return §§pop() && this.§#!$§ <= param2;
                                                   addr113:
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr115);
                                    }
                                 }
                                 §§goto(addr113);
                              }
                           }
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr113);
               }
               §§goto(addr76);
            }
            §§goto(addr72);
         }
         §§goto(addr115);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Boolean = false;
         §§push(this.§5!>§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop() != §§pop());
               if(!(_loc5_ && this))
               {
                  if(!§§pop())
                  {
                     §§pop();
                     addr56:
                     §§push(this.§#!$§ != param2);
                     if(!(_loc5_ && param2))
                     {
                        §§goto(addr64);
                     }
                     §§goto(addr104);
                  }
                  addr64:
                  if(§§pop())
                  {
                     _loc3_ = true;
                  }
                  this.§5!>§ = param1;
                  if(_loc4_ || param1)
                  {
                     this.§#!$§ = param2;
                     if(!(_loc5_ && _loc3_))
                     {
                        this.§7h§ = 100;
                        §§goto(addr100);
                     }
                     §§goto(addr104);
                  }
                  addr100:
                  this.§6i§();
                  if(_loc4_)
                  {
                     addr104:
                     if(_loc3_)
                     {
                        if(!(_loc5_ && param1))
                        {
                           this.§@3§.§=!!§();
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §&3§() : §8!?§
      {
         return this.§;!G§;
      }
      
      public function get §,0§() : Number
      {
         return this.§&%§;
      }
      
      public function get §9Z§() : Number
      {
         return this.§7h§;
      }
      
      public function set §9Z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§7h§ = param1;
         }
      }
      
      public function get §^7§() : Number
      {
         return this.§ V§;
      }
      
      public function get §1]§() : Boolean
      {
         return this.§4Q§;
      }
      
      public function get radius() : Number
      {
         return this.§,N§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0W§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §^7§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§ V§ = param1;
         }
      }
      
      public function get §&!"§() : Number
      {
         return this.§3§;
      }
      
      public function set §&!"§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§=!%§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§=!%§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§5!>§;
      }
      
      public function get y() : Number
      {
         return this.§#!$§;
      }
      
      public function get §@f§() : Number
      {
         return this.§2f§;
      }
      
      public function get §"+§() : Number
      {
         return this.§#j§;
      }
   }
}
