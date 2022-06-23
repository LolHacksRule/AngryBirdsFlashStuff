package §?b§
{
   import §!+§.§>G§;
   import §'k§.§2v§;
   import §'k§.§7x§;
   import §+!"§.§2+§;
   import §5!@§.Texture;
   import §7!0§.§6Z§;
   import §7!0§.§9!0§;
   import §7!0§.§<$§;
   import §9W§.§6!0§;
   import §9W§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §+$§
   {
      
      public static const §'@§:String = "ChannelSlingshot";
      
      public static const §"x§:Number = 900;
      
      public static const §for §:Number = 200;
      
      public static const §`7§:Number = 200;
      
      public static const §7t§:Number = 1500;
      
      public static const §?!H§:Number = 5000;
      
      public static const §``§:Number = 1000;
      
      public static const §#!-§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §+$§))
         {
            §'@§ = "ChannelSlingshot";
            if(_loc1_)
            {
               §"x§ = 900;
               addr51:
               §for § = 200;
               if(!_loc2_)
               {
                  §`7§ = 200;
                  §7t§ = 1500;
                  §?!H§ = 5000;
                  if(_loc1_)
                  {
                     §§goto(addr67);
                  }
               }
               §§goto(addr77);
            }
            addr67:
            §``§ = 1000;
            if(_loc1_ || _loc2_)
            {
               addr77:
               §#!-§ = 1000;
            }
            return;
         }
         §§goto(addr51);
      }
      
      protected var mName:String;
      
      protected var §<!B§:Number;
      
      protected var §,k§:Number;
      
      protected var §5!2§:Number;
      
      protected var §^!6§:Number;
      
      private var §[! §:§6Z§;
      
      protected var §]!C§:Number;
      
      protected var §5!G§:Number = 1;
      
      private var §[0§:Sprite;
      
      protected var §;&§:§7x§;
      
      private var §15§:§6!0§;
      
      protected var §+"§:§4K§;
      
      private var §8+§:Number;
      
      private var §"@§:Boolean = false;
      
      private var §3A§:Boolean = false;
      
      protected var §6!"§:Boolean = false;
      
      private var §"!?§:Number;
      
      private var §4!3§:Number = 0;
      
      private var §>! §:Number = 0;
      
      private var §#d§:Number = 0;
      
      private var §[!9§:Number = 1000;
      
      private var §]]§:Number;
      
      private var §&Y§:Number;
      
      private var §&>§:int;
      
      private var §"!9§:Number = 0;
      
      protected var §`!7§:Number;
      
      protected var §7A§:Number;
      
      private var §[!G§:Number = 1;
      
      private var §get §:Number = 0;
      
      private var §,d§:b2Vec2;
      
      private var §!!%§:Number = 1;
      
      public function §+$§(param1:§4K§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
            if(_loc6_)
            {
               this.§+"§ = param1;
               if(_loc6_)
               {
                  this.§[0§ = param2;
                  if(_loc6_ || param2)
                  {
                     this.mName = param3;
                     if(_loc6_ || param3)
                     {
                        this.§[! § = §9!0§.§&!<§(this.mName).§]!=§;
                        if(!_loc7_)
                        {
                           this.§<!B§ = param4;
                           if(!(_loc7_ && param3))
                           {
                              addr76:
                              this.§,k§ = param5;
                           }
                           §§goto(addr132);
                        }
                        this.§5!2§ = param4;
                        if(!(_loc7_ && param1))
                        {
                           addr89:
                           this.§^!6§ = param5;
                           if(!(_loc7_ && param2))
                           {
                              this.§]!C§ = 0;
                              this.§"@§ = false;
                              if(!_loc7_)
                              {
                                 addr117:
                                 this.§3A§ = false;
                              }
                              this.§4!3§ = 0;
                              if(_loc6_ || param3)
                              {
                                 this.§ B§();
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
         this.§`!7§ = 0;
      }
      
      public function §6p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§"@§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§[0§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr47:
                     this.§[0§.dispose();
                     if(_loc1_ || _loc2_)
                     {
                     }
                     §§goto(addr58);
                  }
                  this.§[0§ = null;
                  §§goto(addr58);
               }
               addr58:
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function § H§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§3A§);
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
                           §§push(this.§"@§);
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
                                 this.§3A§ = false;
                                 if(_loc3_)
                                 {
                                    this.§"@§ = true;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr325:
                                       this.§]!C§ = 0;
                                       if(_loc3_)
                                       {
                                          addr330:
                                          this.§#n§();
                                       }
                                    }
                                    return;
                                 }
                              }
                              else
                              {
                                 §§push(this.§5!G§);
                                 if(_loc3_)
                                 {
                                    §§push(0);
                                    if(_loc3_ || param1)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§#d§ = 0;
                                             if(_loc3_)
                                             {
                                                this.§"!9§ = 0;
                                                this.§]!C§ = 0;
                                                this.§&Y§ = 0;
                                                addr88:
                                                this.§5!G§ = 0;
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr98:
                                                   §§push(Number(Math.min(param1,this.§"!?§)));
                                                   if(!_loc2_)
                                                   {
                                                      param1 = §§pop();
                                                      if(_loc3_ || param1)
                                                      {
                                                         addr114:
                                                         §§push(this);
                                                         §§push(this.§<!B§);
                                                         if(_loc3_)
                                                         {
                                                            §§push(param1);
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§push(this.§+"§.§<!B§);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() - this.§<!B§);
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     addr163:
                                                                     addr142:
                                                                     addr164:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(this.§"!?§);
                                                                     }
                                                                     §§pop().§<!B§ = §§pop() + §§pop();
                                                                     §§push(this);
                                                                     §§push(this.§,k§);
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(param1);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(this.§+"§.§,k§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop() - this.§,k§);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr199:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    §§push(this.§"!?§);
                                                                                 }
                                                                                 §§pop().§,k§ = §§pop() + §§pop();
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§,k§);
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
                                                                                             §§push(this.§"!?§);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(§§pop() / §"x§);
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          §§pop().§,k§ = §§pop() - §§pop();
                                                                                          §§push(this);
                                                                                          §§push(this.§]!C§);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                §§push(360 - this.§]!C§);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr265:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc2_ && this))
                                                                                                   {
                                                                                                      addr263:
                                                                                                      §§push(§§pop() / this.§"!?§);
                                                                                                   }
                                                                                                   §§pop().§]!C§ = §§pop() + §§pop();
                                                                                                   §§push(this);
                                                                                                   §§push(this.§"!?§);
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() - param1);
                                                                                                   }
                                                                                                   §§pop().§"!?§ = §§pop();
                                                                                                   if(this.§"!?§ <= 0)
                                                                                                   {
                                                                                                      addr283:
                                                                                                      this.§<!B§ = this.§+"§.§<!B§;
                                                                                                      if(_loc3_ || param1)
                                                                                                      {
                                                                                                         this.§,k§ = this.§+"§.§,k§;
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
      
      public function §+`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§3A§ = true;
            if(!_loc1_)
            {
               this.§"!?§ = §"x§;
               if(!(_loc1_ && _loc2_))
               {
                  this.§1j§(§6Z§.§6M§);
                  if(_loc2_)
                  {
                     addr60:
                     if(this.§"!9§ != 0)
                     {
                        §§push(this);
                        §§push(this.§,k§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§pop() + this.§"!9§);
                        }
                        §§pop().§,k§ = §§pop();
                        if(!_loc1_)
                        {
                           addr80:
                           this.§"!9§ = 0;
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
      
      public function §1M§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!_loc3_)
         {
            §§push(this.§"@§);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     §§pop();
                     §§push(this.§`!7§);
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
                                    §§push(this.§7A§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(§§pop() > this.§+"§.§4!%§.§+4§.§6o§)
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(this);
                                             §§push(this.§+"§.§4!%§.§+4§.§6o§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() - this.§7A§);
                                             }
                                             §§pop().§@t§(§§pop());
                                             if(!_loc3_)
                                             {
                                                this.§`!7§ = -1;
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr100:
                                                   §§push(this);
                                                   §§push(this.§`!7§);
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push(§§pop() - param1);
                                                   }
                                                   §§pop().§`!7§ = §§pop();
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   addr333:
                                                   return;
                                                   addr245:
                                                }
                                                §§push(this.§`!7§);
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
                                                            if(this.§#d§ > 0)
                                                            {
                                                               addr134:
                                                               this.§`!7§ = this.§#d§;
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
                                                                  if(!isNaN(this.§7A§))
                                                                  {
                                                                     §§push(this.§+"§);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        §§push(§§pop().§4!%§);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop().objects);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop().§&!7§(this.§<!B§,this.§7A§));
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
                                                                                          if(!§§pop().§@t§(§§pop()))
                                                                                          {
                                                                                             this.§`!7§ = 0;
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
                                                                                          §§push(this.§+"§);
                                                                                          if(!(_loc3_ && param1))
                                                                                          {
                                                                                             addr255:
                                                                                             §§push(§§pop().§4!%§);
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
                                                                                                      §§push(§§pop().§"0§(§§pop()));
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         addr283:
                                                                                                         if(!§§pop().§`!F§)
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               this.§6!"§ = false;
                                                                                                               this.§`!7§ = -1;
                                                                                                            }
                                                                                                            §§goto(addr333);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr313:
                                                                                                            §§push(this.§+"§.§4!%§.objects.§"0§(_loc2_));
                                                                                                         }
                                                                                                         §§goto(addr333);
                                                                                                      }
                                                                                                      addr315:
                                                                                                      if(§§pop().§%f§())
                                                                                                      {
                                                                                                         addr316:
                                                                                                         this.§6!"§ = false;
                                                                                                         if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            this.§`!7§ = 2000;
                                                                                                            §§goto(addr329);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.§`!7§ = 500;
                                                                                                      }
                                                                                                      §§goto(addr333);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr313);
                                                                                       }
                                                                                    }
                                                                                    this.§`!7§ = -1;
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
      
      public function §@t§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this);
         §§push(this.§,k§);
         if(_loc3_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§,k§ = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.§7A§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§7A§ = §§pop();
            §§push(this.§7A§);
            if(_loc3_)
            {
               §§push(this.§+"§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop().§4!%§);
                  if(_loc3_)
                  {
                     §§push(§§pop().§+4§);
                     if(!_loc2_)
                     {
                        §§push(§§pop().§6o§);
                        if(_loc3_ || this)
                        {
                           if(§§pop() > §§pop())
                           {
                              §§push(this.§7A§);
                              if(!(_loc2_ && this))
                              {
                                 addr92:
                                 addr91:
                                 addr90:
                                 addr89:
                                 §§push(§§pop() - this.§+"§.§4!%§.§+4§.§6o§);
                                 if(_loc3_ || param1)
                                 {
                                 }
                                 addr101:
                                 param1 = §§pop();
                                 if(_loc3_)
                                 {
                                    §§push(this);
                                    §§push(this.§,k§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§,k§ = §§pop();
                                    §§push(this);
                                    §§push(this.§7A§);
                                    if(_loc3_ || this)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§7A§ = §§pop();
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
         this.§#n§();
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
            this.§#n§();
            §§push(false);
         }
         return §§pop();
      }
      
      public function § B§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§2v§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§<$§ = §9!0§.§&!<§(this.mName).shape;
         if(!(_loc4_ && _loc1_))
         {
            §§push(_loc1_.§ r§());
            if(!_loc4_)
            {
               §§push(§<$§.§]M§);
               if(!(_loc4_ && _loc1_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§,d§ = _loc1_.§]X§()[0];
                        if(_loc4_)
                        {
                        }
                        addr108:
                        this.§;&§ = this.§+"§.§4!%§.§!`§.§`l§(this.mName);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr134);
                        }
                        §§goto(addr144);
                     }
                     this.§8+§ = _loc1_.§ l§;
                     if(_loc5_)
                     {
                        §§goto(addr108);
                     }
                     §§goto(addr144);
                  }
                  else
                  {
                     addr87:
                     if(_loc1_.§ r§() == §<$§.§[!"§)
                     {
                        if(_loc5_)
                        {
                           this.§,d§ = new b2Vec2(0,0);
                           if(_loc5_)
                           {
                              this.§8+§ = 1.5;
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§goto(addr108);
                              }
                              §§goto(addr144);
                           }
                           addr134:
                           if(!this.§;&§)
                           {
                              if(_loc5_ || this)
                              {
                                 addr144:
                                 this.§0R§(null);
                                 if(!_loc5_)
                                 {
                                 }
                                 §§goto(addr156);
                              }
                           }
                           else
                           {
                              this.§0R§(this.§;&§.getFrame(0));
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
      
      public function §0R§(param1:§2v§) : void
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
               _loc2_ = this.§+"§.§;'§.textureManager.§"h§();
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
            if(this.§15§ == null)
            {
               this.§15§ = new §6!0§(_loc2_);
               this.§[0§.addChild(this.§15§);
               addr78:
               if(param1)
               {
                  if(_loc5_)
                  {
                     §§push(this.§15§);
                     §§push(param1.pivotX);
                     if(_loc5_ || this)
                     {
                        §§push(-§§pop());
                        §§push(this.§,d§);
                        if(!_loc4_)
                        {
                           §§push(§§pop().x);
                           if(!(_loc4_ && param1))
                           {
                              §§push(§7!,§.§ '§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() / §§pop());
                                 if(_loc5_)
                                 {
                                    §§pop().x = §§pop() - §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(this.§15§);
                                       if(!(_loc4_ && param1))
                                       {
                                          §§goto(addr138);
                                       }
                                       else
                                       {
                                          addr213:
                                          §§pop().y = -this.§15§.height / 2;
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
                        §§push(this.§,d§.y);
                        if(_loc5_ || this)
                        {
                           addr159:
                           §§push(§§pop() - §§pop() / §7!,§.§ '§);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§pop().y = §§pop();
                              addr217:
                              this.§15§.scaleX = _loc3_;
                              §§push(this.§15§);
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
                        this.§#n§();
                     }
                     return;
                  }
                  §§goto(addr168);
               }
               else
               {
                  §§push(this.§15§);
                  if(!(_loc4_ && this))
                  {
                     §§push(this.§15§);
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
                              §§push(this.§15§);
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
               this.§15§.texture = _loc2_;
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
            this.§1M§(param1);
            if(this.§3A§)
            {
               if(!_loc5_)
               {
                  this.§#d§ = 0;
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
                     this.§%!6§(param1,param2);
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
            this.§'n§(param1);
            this.§!<§(param1);
            §§push(Boolean(_loc4_));
         }
      }
      
      public function §'n§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§4!3§);
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
                        §§push(this.§4!3§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§4!3§ = §§pop();
                        §§push(this.§4!3§);
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                              addr43:
                              if(§§pop() <= §§pop())
                              {
                                 this.§1!F§();
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
                                          §§push(Math.random() * §7t§ < param1);
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
                                       §§push(Boolean(this.§+"§.mSlingShotState));
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       addr122:
                                       this.§"J§();
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
                     §§push(this.§>! §);
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
      
      public function §1!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4!3§ = 0;
            if(!(_loc2_ && _loc2_))
            {
               addr28:
               this.§0R§(this.§;&§.getFrame(0));
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §"J§() : void
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
                  this.§0R§(this.§;&§.getSubAnimation("blink").getFrame(0));
               }
            }
            else
            {
               this.§4!3§ = §for §;
               if(_loc2_)
               {
                  §§goto(addr48);
               }
            }
            return;
         }
         addr40:
      }
      
      public function §!<§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§>! §);
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
                        §§push(this.§>! §);
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§>! § = §§pop();
                        if(_loc3_ || param1)
                        {
                           §§push(this.§>! §);
                           if(!_loc2_)
                           {
                              §§push(0);
                              if(_loc3_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    this.§,f§();
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
                                    if(Math.random() * §?!H§ < param1)
                                    {
                                       if(!_loc3_)
                                       {
                                       }
                                    }
                                    §§goto(addr136);
                                 }
                                 this.§1j§();
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
                     §§push(this.§4!3§);
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
      
      public function §,f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§>! § = 0;
            if(!_loc2_)
            {
               addr23:
               this.§0R§(this.§;&§.getFrame(0));
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §1j§(param1:int = -1, param2:Boolean = false) : void
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
               §§push(this.§>! §);
               if(!_loc4_)
               {
                  §§push(0);
                  if(_loc3_ || param1)
                  {
                     if(§§pop() > §§pop())
                     {
                        this.§,f§();
                        if(_loc4_ && param1)
                        {
                        }
                        addr123:
                        §§push(Boolean(this.§3A§));
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
                                 §>G§.§"4§(param1,this.§[! §);
                                 if(!_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §>G§.§"4§(param1,this.§[! §,§'@§);
                              }
                              return;
                           }
                        }
                        §§goto(addr169);
                     }
                     addr56:
                     §§push(this.§4!3§);
                     §§push(0);
                  }
                  if(§§pop() > §§pop())
                  {
                     this.§1!F§();
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
                                 §§push(§6Z§.§1m§);
                                 if(!_loc4_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              this.§>! § = §`7§;
                              this.§0R§(this.§;&§.getSubAnimation("yell").getFrame(0));
                              §§push(Boolean(this.§"@§));
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
      
      public function §%!6§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc7_)
         {
            §§push(this.§#d§);
            §§push(0);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() > §§pop())
               {
                  §§push(this);
                  §§push(this.§#d§);
                  if(_loc7_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§#d§ = §§pop();
                  if(!(_loc6_ && this))
                  {
                     §§push(this.§#d§);
                     if(!(_loc6_ && param2))
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           addr59:
                           if(§§pop() <= §§pop())
                           {
                              var _loc4_:*;
                              §§push((_loc4_ = this).§&>§);
                              if(!(_loc6_ && this))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc5_:* = §§pop();
                              if(!_loc6_)
                              {
                                 _loc4_.§&>§ = _loc5_;
                              }
                              §§push(this);
                              §§push(this.§&Y§);
                              if(_loc7_)
                              {
                                 §§push(§§pop() * 0.4);
                              }
                              §§pop().§&Y§ = §§pop();
                              if(!_loc6_)
                              {
                                 §§push(!this.§"@§);
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
                                             §§push(this.§&>§);
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
                                                         §§push(this.§&>§ > 1);
                                                         §§push(this.§&>§ > 1);
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
                                                                     §§push(this.§&Y§);
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
                                                                                 this.§&Y§ = -1;
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    addr177:
                                                                                    this.§]]§ = this.§&Y§;
                                                                                    this.§#d§ = §#!-§;
                                                                                    §§push(this);
                                                                                    §§push(this.§#d§);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() * (Math.abs(this.§]]§) / 2));
                                                                                    }
                                                                                    §§pop().§#d§ = §§pop();
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       addr204:
                                                                                       this.§[!9§ = this.§#d§;
                                                                                       this.§]!C§ = 0;
                                                                                       this.§5!G§ = 0;
                                                                                       addr507:
                                                                                       this.§#n§();
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr539:
                                                                                          §§push(!this.§"@§);
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
                                                                                                      §§push(this.§3A§);
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
                                                                                                               this.§]%§();
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
                                                                                                      §§push(!this.§6!"§);
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
                                                                                    this.§&Y§ = 0;
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
                                                                                 §§push(§2+§);
                                                                                 §§push(this.§[!9§);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§push(this.§#d§);
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          addr486:
                                                                                          §§push(§§pop() / this.§[!9§);
                                                                                       }
                                                                                       §§push(§§pop() * §§pop().§5r§(§§pop()));
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() * this.§5!G§);
                                                                                       }
                                                                                       §§pop().§]!C§ = §§pop();
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
                                                                           §§push(§§pop() - this.§#d§);
                                                                           §§push(this.§[!9§ / 2);
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
                                                                                       §§push(§2+§.§5r§(_loc3_,false));
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
                                                                                          §§push(this.§]]§);
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                §§push(this.§]]§);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§pop().§"!9§ = §§pop();
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
                                                                           this.§]%§(2.25);
                                                                           §§goto(addr507);
                                                                        }
                                                                        §§goto(addr583);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.§#d§ = 0;
                                                                        addr244:
                                                                        this.§"!9§ = 0;
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           this.§]!C§ = 0;
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
                                                         §§push(!this.§"@§);
                                                         §§push(!this.§"@§);
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
                              §§push(this.§#d§);
                              if(_loc7_ || param2)
                              {
                                 §§push(this.§[!9§);
                                 if(!_loc6_)
                                 {
                                    §§push(2);
                                    if(_loc7_)
                                    {
                                       if(§§pop() >= §§pop() / §§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(this.§[!9§ - this.§#d§);
                                             if(!_loc6_)
                                             {
                                                §§push(this.§[!9§);
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
                                                   §§push(§2+§.§5r§(_loc3_));
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
                                                         §§push(§§pop() * this.§]]§);
                                                      }
                                                      §§pop().§"!9§ = §§pop();
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
                                          §§push(this.§[!9§);
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
                  §§push(Math.random() * §``§);
               }
               §§goto(addr516);
            }
            §§goto(addr59);
         }
         §§goto(addr244);
      }
      
      public function §]%§(param1:Number = 1) : void
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
                     this.§&>§ = 0;
                     if(!_loc2_)
                     {
                        this.§#d§ = §#!-§;
                        if(_loc3_ || _loc2_)
                        {
                           this.§"!9§ = 0;
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
                                       §§pop().§]]§ = §§pop();
                                       this.§&Y§ = this.§]]§;
                                       if(_loc3_)
                                       {
                                          addr75:
                                          §§push(this);
                                          §§push(this.§#d§);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(§§pop() * (Math.abs(this.§]]§) / 3));
                                          }
                                          §§pop().§#d§ = §§pop();
                                          if(!(_loc2_ && param1))
                                          {
                                             this.§[!9§ = this.§#d§;
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
                                                                           this.§5!G§ = 0;
                                                                           addr190:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr197:
                                                                           this.§5!G§ = 0;
                                                                        }
                                                                     }
                                                                     else if(this.§#d§ < 350)
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
                                                                        §§pop().§5!G§ = §§pop();
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           §§push(this);
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              if(Math.random() > 0.5)
                                                                              {
                                                                                 addr259:
                                                                                 §§push(this.§5!G§);
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
                                                                              §§pop().§5!G§ = §§pop();
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
      
      public function §#n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§[0§);
            if(_loc1_)
            {
               §§push(this.§<!B§);
               if(!_loc2_)
               {
                  §§push(§7!,§.§ '§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc2_)
                     {
                        §§pop().x = §§pop();
                        if(_loc1_ || _loc1_)
                        {
                           addr61:
                           §§push(this.§[0§);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(this.§,k§);
                              §§push(this.§"!9§);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr96:
                                    §§push(§§pop() / §7!,§.§ '§);
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§pop().y = §§pop();
                                       if(_loc1_)
                                       {
                                          addr111:
                                          §§push(this.§[0§);
                                          §§push(this.§]!C§ / 180);
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
      
      public function §>P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§6!"§ = true;
         this.§"@§ = false;
         this.§3A§ = false;
         if(!_loc1_)
         {
            this.§&>§ = 0;
            this.§`!7§ = 0;
            this.§#d§ = 0;
            if(!(_loc1_ && _loc2_))
            {
               this.§#d§ = 0;
               if(_loc2_)
               {
                  this.§"!9§ = 0;
                  addr72:
                  this.§]!C§ = 0;
                  this.§&Y§ = 0;
                  this.§5!G§ = 0;
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
         var _loc3_:Number = Math.sqrt((param1 - this.§<!B§) * (param1 - this.§<!B§) + (param2 - this.§,k§) * (param2 - this.§,k§));
         if(_loc4_)
         {
            §§push(_loc3_);
            §§push(this.§8+§);
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
            §§push(this.§<!B§);
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
                           §§push(this.§<!B§);
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
                                          §§push(this.§,k§);
                                          if(_loc5_ || param2)
                                          {
                                             §§push(param1);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(§§pop() >= §§pop());
                                                if(_loc5_)
                                                {
                                                   return §§pop() && this.§,k§ <= param2;
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
         §§push(this.§<!B§);
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
                     §§push(this.§,k§ != param2);
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
                  this.§<!B§ = param1;
                  if(_loc4_ || param1)
                  {
                     this.§,k§ = param2;
                     if(!(_loc5_ && _loc3_))
                     {
                        this.§`!7§ = 100;
                        §§goto(addr100);
                     }
                     §§goto(addr104);
                  }
                  addr100:
                  this.§#n§();
                  if(_loc4_)
                  {
                     addr104:
                     if(_loc3_)
                     {
                        if(!(_loc5_ && param1))
                        {
                           this.§+"§.§33§();
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §'o§() : §6!0§
      {
         return this.§15§;
      }
      
      public function get §^o§() : Number
      {
         return this.§#d§;
      }
      
      public function get §[<§() : Number
      {
         return this.§`!7§;
      }
      
      public function set §[<§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§`!7§ = param1;
         }
      }
      
      public function get §4@§() : Number
      {
         return this.§[!G§;
      }
      
      public function get §2^§() : Boolean
      {
         return this.§"@§;
      }
      
      public function get radius() : Number
      {
         return this.§8+§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§[0§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §4@§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§[!G§ = param1;
         }
      }
      
      public function get §#!9§() : Number
      {
         return this.§get §;
      }
      
      public function set §#!9§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§get § = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§!!%§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§!!%§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§<!B§;
      }
      
      public function get y() : Number
      {
         return this.§,k§;
      }
      
      public function get §set §() : Number
      {
         return this.§5!2§;
      }
      
      public function get §3!>§() : Number
      {
         return this.§^!6§;
      }
   }
}
