package §6A§
{
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §0! §.Texture;
   import §3a§.§7P§;
   import §9K§.§!?§;
   import §9K§.§,z§;
   import §^!A§.§;!%§;
   import §^!L§.§"c§;
   import §^!L§.§%h§;
   import §^!L§.§6<§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §!!'§
   {
      
      public static const §#1§:String = "ChannelSlingshot";
      
      public static const §[L§:Number = 900;
      
      public static const §4!-§:Number = 200;
      
      public static const §8D§:Number = 200;
      
      public static const §;!8§:Number = 1500;
      
      public static const §"§:Number = 5000;
      
      public static const §'7§:Number = 1000;
      
      public static const §88§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#1§ = "ChannelSlingshot";
            if(!(_loc2_ && _loc2_))
            {
               §[L§ = 900;
               §4!-§ = 200;
               if(_loc1_ || _loc2_)
               {
                  §8D§ = 200;
                  if(_loc1_ || _loc2_)
                  {
                     §;!8§ = 1500;
                     if(!(_loc2_ && §!!'§))
                     {
                        §"§ = 5000;
                        §'7§ = 1000;
                        if(!_loc2_)
                        {
                           addr89:
                           §88§ = 1000;
                        }
                     }
                     §§goto(addr89);
                  }
               }
               §§goto(addr89);
            }
            return;
         }
         §§goto(addr89);
      }
      
      protected var mName:String;
      
      protected var §-`§:Number;
      
      protected var §4J§:Number;
      
      protected var §-x§:Number;
      
      protected var §=f§:Number;
      
      private var §8"§:§%h§;
      
      protected var §&k§:Number;
      
      protected var §,k§:Number = 1;
      
      private var §,!7§:Sprite;
      
      protected var §>!%§:§!?§;
      
      private var §+J§:§?T§;
      
      protected var §8i§:§4!C§;
      
      private var §8!7§:Number;
      
      private var §=!2§:Boolean = false;
      
      private var §6z§:Boolean = false;
      
      protected var §%!I§:Boolean = false;
      
      private var §=1§:Number;
      
      private var §>'§:Number = 0;
      
      private var §@b§:Number = 0;
      
      private var §;G§:Number = 0;
      
      private var §5J§:Number = 1000;
      
      private var §#'§:Number;
      
      private var §4!0§:Number;
      
      private var §']§:int;
      
      private var §,>§:Number = 0;
      
      protected var §3!,§:Number;
      
      protected var §%!4§:Number;
      
      private var §4Y§:Number = 1;
      
      private var §2V§:Number = 0;
      
      private var §8!D§:b2Vec2;
      
      private var §-_§:Number = 1;
      
      public function §!!'§(param1:§4!C§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super();
         if(!(_loc7_ && param1))
         {
            this.§8i§ = param1;
            this.§,!7§ = param2;
            if(!(_loc7_ && param1))
            {
               this.mName = param3;
               if(_loc6_ || param1)
               {
                  addr58:
                  this.§8"§ = §6<§.§6H§(this.mName).§2;§;
                  this.§-`§ = param4;
                  this.§4J§ = param5;
                  if(_loc6_)
                  {
                     this.§-x§ = param4;
                     if(!(_loc7_ && this))
                     {
                        this.§=f§ = param5;
                        §§goto(addr96);
                     }
                     §§goto(addr101);
                  }
               }
               addr96:
               this.§&k§ = 0;
               if(_loc6_)
               {
                  addr101:
                  this.§=!2§ = false;
               }
               this.§6z§ = false;
               this.§>'§ = 0;
               §§goto(addr110);
            }
            §§goto(addr58);
         }
         addr110:
         this.§1R§();
         if(_loc6_)
         {
            this.§3!,§ = 0;
         }
      }
      
      public function §4!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=!2§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§,!7§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr42:
                     this.§,!7§.dispose();
                     addr40:
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr48);
                  }
                  this.§,!7§ = null;
               }
               addr48:
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr40);
      }
      
      public function §>]§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§6z§);
            if(!(_loc3_ && param1))
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        addr39:
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(this.§=!2§);
                           if(!_loc3_)
                           {
                              addr47:
                              if(§§pop())
                              {
                                 return;
                              }
                              §§push(this.§,k§);
                              if(!_loc3_)
                              {
                                 §§push(0);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       this.§;G§ = 0;
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          this.§,>§ = 0;
                                          this.§&k§ = 0;
                                          this.§4!0§ = 0;
                                          this.§,k§ = 0;
                                          addr81:
                                          §§push(Number(Math.min(param1,this.§=1§)));
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr94:
                                             param1 = §§pop();
                                             if(!_loc3_)
                                             {
                                                addr97:
                                                §§push(this);
                                                §§push(this.§-`§);
                                                if(!_loc3_)
                                                {
                                                   §§push(param1);
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.§8i§.§-`§);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         §§push(§§pop() - this.§-`§);
                                                         if(_loc2_ || this)
                                                         {
                                                            addr136:
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               §§push(this.§=1§);
                                                            }
                                                            §§pop().§-`§ = §§pop() + §§pop();
                                                            §§push(this);
                                                            §§push(this.§4J§);
                                                            if(_loc2_)
                                                            {
                                                               §§push(param1);
                                                               if(_loc2_ || param1)
                                                               {
                                                                  §§push(this.§8i§.§4J§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() - this.§4J§);
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        addr182:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(this.§=1§);
                                                                        }
                                                                        §§pop().§4J§ = §§pop() + §§pop();
                                                                        §§push(this);
                                                                        §§push(this.§4J§);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(param1);
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              addr214:
                                                                              §§push(§§pop() / 50);
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 addr206:
                                                                                 §§push(this.§=1§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() / §[L§);
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§pop().§4J§ = §§pop() - §§pop();
                                                                              §§push(this);
                                                                              §§push(this.§&k§);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(_loc2_ || _loc3_)
                                                                                 {
                                                                                    §§push(360 - this.§&k§);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr241:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr239:
                                                                                          §§push(§§pop() / this.§=1§);
                                                                                       }
                                                                                       §§pop().§&k§ = §§pop() + §§pop();
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(this.§=1§);
                                                                                          if(_loc2_ || this)
                                                                                          {
                                                                                             §§push(§§pop() - param1);
                                                                                          }
                                                                                          §§pop().§=1§ = §§pop();
                                                                                          addr257:
                                                                                          if(this.§=1§ <= 0)
                                                                                          {
                                                                                             this.§-`§ = this.§8i§.§-`§;
                                                                                             if(_loc2_ || param1)
                                                                                             {
                                                                                                this.§4J§ = this.§8i§.§4J§;
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr290:
                                                                                                   this.§6z§ = false;
                                                                                                }
                                                                                                this.§=!2§ = true;
                                                                                                this.§&k§ = 0;
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr301:
                                                                                                   this.§+>§();
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr239);
                                                                              }
                                                                              §§goto(addr241);
                                                                           }
                                                                           §§goto(addr206);
                                                                        }
                                                                        §§goto(addr214);
                                                                     }
                                                                     §§goto(addr182);
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                   }
                                                }
                                                §§goto(addr136);
                                             }
                                          }
                                          §§goto(addr257);
                                       }
                                       §§goto(addr290);
                                    }
                                    §§goto(addr81);
                                 }
                                 §§goto(addr257);
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr47);
                        }
                        §§goto(addr97);
                     }
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr39);
         }
         §§goto(addr214);
      }
      
      public function §?!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§6z§ = true;
         if(_loc1_ || this)
         {
            this.§=1§ = §[L§;
            this.§`q§(§%h§.§^w§);
            if(this.§,>§ != 0)
            {
               addr47:
               §§push(this);
               §§push(this.§4J§);
               if(_loc1_)
               {
                  §§push(§§pop() + this.§,>§);
               }
               §§pop().§4J§ = §§pop();
               this.§,>§ = 0;
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §`!<§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         §§push(this.§=!2§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(!§§pop());
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr32:
                  §§pop();
                  §§push(this.§3!,§);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() >= §§pop());
                        if(_loc3_)
                        {
                           addr48:
                           if(§§pop())
                           {
                              if(_loc3_ || this)
                              {
                                 §§push(this.§%!4§);
                                 if(_loc3_ || param1)
                                 {
                                    if(§§pop() > this.§8i§.§?V§.§%>§.§,j§)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(this);
                                          §§push(this.§8i§.§?V§.§%>§.§,j§);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() - this.§%!4§);
                                          }
                                          §§pop().§1!>§(§§pop());
                                          this.§3!,§ = -1;
                                          if(_loc3_)
                                          {
                                             addr90:
                                             §§push(this);
                                             §§push(this.§3!,§);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(§§pop() - param1);
                                             }
                                             §§pop().§3!,§ = §§pop();
                                             §§push(this.§3!,§);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(0);
                                                if(_loc3_)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      addr119:
                                                      if(this.§;G§ > 0)
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            this.§3!,§ = this.§;G§;
                                                            return;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr149:
                                                         §§push(0);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!_loc4_)
                                                            {
                                                               if(!isNaN(this.§%!4§))
                                                               {
                                                                  addr165:
                                                                  §§push(this.§8i§);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop().§?V§);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop().objects);
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop().§@,§(this.§-`§,this.§%!4§));
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(!_loc3_)
                                                                              {
                                                                              }
                                                                              addr202:
                                                                              if(§§pop() < 0)
                                                                              {
                                                                                 addr204:
                                                                                 §§push(this);
                                                                                 §§push(param1);
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() / 100);
                                                                                 }
                                                                                 §§push(§§pop().§1!>§(§§pop()));
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr218:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       this.§3!,§ = -1;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr298:
                                                                                          return;
                                                                                          addr277:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr224:
                                                                                       }
                                                                                       §§goto(addr298);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§3!,§ = 0;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.§8i§);
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    addr238:
                                                                                    §§push(§§pop().§?V§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr241:
                                                                                       §§push(§§pop().objects);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr244:
                                                                                          §§push(_loc2_);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(§§pop().§1F§(§§pop()));
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                §§push(§§pop().§1k§);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      this.§%!I§ = false;
                                                                                                      addr272:
                                                                                                      this.§3!,§ = -1;
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§goto(addr277);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr294:
                                                                                                         §§goto(addr298);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr283:
                                                                                                      §§push(this.§8i§.§?V§.objects.§1F§(_loc2_));
                                                                                                   }
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                                addr285:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      this.§%!I§ = false;
                                                                                                   }
                                                                                                   this.§3!,§ = 2000;
                                                                                                   §§goto(addr294);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   this.§3!,§ = 500;
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr285);
                                                                                             §§push(§§pop().§switch§());
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr283);
                                                                              }
                                                                           }
                                                                           _loc2_ = §§pop();
                                                                           addr201:
                                                                           §§goto(addr202);
                                                                           §§push(_loc2_);
                                                                        }
                                                                        §§goto(addr244);
                                                                     }
                                                                     §§goto(addr241);
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr298);
                                                }
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr272);
                           }
                           §§goto(addr298);
                        }
                        §§goto(addr218);
                     }
                  }
                  §§goto(addr119);
               }
               §§goto(addr48);
            }
            §§goto(addr218);
         }
         §§goto(addr32);
      }
      
      public function §1!>§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this);
         §§push(this.§4J§);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§4J§ = §§pop();
         §§push(this);
         §§push(this.§%!4§);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() + param1);
         }
         §§pop().§%!4§ = §§pop();
         §§push(this.§%!4§);
         if(_loc3_ || param1)
         {
            §§push(this.§8i§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop().§?V§);
               if(!_loc2_)
               {
                  §§push(§§pop().§%>§);
                  if(_loc3_)
                  {
                     §§push(§§pop().§,j§);
                     if(_loc3_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc2_)
                           {
                              §§push(this.§%!4§);
                              if(_loc3_)
                              {
                                 addr92:
                                 §§push(§§pop() - this.§8i§.§?V§.§%>§.§,j§);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              param1 = §§pop();
                              if(_loc3_ || param1)
                              {
                                 §§push(this);
                                 §§push(this.§4J§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() - param1);
                                 }
                                 §§pop().§4J§ = §§pop();
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(this);
                                    §§push(this.§%!4§);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§%!4§ = §§pop();
                                    this.§+>§();
                                    addr149:
                                    §§push(true);
                                    if(_loc3_ || this)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr160:
                                    §§push(false);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr149);
                           }
                           else
                           {
                              addr158:
                              this.§+>§();
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr158);
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §1R§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§,z§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§"c§ = §6<§.§6H§(this.mName).shape;
         if(!_loc4_)
         {
            §§push(_loc1_.§3@§());
            if(!_loc4_)
            {
               §§push(§"c§.§,p§);
               if(!_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     this.§8!D§ = _loc1_.§&v§()[0];
                     this.§8!7§ = _loc1_.§[s§;
                     if(_loc5_)
                     {
                        addr84:
                        this.§>!%§ = this.§8i§.§?V§.§;!L§.§8!0§(this.mName);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(!this.§>!%§)
                           {
                              if(_loc5_ || _loc1_)
                              {
                                 this.§&N§(null);
                                 if(!_loc4_)
                                 {
                                    addr125:
                                 }
                              }
                           }
                           else
                           {
                              this.§&N§(this.§>!%§.getFrame(0));
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr84);
                  }
                  else
                  {
                     addr66:
                     §§push(_loc1_.§3@§());
                     §§push(§"c§.§"!K§);
                  }
                  §§goto(addr84);
               }
               if(§§pop() == §§pop())
               {
                  if(_loc5_)
                  {
                     this.§8!D§ = new b2Vec2(0,0);
                     if(_loc5_)
                     {
                        this.§8!7§ = 1.5;
                        if(_loc5_)
                        {
                           §§goto(addr84);
                        }
                     }
                     addr132:
                     return;
                  }
                  §§goto(addr125);
               }
               §§goto(addr84);
            }
            §§goto(addr66);
         }
         §§goto(addr84);
      }
      
      public function §&N§(param1:§,z§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(_loc4_ || _loc2_)
         {
            if(!param1)
            {
               addr31:
               _loc2_ = this.§8i§.§;s§.textureManager.§=^§();
            }
            else
            {
               _loc2_ = param1.texture;
               if(_loc4_ || param1)
               {
                  §§push(param1.scale);
                  if(_loc4_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§push(this.§+J§);
            if(_loc4_)
            {
               if(§§pop() == null)
               {
                  this.§+J§ = new §?T§(_loc2_);
                  if(_loc4_ || _loc3_)
                  {
                     this.§,!7§.addChild(this.§+J§);
                     addr91:
                     if(param1)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§goto(addr102);
                        }
                        §§goto(addr271);
                     }
                     else
                     {
                        §§push(this.§+J§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§goto(addr199);
                        }
                     }
                     §§goto(addr271);
                  }
                  §§goto(addr188);
               }
               else
               {
                  §§push(this.§+J§);
                  if(_loc4_)
                  {
                     §§pop().texture = _loc2_;
                     §§goto(addr91);
                  }
               }
               addr102:
               §§push(this.§+J§);
               §§push(param1.pivotX);
               if(_loc4_)
               {
                  §§push(-§§pop());
                  §§push(this.§8!D§);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop().x);
                     if(_loc4_ || this)
                     {
                        §§push(§ !§.§`J§);
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop() / §§pop());
                           if(!(_loc5_ && param1))
                           {
                              §§push(§§pop() - §§pop());
                              if(!_loc5_)
                              {
                                 §§pop().x = §§pop();
                                 §§push(this.§+J§);
                                 if(_loc4_ || param1)
                                 {
                                    §§goto(addr166);
                                 }
                                 else
                                 {
                                    addr199:
                                    §§push(this.§+J§);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(-§§pop().width);
                                       if(!(_loc5_ && this))
                                       {
                                          §§goto(addr217);
                                       }
                                       §§goto(addr271);
                                    }
                                 }
                                 §§goto(addr255);
                              }
                              §§goto(addr188);
                           }
                        }
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr176);
               }
               addr166:
               §§push(-param1.pivotY);
               if(_loc4_ || _loc2_)
               {
                  addr188:
                  addr176:
                  §§push(this.§8!D§.y);
                  if(!(_loc5_ && param1))
                  {
                     addr184:
                     §§push(§§pop() / § !§.§`J§);
                  }
                  §§pop().y = §§pop() - §§pop();
               }
               else
               {
                  addr217:
                  §§push(2);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc4_ || this)
                     {
                        §§pop().x = §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           addr255:
                           §§push(this.§+J§);
                           §§push(-this.§+J§.height);
                           if(!_loc5_)
                           {
                              §§goto(addr260);
                           }
                        }
                        §§goto(addr268);
                     }
                     §§goto(addr271);
                  }
                  addr260:
                  §§pop().y = §§pop() / 2;
               }
               §§goto(addr262);
               this.§+>§();
               return;
            }
            §§goto(addr199);
         }
         §§goto(addr31);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Boolean = true;
         this.§`!<§(param1);
         if(_loc6_ || param1)
         {
            §§push(this.§6z§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  addr34:
                  this.§;G§ = 0;
                  if(!_loc5_)
                  {
                     _loc4_ = false;
                     if(_loc6_)
                     {
                        §§goto(addr43);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr112);
               }
               addr43:
               if(this.mName != "BIRD_SARDINE")
               {
                  if(_loc6_ || this)
                  {
                     this.§5!J§(param1);
                     if(!_loc6_)
                     {
                     }
                     §§goto(addr122);
                  }
                  this.§"3§(param1);
                  if(_loc6_)
                  {
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     §§push(§§pop());
                     if(_loc6_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc6_ || this)
                           {
                              §§pop();
                              if(!(_loc5_ && param3))
                              {
                                 addr112:
                                 §§push(param3);
                                 if(_loc6_)
                                 {
                                    addr115:
                                    §§push(§§pop() == true);
                                 }
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr115);
                        }
                        if(§§pop())
                        {
                           addr118:
                           this.§7J§(param1,param2);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr112);
               }
               addr122:
               return;
            }
            §§goto(addr115);
         }
         §§goto(addr34);
      }
      
      public function §5!J§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§>'§);
         if(!(_loc3_ && _loc3_))
         {
            §§push(0);
            if(!_loc3_)
            {
               if(§§pop() > §§pop())
               {
                  §§push(this);
                  §§push(this.§>'§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§>'§ = §§pop();
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.§>'§);
                     if(_loc2_ || param1)
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           addr71:
                           if(§§pop() <= §§pop())
                           {
                              this.§^I§();
                              addr74:
                           }
                           §§goto(addr74);
                        }
                        else
                        {
                           addr85:
                           §§push(§§pop() <= §§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop());
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       addr104:
                                       §§pop();
                                       §§push(Math.random() * §;!8§ < param1);
                                       if(!_loc3_)
                                       {
                                          §§goto(addr123);
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr123);
                              }
                              addr123:
                              if(§§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    addr132:
                                    §§pop();
                                    §§push(Boolean(this.§8i§.mSlingShotState));
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    this.§'W§();
                                 }
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr104);
                        }
                     }
                     addr84:
                     §§push(0);
                     §§goto(addr85);
                  }
                  §§goto(addr74);
               }
               else
               {
                  §§push(this.§@b§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr84);
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr71);
         }
         §§goto(addr104);
      }
      
      public function §^I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§>'§ = 0;
            if(_loc2_ || _loc1_)
            {
               this.§&N§(this.§>!%§.getFrame(0));
            }
         }
      }
      
      public function §'W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.mName == "BIRD_SARDINE")
            {
               if(_loc2_)
               {
                  return;
               }
            }
            else
            {
               addr43:
               this.§>'§ = §4!-§;
               if(!_loc1_)
               {
                  this.§&N§(this.§>!%§.getSubAnimation("blink").getFrame(0));
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §"3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§@b§);
            if(!_loc3_)
            {
               §§push(0);
               if(_loc2_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc2_ || param1)
                     {
                        §§push(this);
                        §§push(this.§@b§);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§@b§ = §§pop();
                        §§push(this.§@b§);
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr68:
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc2_)
                                 {
                                    this.§!0§();
                                    addr73:
                                 }
                              }
                              §§goto(addr73);
                           }
                           else
                           {
                              addr84:
                              §§push(§§pop() <= §§pop());
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr106:
                                       §§pop();
                                       §§goto(addr130);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr128:
                                       this.§`q§();
                                    }
                                    §§goto(addr130);
                                 }
                                 addr130:
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr118:
                                    §§push(Math.random() * §"§ < param1);
                                 }
                                 return;
                              }
                              §§goto(addr106);
                           }
                        }
                        else
                        {
                           addr83:
                           §§push(0);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr73);
                  }
                  else
                  {
                     §§push(this.§>'§);
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr83);
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr118);
         }
         §§goto(addr128);
      }
      
      public function §!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§@b§ = 0;
            if(!(_loc1_ && _loc1_))
            {
               this.§&N§(this.§>!%§.getFrame(0));
            }
         }
      }
      
      public function §`q§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(this.mName == "BIRD_SARDINE")
         {
            if(_loc3_)
            {
               return;
            }
         }
         else
         {
            §§push(this.§@b§);
            if(_loc3_ || param2)
            {
               §§push(0);
               if(_loc3_ || param1)
               {
                  if(§§pop() > §§pop())
                  {
                     this.§!0§();
                  }
                  addr45:
                  §§push(this.§>'§);
                  §§push(0);
               }
               if(§§pop() > §§pop())
               {
                  this.§^I§();
                  if(!(_loc4_ && this))
                  {
                     addr56:
                     §§push(param1);
                     if(!(_loc4_ && this))
                     {
                        if(§§pop() < 0)
                        {
                           §§push(§%h§.§"!B§);
                           if(!_loc4_)
                           {
                              addr70:
                              §§push(int(§§pop()));
                           }
                           param1 = §§pop();
                        }
                        this.§@b§ = §8D§;
                        this.§&N§(this.§>!%§.getSubAnimation("yell").getFrame(0));
                        §§push(Boolean(this.§=!2§));
                        §§push(Boolean(this.§=!2§));
                        if(!(_loc4_ && param1))
                        {
                           if(!§§pop())
                           {
                              if(_loc3_ || param2)
                              {
                                 §§pop();
                                 addr113:
                                 §§push(this.§6z§);
                                 if(_loc3_ || param2)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc4_ && param2))
                                    {
                                       §§goto(addr130);
                                    }
                                    §§goto(addr132);
                                 }
                              }
                           }
                           §§goto(addr130);
                        }
                        addr130:
                        if(§§pop() || param2)
                        {
                           if(!(_loc4_ && this))
                           {
                              §;!%§.§6!&§(param1,this.§8"§);
                              if(_loc3_ || param2)
                              {
                              }
                           }
                        }
                        else
                        {
                           §;!%§.§6!&§(param1,this.§8"§,§#1§);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr113);
               }
               §§goto(addr56);
            }
            §§goto(addr45);
         }
         addr172:
      }
      
      public function §7J§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(!_loc7_)
         {
            §§push(this.§;G§);
            if(_loc6_ || _loc3_)
            {
               §§push(0);
               if(_loc6_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc6_ || this)
                     {
                        addr40:
                        §§push(this);
                        §§push(this.§;G§);
                        if(_loc6_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§;G§ = §§pop();
                        if(_loc6_)
                        {
                           §§push(this.§;G§);
                           §§push(0);
                           if(_loc6_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    var _loc4_:*;
                                    §§push((_loc4_ = this).§']§);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(!_loc7_)
                                    {
                                       _loc4_.§']§ = _loc5_;
                                    }
                                    if(_loc6_)
                                    {
                                       addr85:
                                       §§push(this);
                                       §§push(this.§4!0§);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(§§pop() * 0.4);
                                       }
                                       §§pop().§4!0§ = §§pop();
                                       if(_loc6_ || this)
                                       {
                                          addr105:
                                          §§push(!this.§=!2§);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop());
                                             if(_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§pop();
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.§']§);
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§push(2);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§pop() < §§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  addr134:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        addr140:
                                                                        §§push(this.§']§ > 1);
                                                                        §§push(this.§']§ > 1);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr144:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(this.§4!0§);
                                                                                    §§push(-1);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr156:
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr159:
                                                                                             this.§4!0§ = -1;
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr164:
                                                                                                this.§#'§ = this.§4!0§;
                                                                                                this.§;G§ = §88§;
                                                                                                if(!(_loc7_ && _loc3_))
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§;G§);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop() * (Math.abs(this.§#'§) / 2));
                                                                                                   }
                                                                                                   §§pop().§;G§ = §§pop();
                                                                                                   this.§5J§ = this.§;G§;
                                                                                                   addr195:
                                                                                                   this.§&k§ = 0;
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      this.§,k§ = 0;
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr485:
                                                                                                         this.§+>§();
                                                                                                         addr290:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr255:
                                                                                                         this.§,>§ = 0;
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            addr260:
                                                                                                            this.§&k§ = 0;
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               addr280:
                                                                                                               this.§4!0§ = 0;
                                                                                                               if(_loc6_ || param2)
                                                                                                               {
                                                                                                                  §§goto(addr290);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr550:
                                                                                                                  §§push(this.§%!I§);
                                                                                                                  if(!(_loc7_ && this))
                                                                                                                  {
                                                                                                                     addr559:
                                                                                                                     §§push(!§§pop());
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc6_ || this)
                                                                                                                     {
                                                                                                                        this.§!v§();
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr570);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr448);
                                                                                                            }
                                                                                                            §§goto(addr485);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr312:
                                                                                                            §§push(this.§5J§);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr319:
                                                                                                               §§push(§§pop() - this.§;G§);
                                                                                                               §§push(this.§5J§);
                                                                                                               §§push(2);
                                                                                                               if(!(_loc7_ && this))
                                                                                                               {
                                                                                                                  _loc3_ = Number(§§pop() / (§§pop() / §§pop()));
                                                                                                                  §§push(§7P§.§2!A§(_loc3_));
                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        _loc3_ = §§pop();
                                                                                                                        addr347:
                                                                                                                        §§push(this);
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(_loc6_ || param2)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§#'§);
                                                                                                                        }
                                                                                                                        §§pop().§,>§ = §§pop();
                                                                                                                        addr360:
                                                                                                                        §§goto(addr448);
                                                                                                                     }
                                                                                                                     §§goto(addr530);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr392:
                                                                                                               §§push(§§pop() / (§§pop() / §§pop()));
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr396:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(§7P§.§2!A§(_loc3_,false));
                                                                                                                        if(_loc6_ || param2)
                                                                                                                        {
                                                                                                                           addr419:
                                                                                                                           _loc3_ = Number(§§pop());
                                                                                                                           §§push(this);
                                                                                                                           §§push(this.§#'§);
                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              if(_loc6_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(this.§#'§);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                           §§pop().§,>§ = §§pop();
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr448:
                                                                                                                              §§push(this);
                                                                                                                              §§push(360);
                                                                                                                              §§push(§7P§);
                                                                                                                              §§push(this.§5J§);
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(this.§;G§);
                                                                                                                                 if(!(_loc7_ && param1))
                                                                                                                                 {
                                                                                                                                    §§goto(addr470);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                              }
                                                                                                                              addr470:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(this.§5J§);
                                                                                                                              }
                                                                                                                              §§push(§§pop() * §§pop().§2!A§(§§pop()));
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * this.§,k§);
                                                                                                                              }
                                                                                                                              §§pop().§&k§ = §§pop();
                                                                                                                              if(!(_loc7_ && this))
                                                                                                                              {
                                                                                                                                 §§goto(addr485);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr525:
                                                                                                                                 §§push(!this.§6z§);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    addr530:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || this)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          §§goto(addr550);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr550);
                                                                                                                                 }
                                                                                                                                 §§goto(addr559);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr506:
                                                                                                                              §§push(this.§=!2§);
                                                                                                                              if(_loc6_ || param1)
                                                                                                                              {
                                                                                                                                 addr516:
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    addr519:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr525);
                                                                                                                                          }
                                                                                                                                          §§goto(addr570);
                                                                                                                                       }
                                                                                                                                       §§goto(addr525);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr530);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr525);
                                                                                                                        }
                                                                                                                        §§goto(addr419);
                                                                                                                     }
                                                                                                                     §§goto(addr485);
                                                                                                                  }
                                                                                                                  §§goto(addr419);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr492:
                                                                                                                  §§push(§§pop() < param1);
                                                                                                                  §§push(§§pop() < param1);
                                                                                                                  if(!(_loc7_ && param2))
                                                                                                                  {
                                                                                                                     addr502:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr503:
                                                                                                                        §§pop();
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           §§goto(addr506);
                                                                                                                        }
                                                                                                                        §§goto(addr570);
                                                                                                                     }
                                                                                                                     §§goto(addr516);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr519);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr379:
                                                                                                               §§push(§§pop() - this.§;G§);
                                                                                                            }
                                                                                                            §§push(this.§5J§);
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               §§goto(addr392);
                                                                                                               §§push(2);
                                                                                                            }
                                                                                                            §§goto(addr392);
                                                                                                         }
                                                                                                      }
                                                                                                      addr570:
                                                                                                      return;
                                                                                                   }
                                                                                                   §§goto(addr525);
                                                                                                }
                                                                                                §§goto(addr255);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr312);
                                                                                       }
                                                                                       §§goto(addr164);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr371:
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          §§goto(addr379);
                                                                                       }
                                                                                       §§goto(addr492);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr550);
                                                                              }
                                                                              §§goto(addr503);
                                                                           }
                                                                           §§goto(addr156);
                                                                        }
                                                                        §§goto(addr502);
                                                                     }
                                                                     §§goto(addr260);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§=!2§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr210:
                                                                        §§push(!§§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(param2);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr228:
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          addr236:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                this.§!v§(2.25);
                                                                                                if(!(_loc6_ || param1))
                                                                                                {
                                                                                                   §§goto(addr280);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr249:
                                                                                                }
                                                                                                §§goto(addr485);
                                                                                             }
                                                                                             §§goto(addr249);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             this.§;G§ = 0;
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§goto(addr255);
                                                                                             }
                                                                                             §§goto(addr360);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr516);
                                                                                    }
                                                                                    §§goto(addr525);
                                                                                 }
                                                                                 §§goto(addr492);
                                                                              }
                                                                              §§goto(addr236);
                                                                           }
                                                                           §§goto(addr530);
                                                                        }
                                                                        §§goto(addr516);
                                                                     }
                                                                     §§goto(addr228);
                                                                  }
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr134);
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr236);
                                       }
                                    }
                                    §§goto(addr347);
                                 }
                                 §§goto(addr105);
                              }
                              else
                              {
                                 §§push(this.§;G§);
                                 §§push(this.§5J§);
                                 §§push(2);
                                 if(!(_loc7_ && param1))
                                 {
                                    if(§§pop() >= §§pop() / §§pop())
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          §§goto(addr312);
                                       }
                                       §§goto(addr506);
                                    }
                                    else
                                    {
                                       §§push(this.§5J§);
                                       if(!(_loc7_ && param2))
                                       {
                                          §§goto(addr371);
                                          §§push(2);
                                       }
                                    }
                                    §§goto(addr396);
                                 }
                              }
                              §§goto(addr392);
                           }
                           §§goto(addr371);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr85);
                  }
                  else
                  {
                     §§push(Math.random() * §'7§);
                  }
                  §§goto(addr492);
               }
               §§goto(addr371);
            }
            §§goto(addr319);
         }
         §§goto(addr40);
      }
      
      public function §!v§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.mName);
            if(!_loc2_)
            {
               §§push("BIRD_SARDINE");
               if(!(_loc2_ && param1))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        return;
                     }
                     addr60:
                     this.§,>§ = 0;
                     if(_loc3_)
                     {
                        §§push(this);
                        §§push(0.75);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(Math.random() * 1.5);
                           if(_loc3_ || this)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc3_ || param1)
                              {
                                 §§push(-§§pop());
                                 if(_loc3_)
                                 {
                                    addr96:
                                    §§push(§§pop() * param1);
                                 }
                                 §§pop().§#'§ = §§pop();
                                 if(_loc3_)
                                 {
                                    this.§4!0§ = this.§#'§;
                                    §§push(this);
                                    §§push(this.§;G§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() * (Math.abs(this.§#'§) / 3));
                                    }
                                    §§pop().§;G§ = §§pop();
                                    if(!_loc2_)
                                    {
                                       addr120:
                                       this.§5J§ = this.§;G§;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr141:
                                          §§push(this.mName);
                                          if(_loc3_)
                                          {
                                             §§push("BIRD_WHITE");
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§pop();
                                                            if(!_loc2_)
                                                            {
                                                               §§push(this.mName);
                                                               if(_loc3_ || this)
                                                               {
                                                                  addr179:
                                                                  §§push("BIRD_BLACK");
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     addr187:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        addr195:
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc2_ && param1)
                                                                           {
                                                                           }
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                     §§pop();
                                                                     addr207:
                                                                     §§push(this.mName);
                                                                     §§push("RED_BIG");
                                                                  }
                                                                  addr209:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        addr212:
                                                                        this.§,k§ = 0;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(this.§;G§ < 350)
                                                                     {
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           addr227:
                                                                           this.§,k§ = 0;
                                                                           if(_loc2_)
                                                                           {
                                                                              addr266:
                                                                              §§push(this);
                                                                              if(!(_loc2_ && param1))
                                                                              {
                                                                                 if(Math.random() > 0.5)
                                                                                 {
                                                                                    addr279:
                                                                                    §§push(this.§,k§);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc2_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(Number(0));
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this);
                                                                        if(!(_loc2_ && _loc3_))
                                                                        {
                                                                           if(Math.random() > 0.5)
                                                                           {
                                                                              addr246:
                                                                              §§push(1);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc2_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr264:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§pop().§,k§ = §§pop();
                                                                              §§goto(addr266);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(-1);
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     §§goto(addr266);
                                                                  }
                                                                  addr289:
                                                                  §§pop().§,k§ = §§pop();
                                                                  return;
                                                                  §§push(§§pop() == §§pop());
                                                               }
                                                               §§goto(addr207);
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr209);
                                             }
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr120);
                              }
                           }
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr266);
                  }
                  else
                  {
                     this.§']§ = 0;
                     this.§;G§ = §88§;
                     if(_loc3_ || this)
                     {
                        §§goto(addr60);
                     }
                  }
                  §§goto(addr141);
               }
               §§goto(addr187);
            }
            §§goto(addr179);
         }
         §§goto(addr227);
      }
      
      public function §+>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§,!7§);
            if(!_loc1_)
            {
               §§push(this.§-`§);
               §§push(§ !§.§`J§);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() / §§pop());
                  if(!(_loc1_ && this))
                  {
                     §§pop().x = §§pop();
                     if(_loc2_ || this)
                     {
                        §§push(this.§,!7§);
                        if(_loc2_ || this)
                        {
                           §§push(this.§4J§);
                           §§push(this.§,>§);
                           if(!_loc1_)
                           {
                              addr90:
                              §§push(§§pop() + §§pop());
                              §§push(§ !§.§`J§);
                           }
                           §§push(§§pop() / §§pop());
                           if(!(_loc1_ && _loc1_))
                           {
                              §§pop().y = §§pop();
                              §§goto(addr119);
                           }
                           §§pop().rotation = §§pop();
                           §§goto(addr119);
                        }
                     }
                  }
                  §§goto(addr111);
               }
               §§goto(addr90);
            }
            §§goto(addr111);
         }
         addr119:
         if(!(_loc1_ && this))
         {
            addr111:
            §§push(this.§,!7§);
            §§push(this.§&k§ / 180 * Math.PI);
         }
      }
      
      public function §5S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%!I§ = true;
         }
         this.§=!2§ = false;
         this.§6z§ = false;
         this.§']§ = 0;
         if(_loc1_)
         {
            this.§3!,§ = 0;
            this.§;G§ = 0;
            this.§;G§ = 0;
            this.§,>§ = 0;
            this.§&k§ = 0;
            this.§4!0§ = 0;
            if(!(_loc2_ && this))
            {
               this.§,k§ = 0;
            }
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.sqrt((param1 - this.§-`§) * (param1 - this.§-`§) + (param2 - this.§4J§) * (param2 - this.§4J§));
         if(_loc5_ || _loc3_)
         {
            §§push(_loc3_);
            §§push(this.§8!7§);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(_loc5_)
               {
                  addr82:
                  §§push(true);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr86:
                  §§push(false);
               }
               return §§pop();
            }
            §§goto(addr86);
         }
         §§goto(addr82);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §§push(this.§-`§);
            if(!(_loc5_ && param3))
            {
               §§push(param3);
               if(_loc6_)
               {
                  §§push(§§pop() >= §§pop());
                  §§push(§§pop() >= §§pop());
                  if(_loc6_ || param1)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(this.§-`§);
                           if(_loc6_ || param3)
                           {
                              §§push(param4);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() <= §§pop());
                                 if(!(_loc5_ && param2))
                                 {
                                    addr79:
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       addr82:
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && param3))
                                          {
                                             §§pop();
                                             if(!(_loc5_ && param1))
                                             {
                                                addr98:
                                                §§push(this.§4J§);
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         addr133:
                                                         §§push(§§pop() && this.§4J§ <= param2);
                                                      }
                                                      return §§pop();
                                                   }
                                                }
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr135);
                                       }
                                    }
                                 }
                                 §§goto(addr133);
                              }
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr82);
               }
            }
            §§goto(addr135);
         }
         §§goto(addr98);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§-`§);
            if(_loc5_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                     if(!!§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              addr47:
                              §§push(this.§4J§ == param2);
                              if(!(_loc4_ && this))
                              {
                                 addr66:
                                 if(!§§pop())
                                 {
                                    §§push(true);
                                    if(_loc5_)
                                    {
                                       addr70:
                                       _loc3_ = §§pop();
                                       if(!(_loc4_ && param1))
                                       {
                                          addr78:
                                          this.§-`§ = param1;
                                          if(!(_loc4_ && param1))
                                          {
                                             addr98:
                                             this.§4J§ = param2;
                                             if(!(_loc4_ && param2))
                                             {
                                                this.§3!,§ = 100;
                                                if(_loc5_ || _loc3_)
                                                {
                                                   this.§+>§();
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr122);
                                                   }
                                                }
                                                §§goto(addr122);
                                             }
                                             addr122:
                                             §§goto(addr123);
                                          }
                                       }
                                       §§goto(addr124);
                                    }
                                    addr123:
                                    if(_loc3_)
                                    {
                                       addr124:
                                       this.§8i§.§5B§();
                                    }
                                    return;
                                 }
                                 §§goto(addr78);
                              }
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr70);
                     }
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr47);
         }
         §§goto(addr98);
      }
      
      public function §'!4§() : §?T§
      {
         return this.§+J§;
      }
      
      public function get §3A§() : Number
      {
         return this.§;G§;
      }
      
      public function get §>%§() : Number
      {
         return this.§3!,§;
      }
      
      public function set §>%§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§3!,§ = param1;
         }
      }
      
      public function get §]k§() : Number
      {
         return this.§4Y§;
      }
      
      public function get §%K§() : Boolean
      {
         return this.§=!2§;
      }
      
      public function get radius() : Number
      {
         return this.§8!7§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§,!7§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §]k§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§4Y§ = param1;
         }
      }
      
      public function get §4b§() : Number
      {
         return this.§2V§;
      }
      
      public function set §4b§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§2V§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§-_§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-_§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§-`§;
      }
      
      public function get y() : Number
      {
         return this.§4J§;
      }
      
      public function get §#K§() : Number
      {
         return this.§-x§;
      }
      
      public function get §;q§() : Number
      {
         return this.§=f§;
      }
      
      public function §5!&§() : Boolean
      {
         return this.§%!I§;
      }
   }
}
