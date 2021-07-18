package §_-OJ§
{
   import §_-4g§.Texture;
   import §_-CR§.§_-Dz§;
   import §_-HU§.§_-6n§;
   import §_-HU§.§_-Ju§;
   import §_-HU§.§_-yP§;
   import §_-Ja§.b2Vec2;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-Ra§.§_-RO§;
   import §_-Ra§.§_-Vr§;
   import §_-e3§.§_-Fq§;
   
   public class §_-1W§
   {
      
      public static const §_-3n§:String = "ChannelSlingshot";
      
      public static const §_-oX§:Number = 900;
      
      public static const §_-L5§:Number = 200;
      
      public static const §_-WX§:Number = 200;
      
      public static const §_-w3§:Number = 1500;
      
      public static const §_-De§:Number = 5000;
      
      public static const §_-mS§:Number = 1000;
      
      public static const §_-SU§:Number = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-3n§ = "ChannelSlingshot";
            if(!_loc1_)
            {
               §_-oX§ = 900;
            }
            §_-L5§ = 200;
            §_-WX§ = 200;
            if(!_loc1_)
            {
               §_-w3§ = 1500;
            }
            §_-De§ = 5000;
            §_-mS§ = 1000;
            §_-SU§ = 1000;
         }
      }
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-2V§:Number;
      
      public var §_-p8§:Number;
      
      private var §_-A§:§_-6n§;
      
      private var §_-O5§:Number;
      
      protected var §_-oL§:Number = 1;
      
      private var §_-Cv§:Sprite;
      
      private var §_-jC§:§_-RO§;
      
      private var §_-v4§:§_-19§;
      
      private var §_-7g§:§_-7G§;
      
      private var §_-XL§:Number;
      
      private var §_-qi§:Boolean = false;
      
      private var §_-Fz§:Boolean = false;
      
      private var §_-zZ§:Number;
      
      private var §_-GB§:Number = 0;
      
      private var §_-Fb§:Number = 0;
      
      private var §_-fl§:Number = 0;
      
      private var §_-us§:Number = 1000;
      
      private var §_-8E§:Number;
      
      private var §_-Cn§:Number;
      
      private var §_-Ko§:int;
      
      private var §_-o0§:Number = 0;
      
      private var §_-wi§:Number;
      
      private var §_-t7§:Number;
      
      private var §_-Lz§:Number = 0;
      
      private var §_-Qr§:Number = 1;
      
      private var §_-sD§:Number = 0;
      
      private var §_-uV§:b2Vec2;
      
      private var §_-KA§:Number = 1;
      
      public function §_-1W§(param1:§_-7G§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            super();
            this.§_-7g§ = param1;
            this.§_-Cv§ = param2;
            this.mName = param3;
            if(_loc7_)
            {
               this.§_-A§ = §_-yP§.§_-nU§(this.mName).§_-Ie§;
               if(!(_loc6_ && param2))
               {
                  this.mX = param4;
                  if(!(_loc6_ && this))
                  {
                     addr65:
                     this.mY = param5;
                     this.§_-2V§ = param4;
                  }
                  this.§_-p8§ = param5;
                  this.§_-O5§ = 0;
                  if(!(_loc6_ && param2))
                  {
                     this.§_-qi§ = false;
                  }
                  this.§_-Fz§ = false;
                  §§goto(addr97);
               }
               §§goto(addr65);
            }
            §§goto(addr97);
         }
         addr97:
         this.§_-GB§ = 0;
         this.§_-Yy§();
         this.§_-wi§ = 0;
      }
      
      public function §_-k-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-qi§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§_-Cv§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr49:
                     this.§_-Cv§.dispose();
                     if(_loc2_)
                     {
                        addr52:
                        this.§_-Cv§ = null;
                     }
                  }
                  §§goto(addr52);
               }
               return;
            }
            §§goto(addr49);
         }
         §§goto(addr52);
      }
      
      public function §_-3-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§_-Fz§);
            if(!(_loc2_ && param1))
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr42:
                        §§pop();
                        §§push(this.§_-qi§);
                        if(!_loc3_)
                        {
                        }
                        §§goto(addr48);
                     }
                     addr48:
                     if(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           return;
                        }
                        addr96:
                        §§push(Number(Math.min(param1,this.§_-zZ§)));
                        if(_loc3_ || param1)
                        {
                           §§goto(addr109);
                        }
                        §§goto(addr253);
                     }
                     else
                     {
                        §§push(this.§_-oL§);
                        if(!_loc2_)
                        {
                           §§push(0);
                           if(_loc3_ || param1)
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    this.§_-fl§ = 0;
                                    if(_loc3_)
                                    {
                                       addr82:
                                       this.§_-o0§ = 0;
                                       if(_loc3_)
                                       {
                                          this.§_-O5§ = 0;
                                          this.§_-Cn§ = 0;
                                          this.§_-oL§ = 0;
                                          §§goto(addr96);
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr117);
                                 }
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr253);
                        }
                     }
                     addr109:
                     param1 = §§pop();
                     if(!(_loc2_ && param1))
                     {
                        addr117:
                        §§push(this);
                        §§push(this.mX);
                        if(!_loc2_)
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              §§push(this.§_-7g§.mX);
                              if(_loc3_)
                              {
                                 §§push(§§pop() - this.mX);
                                 if(_loc3_ || this)
                                 {
                                    §§goto(addr153);
                                 }
                              }
                              §§push(§§pop() / §§pop());
                           }
                           §§goto(addr153);
                        }
                        addr153:
                        §§push(§§pop() * §§pop());
                        if(!_loc2_)
                        {
                           §§push(this.§_-zZ§);
                        }
                        §§pop().mX = §§pop() + §§pop();
                        §§push(this);
                        §§push(this.mY);
                        if(!_loc2_)
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§push(this.§_-7g§.mY);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop() - this.mY);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr190);
                                 }
                              }
                           }
                           §§goto(addr188);
                        }
                        addr190:
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                           addr188:
                           §§push(§§pop() / this.§_-zZ§);
                        }
                        §§pop().mY = §§pop() + §§pop();
                        §§push(this);
                        §§push(this.mY);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(param1);
                           if(!(_loc2_ && param1))
                           {
                              §§push(§§pop() / 50);
                              if(!_loc2_)
                              {
                                 §§push(this.§_-zZ§);
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(§§pop() / §_-oX§);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().mY = §§pop();
                        §§push(this);
                        §§push(this.§_-O5§);
                        if(!_loc2_)
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§push(360 - this.§_-O5§);
                              if(_loc3_)
                              {
                                 §§goto(addr253);
                              }
                           }
                           §§goto(addr251);
                        }
                        addr253:
                        §§push(§§pop() * §§pop());
                        if(!(_loc2_ && _loc2_))
                        {
                           addr251:
                           §§push(§§pop() / this.§_-zZ§);
                        }
                        §§pop().§_-O5§ = §§pop() + §§pop();
                        §§push(this);
                        §§push(this.§_-zZ§);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§_-zZ§ = §§pop();
                        if(this.§_-zZ§ <= 0)
                        {
                           this.mX = this.§_-7g§.mX;
                           if(_loc3_ || _loc2_)
                           {
                              this.mY = this.§_-7g§.mY;
                              this.§_-Fz§ = false;
                              this.§_-qi§ = true;
                           }
                           this.§_-O5§ = 0;
                        }
                        §§goto(addr304);
                     }
                     addr304:
                     this.§_-nI§();
                     return;
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr48);
               }
            }
            §§goto(addr42);
         }
         §§goto(addr82);
      }
      
      public function §_-18§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§_-Fz§ = true;
            this.§_-zZ§ = §_-oX§;
            if(_loc1_ || _loc1_)
            {
               this.§finally§(§_-6n§.§_-jq§);
               if(_loc1_ || this)
               {
                  if(this.§_-o0§ != 0)
                  {
                     if(!_loc2_)
                     {
                        addr57:
                        §§push(this);
                        §§push(this.mY);
                        if(_loc1_ || _loc2_)
                        {
                           §§push(§§pop() + this.§_-o0§);
                        }
                        §§pop().mY = §§pop();
                        if(!_loc2_)
                        {
                           addr80:
                           this.§_-o0§ = 0;
                        }
                     }
                     §§goto(addr80);
                  }
                  return;
               }
            }
            §§goto(addr80);
         }
         §§goto(addr57);
      }
      
      public function §_-v-§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         §§push(this.§_-qi§);
         if(!_loc4_)
         {
            §§push(!§§pop());
            if(!§§pop())
            {
               §§pop();
               §§push(this.§_-wi§);
               if(_loc3_)
               {
                  §§push(0);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr36:
                     if(§§pop() >= §§pop())
                     {
                        §§push(this.§_-t7§);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop() > this.§_-7g§.§_-Ag§.§_-N7§.§_-IL§)
                           {
                              §§push(this);
                              §§push(this.§_-7g§.§_-Ag§.§_-N7§.§_-IL§);
                              if(_loc3_ || this)
                              {
                                 §§push(§§pop() - this.§_-t7§);
                              }
                              §§pop().§_-8W§(§§pop());
                              if(!(_loc4_ && _loc3_))
                              {
                                 this.§_-wi§ = -1;
                                 §§goto(addr79);
                              }
                              §§goto(addr172);
                           }
                           addr79:
                           §§push(this);
                           §§push(this.§_-wi§);
                           if(_loc3_)
                           {
                              §§push(§§pop() - param1);
                           }
                           §§pop().§_-wi§ = §§pop();
                           if(_loc3_)
                           {
                              §§push(this.§_-wi§);
                              if(_loc3_)
                              {
                                 addr93:
                                 §§push(0);
                                 if(_loc3_)
                                 {
                                    addr96:
                                    if(§§pop() <= §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          addr102:
                                          if(this.§_-fl§ > 0)
                                          {
                                             if(_loc3_)
                                             {
                                                this.§_-wi§ = this.§_-fl§;
                                                §§goto(addr109);
                                             }
                                             else
                                             {
                                                addr123:
                                                §§push(this.§_-7g§);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(§§pop().§_-Ag§);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(§§pop().objects);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(§§pop().§_-rH§(this.mX,this.§_-t7§));
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(_loc3_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr172:
                                                               if(_loc2_ < 0)
                                                               {
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     addr181:
                                                                     §§push(this);
                                                                     §§push(param1);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§pop() / 100);
                                                                     }
                                                                     §§push(§§pop().§_-8W§(§§pop()));
                                                                     if(_loc3_)
                                                                     {
                                                                        addr190:
                                                                        if(§§pop())
                                                                        {
                                                                           this.§_-wi§ = -1;
                                                                           addr194:
                                                                        }
                                                                        else
                                                                        {
                                                                           this.§_-wi§ = 0;
                                                                           if(!(_loc3_ || this))
                                                                           {
                                                                              addr272:
                                                                              return;
                                                                              addr249:
                                                                           }
                                                                           §§goto(addr272);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr264:
                                                                        if(§§pop())
                                                                        {
                                                                           this.§_-wi§ = 2000;
                                                                        }
                                                                        else
                                                                        {
                                                                           this.§_-wi§ = 500;
                                                                        }
                                                                        §§goto(addr272);
                                                                     }
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§_-7g§);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop().§_-Ag§);
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop().objects);
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop().getObject(§§pop()));
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop().§_-Fi§);
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       this.§_-wi§ = -1;
                                                                                       §§goto(addr249);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr255:
                                                                                       §§push(this.§_-7g§.§_-Ag§.objects.getObject(_loc2_));
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                              }
                                                                              §§goto(addr264);
                                                                              §§push(§§pop().§_-AA§());
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                   }
                                                }
                                                §§goto(addr255);
                                             }
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(!_loc4_)
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc3_)
                                                {
                                                   if(!isNaN(this.§_-t7§))
                                                   {
                                                      §§goto(addr123);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§goto(addr194);
                                             }
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr272);
                                 }
                              }
                              §§goto(addr102);
                           }
                           addr109:
                           return;
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr272);
                  }
                  §§goto(addr96);
               }
               §§goto(addr102);
            }
            §§goto(addr36);
         }
         §§goto(addr190);
      }
      
      public function §_-8W§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this);
         §§push(this.mY);
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().mY = §§pop();
         §§push(this);
         §§push(this.§_-t7§);
         if(!_loc2_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§_-t7§ = §§pop();
         if(!_loc2_)
         {
            §§push(this.§_-t7§);
            if(!_loc2_)
            {
               §§push(this.§_-7g§);
               if(_loc3_)
               {
                  §§push(§§pop().§_-Ag§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop().§_-N7§);
                     if(!_loc2_)
                     {
                        §§push(§§pop().§_-IL§);
                        if(!(_loc2_ && this))
                        {
                           if(§§pop() > §§pop())
                           {
                              §§push(this.§_-t7§);
                              if(_loc3_)
                              {
                                 addr81:
                                 §§push(§§pop() - this.§_-7g§.§_-Ag§.§_-N7§.§_-IL§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr90:
                                    param1 = §§pop();
                                    if(!(_loc2_ && param1))
                                    {
                                       §§push(this);
                                       §§push(this.mY);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().mY = §§pop();
                                       §§push(this);
                                       §§push(this.§_-t7§);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().§_-t7§ = §§pop();
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          this.§_-nI§();
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(true);
                                             if(_loc3_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr150:
                                             §§push(false);
                                          }
                                          return §§pop();
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                              }
                              §§goto(addr90);
                           }
                           this.§_-nI§();
                           §§goto(addr150);
                        }
                     }
                  }
               }
               §§goto(addr81);
            }
            §§goto(addr90);
         }
         §§goto(addr150);
      }
      
      public function §_-Yy§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§_-Vr§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§_-Ju§ = §_-yP§.§_-nU§(this.mName).shape;
         §§push(_loc1_.§_-9B§());
         if(_loc5_)
         {
            §§push(§_-Ju§.§_-d9§);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() == §§pop())
               {
                  this.§_-uV§ = _loc1_.§_-mW§()[0];
                  this.§_-XL§ = _loc1_.§_-sa§;
               }
               else
               {
                  addr63:
                  if(_loc1_.§_-9B§() == §_-Ju§.§_-K9§)
                  {
                     this.§_-uV§ = new b2Vec2(0,0);
                     this.§_-XL§ = 1.5;
                  }
               }
               this.§_-jC§ = this.§_-7g§.§_-Ag§.§_-tJ§.§_-S-§(this.mName);
               if(!this.§_-jC§)
               {
                  if(_loc5_ || _loc1_)
                  {
                     this.§_-OO§(null);
                  }
               }
               else
               {
                  this.§_-OO§(this.§_-jC§.getFrame(0));
               }
               return;
            }
         }
         §§goto(addr63);
      }
      
      public function §_-OO§(param1:§_-Vr§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Texture = null;
         if(!(_loc4_ && param1))
         {
            if(!param1)
            {
               addr25:
               _loc2_ = this.§_-7g§.§_-Bd§.§_-JG§.§_-Z0§();
               if(_loc3_ || param1)
               {
                  addr44:
                  §§push(this.§_-v4§);
                  if(!(_loc4_ && param1))
                  {
                     if(§§pop())
                     {
                        §§push(this.§_-Cv§);
                        if(!_loc4_)
                        {
                           §§push(this.§_-v4§);
                           if(_loc3_ || this)
                           {
                              §§pop().removeChild(§§pop(),true);
                              if(_loc3_ || _loc2_)
                              {
                                 this.§_-v4§ = null;
                                 if(!_loc4_)
                                 {
                                    addr81:
                                    this.§_-v4§ = new §_-19§(_loc2_);
                                    if(_loc4_ && _loc2_)
                                    {
                                    }
                                    §§goto(addr216);
                                 }
                                 if(param1)
                                 {
                                    §§push(this.§_-v4§);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr104:
                                       §§push(param1.pivotX);
                                       if(!(_loc4_ && param1))
                                       {
                                          §§push(-§§pop());
                                          §§push(this.§_-uV§);
                                          if(_loc3_ || this)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc3_)
                                             {
                                                §§push(§_-tL§.§_-7m§);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            §§push(this.§_-v4§);
                                                            if(!_loc4_)
                                                            {
                                                               addr170:
                                                               §§push(-param1.pivotY);
                                                               §§push(this.§_-uV§.y);
                                                               if(_loc3_)
                                                               {
                                                                  addr176:
                                                                  §§pop().y = §§pop() - §§pop() / §_-tL§.§_-7m§;
                                                                  §§goto(addr234);
                                                               }
                                                               §§goto(addr176);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr188);
                                                            }
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                }
                                             }
                                             §§goto(addr176);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr188);
                                 }
                                 else
                                 {
                                    §§push(this.§_-v4§);
                                    if(_loc3_ || param1)
                                    {
                                       addr188:
                                       §§push(this.§_-v4§);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(-§§pop().width);
                                          if(_loc3_ || this)
                                          {
                                             addr206:
                                             §§push(2);
                                             if(_loc3_ || param1)
                                             {
                                                §§pop().x = §§pop() / §§pop();
                                                addr216:
                                                §§goto(addr220);
                                             }
                                          }
                                          §§goto(addr225);
                                       }
                                       addr220:
                                       §§goto(addr218);
                                    }
                                 }
                                 addr218:
                                 §§push(this.§_-v4§);
                                 §§push(-this.§_-v4§.height);
                                 if(_loc3_)
                                 {
                                    addr225:
                                    §§push(§§pop() / 2);
                                 }
                                 §§pop().y = §§pop();
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr238:
                                    this.§_-Cv§.addChild(this.§_-v4§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr253:
                                       this.§_-nI§();
                                    }
                                    addr234:
                                    addr236:
                                 }
                                 return;
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr238);
                        }
                        §§goto(addr236);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr104);
               }
               §§goto(addr253);
            }
            else
            {
               _loc2_ = param1.texture;
            }
            §§goto(addr44);
         }
         §§goto(addr25);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Boolean = true;
         if(_loc6_)
         {
            this.§_-v-§(param1);
            if(_loc6_)
            {
               addr23:
               if(this.§_-Fz§)
               {
                  if(_loc6_ || param1)
                  {
                     this.§_-fl§ = 0;
                     _loc4_ = false;
                     if(!(_loc5_ && param2))
                     {
                        addr52:
                        if(this.mName != "BIRD_SARDINE")
                        {
                           if(_loc6_)
                           {
                              addr58:
                              this.§_-Jt§(param1);
                              if(_loc6_ || param2)
                              {
                                 this.§_-Db§(param1);
                                 if(!_loc5_)
                                 {
                                    addr73:
                                    §§push(Boolean(_loc4_));
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                          }
                                          §§goto(addr94);
                                       }
                                       §§push(§§pop() == §§pop());
                                    }
                                    §§goto(addr94);
                                 }
                                 addr94:
                                 §§push(param3);
                                 if(!_loc5_)
                                 {
                                    §§push(true);
                                 }
                                 if(§§pop())
                                 {
                                    addr95:
                                    this.§_-8m§(param1,param2);
                                 }
                                 §§goto(addr99);
                              }
                              §§goto(addr73);
                           }
                        }
                     }
                     addr99:
                     return;
                  }
                  §§goto(addr95);
               }
               §§goto(addr52);
            }
            §§goto(addr58);
         }
         §§goto(addr23);
      }
      
      public function §_-Jt§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§_-GB§);
         if(!(_loc3_ && _loc2_))
         {
            §§push(0);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() > §§pop())
               {
                  §§push(this);
                  §§push(this.§_-GB§);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§_-GB§ = §§pop();
                  §§push(this.§_-GB§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           this.§_-2u§();
                           if(_loc3_ && _loc3_)
                           {
                              addr136:
                              if(this.§_-7g§.mSlingShotState)
                              {
                                 addr141:
                                 this.§_-C5§();
                              }
                           }
                           else
                           {
                              addr73:
                           }
                           return;
                        }
                        §§goto(addr73);
                     }
                     else
                     {
                        addr84:
                        §§push(§§pop() <= §§pop());
                        if(!_loc3_)
                        {
                           §§push(§§pop());
                           if(_loc2_ || param1)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§pop();
                                    if(!(_loc3_ && this))
                                    {
                                       addr110:
                                       §§push(Math.random() * §_-w3§ < param1);
                                       if(!(_loc3_ && param1))
                                       {
                                          addr119:
                                          if(§§pop())
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr135:
                                                §§pop();
                                             }
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr136);
                              }
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr135);
                     }
                  }
               }
               else
               {
                  §§push(this.§_-Fb§);
                  if(!(_loc3_ && param1))
                  {
                     §§push(0);
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr84);
         }
         §§goto(addr110);
      }
      
      public function §_-2u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-GB§ = 0;
            if(!(_loc1_ && _loc2_))
            {
               addr40:
               this.§_-OO§(this.§_-jC§.getFrame(0));
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §_-C5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.mName == "BIRD_SARDINE")
            {
               if(!_loc2_)
               {
                  return;
               }
               addr48:
               this.§_-OO§(this.§_-jC§.getSubAnimation("blink").getFrame(0));
            }
            else
            {
               this.§_-GB§ = §_-L5§;
               if(!(_loc2_ && this))
               {
                  §§goto(addr48);
               }
            }
         }
      }
      
      public function §_-Db§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§_-Fb§);
         if(!_loc2_)
         {
            §§push(0);
            if(_loc3_)
            {
               if(§§pop() > §§pop())
               {
                  §§push(this);
                  §§push(this.§_-Fb§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§_-Fb§ = §§pop();
                  §§push(this.§_-Fb§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr39);
                  }
               }
               else
               {
                  §§push(this.§_-GB§);
                  if(!(_loc2_ && param1))
                  {
                     §§goto(addr75);
                     §§push(0);
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr54);
         }
         addr39:
         §§push(0);
         if(!(_loc2_ && _loc2_))
         {
            addr54:
            if(§§pop() <= §§pop())
            {
               this.final();
               if(_loc3_ || this)
               {
               }
               §§goto(addr101);
            }
         }
         else
         {
            addr75:
            §§push(§§pop() <= §§pop());
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr94:
                     §§push(Math.random() * §_-De§ < param1);
                  }
               }
            }
            if(§§pop())
            {
               if(!_loc2_)
               {
                  this.§finally§();
               }
            }
         }
         addr101:
      }
      
      public function final() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§_-Fb§ = 0;
            if(!(_loc2_ && this))
            {
               addr44:
               this.§_-OO§(this.§_-jC§.getFrame(0));
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §finally§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         §§push(this.§_-Fb§);
         if(!_loc4_)
         {
            §§push(0);
            if(_loc3_)
            {
               if(§§pop() > §§pop())
               {
                  if(_loc3_)
                  {
                     this.final();
                     if(_loc3_)
                     {
                        addr32:
                        addr35:
                        addr34:
                        if(this.§_-GB§ > 0)
                        {
                           this.§_-2u§();
                        }
                        §§push(param1);
                        if(_loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              addr43:
                              §§push(§_-6n§.§_-d4§);
                              if(_loc3_)
                              {
                                 addr48:
                                 param1 = §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr56:
                                    this.§_-Fb§ = §_-WX§;
                                    this.§_-OO§(this.§_-jC§.getSubAnimation("yell").getFrame(0));
                                 }
                                 §§push(this.§_-qi§);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(Boolean(§§pop()));
                                    §§push(Boolean(§§pop()));
                                    if(_loc3_ || this)
                                    {
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(this.§_-Fz§);
                                             if(_loc3_)
                                             {
                                                addr106:
                                                §§push(Boolean(§§pop()));
                                                if(!Boolean(§§pop()))
                                                {
                                                   if(_loc3_ || param1)
                                                   {
                                                      §§pop();
                                                      §§goto(addr128);
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc3_ || param2)
                                                {
                                                   §§goto(addr128);
                                                }
                                                §§goto(addr142);
                                             }
                                             else
                                             {
                                                §_-Dz§.§_-OR§(param1,this.§_-A§,§_-3n§);
                                             }
                                          }
                                          §§goto(addr128);
                                       }
                                    }
                                 }
                                 §§goto(addr106);
                              }
                              §§goto(addr48);
                           }
                           §§goto(addr56);
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr43);
                  }
                  addr128:
                  if(!_loc4_)
                  {
                     §§push(param2);
                  }
                  §_-Dz§.§_-OR§(param1,this.§_-A§);
                  if(!_loc4_)
                  {
                     addr142:
                  }
                  return;
               }
               §§goto(addr32);
            }
            §§goto(addr35);
         }
         §§goto(addr34);
      }
      
      public function §_-8m§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(this.§_-fl§);
         if(!_loc7_)
         {
            §§push(0);
            if(!(_loc7_ && this))
            {
               if(§§pop() > §§pop())
               {
                  if(_loc6_)
                  {
                     §§push(this);
                     §§push(this.§_-fl§);
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§_-fl§ = §§pop();
                     §§push(this.§_-fl§);
                     §§push(0);
                     if(_loc6_)
                     {
                        addr48:
                        if(§§pop() <= §§pop())
                        {
                           var _loc4_:*;
                           §§push((_loc4_ = this).§_-Ko§);
                           if(_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              _loc4_.§_-Ko§ = _loc5_;
                           }
                           §§push(this);
                           §§push(this.§_-Cn§);
                           if(!_loc7_)
                           {
                              §§push(§§pop() * 0.4);
                           }
                           §§pop().§_-Cn§ = §§pop();
                           §§push(this.§_-qi§);
                           if(_loc6_)
                           {
                              §§push(!§§pop());
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       §§pop();
                                       if(_loc6_)
                                       {
                                          §§push(this.§_-Ko§);
                                          if(!_loc7_)
                                          {
                                             §§push(2);
                                             if(_loc6_ || param1)
                                             {
                                                addr104:
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr110:
                                                      §§push(this.§_-Ko§ > 1);
                                                      §§push(this.§_-Ko§ > 1);
                                                      if(!_loc7_)
                                                      {
                                                         addr114:
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            if(_loc6_ || this)
                                                            {
                                                               §§push(this.§_-Cn§);
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  addr132:
                                                                  §§push(-1);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     addr141:
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr144:
                                                                           this.§_-Cn§ = -1;
                                                                           addr147:
                                                                           this.§_-8E§ = this.§_-Cn§;
                                                                           this.§_-fl§ = §_-SU§;
                                                                           §§push(this);
                                                                           §§push(this.§_-fl§);
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop() * (Math.abs(this.§_-8E§) / 2));
                                                                           }
                                                                           §§pop().§_-fl§ = §§pop();
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              this.§_-us§ = this.§_-fl§;
                                                                              this.§_-O5§ = 0;
                                                                              if(_loc6_)
                                                                              {
                                                                                 this.§_-oL§ = 0;
                                                                                 addr443:
                                                                                 this.§_-nI§();
                                                                                 addr253:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr479:
                                                                                 if(!this.§_-Fz§)
                                                                                 {
                                                                                    this.§_-Ig§();
                                                                                 }
                                                                              }
                                                                              §§goto(addr485);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr231:
                                                                              this.§_-O5§ = 0;
                                                                              if(!_loc7_)
                                                                              {
                                                                                 this.§_-Cn§ = 0;
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    §§goto(addr253);
                                                                                 }
                                                                                 §§goto(addr485);
                                                                              }
                                                                           }
                                                                           §§goto(addr253);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr316:
                                                                           §§push(this);
                                                                           §§push(_loc3_);
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              §§push(§§pop() * this.§_-8E§);
                                                                           }
                                                                           §§pop().§_-o0§ = §§pop();
                                                                           §§goto(addr396);
                                                                        }
                                                                     }
                                                                     §§goto(addr147);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr341:
                                                                     §§push(§§pop() / §§pop() - this.§_-fl§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr351:
                                                                        _loc3_ = Number(§§pop() / (this.§_-us§ / 2));
                                                                        §§push(§_-Fq§.§_-tf§(_loc3_,false));
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              addr367:
                                                                              _loc3_ = §§pop();
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 §§goto(addr375);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr466:
                                                                                 §§push(!this.§_-qi§);
                                                                                 if(!this.§_-qi§)
                                                                                 {
                                                                                    addr478:
                                                                                    §§pop();
                                                                                    §§goto(addr479);
                                                                                 }
                                                                              }
                                                                              §§goto(addr479);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr450:
                                                                              §§push(§§pop() < param1);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§goto(addr466);
                                                                                       }
                                                                                       §§goto(addr479);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr466);
                                                                              }
                                                                           }
                                                                           §§goto(addr478);
                                                                        }
                                                                        §§goto(addr367);
                                                                     }
                                                                     §§goto(addr450);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr293:
                                                                  _loc3_ = Number(§§pop());
                                                                  §§push(§_-Fq§.§_-tf§(_loc3_));
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           §§goto(addr316);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr375);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr351);
                                                                     }
                                                                     addr375:
                                                                     §§push(this);
                                                                     §§push(this.§_-8E§);
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(this.§_-8E§);
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(-§§pop());
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§pop().§_-o0§ = §§pop();
                                                                     addr396:
                                                                     §§push(this);
                                                                     §§push(360);
                                                                     §§push(§_-Fq§);
                                                                     §§push(this.§_-us§);
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§push(this.§_-fl§);
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           §§goto(addr428);
                                                                        }
                                                                        §§push(§§pop() / §§pop());
                                                                     }
                                                                     addr428:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        §§push(this.§_-us§);
                                                                     }
                                                                     §§push(§§pop() * §§pop().§_-tf§(§§pop()));
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop() * this.§_-oL§);
                                                                     }
                                                                     §§pop().§_-O5§ = §§pop();
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        §§goto(addr443);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr479);
                                                                     }
                                                                  }
                                                                  §§goto(addr450);
                                                               }
                                                               §§goto(addr341);
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr141);
                                                      }
                                                      else
                                                      {
                                                         addr205:
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            §§goto(addr208);
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                   }
                                                   §§goto(addr147);
                                                }
                                                else
                                                {
                                                   §§push(this.§_-qi§);
                                                   if(_loc6_)
                                                   {
                                                      §§push(!§§pop());
                                                      §§push(!§§pop());
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§goto(addr205);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr466);
                                                      }
                                                   }
                                                }
                                                §§goto(addr216);
                                             }
                                          }
                                          §§goto(addr110);
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr114);
                              }
                              addr208:
                              §§push(Boolean(param2));
                              if(_loc6_ || _loc3_)
                              {
                                 addr216:
                                 if(§§pop())
                                 {
                                    this.§_-Ig§(2.25);
                                 }
                                 else
                                 {
                                    this.§_-fl§ = 0;
                                    if(_loc6_)
                                    {
                                       this.§_-o0§ = 0;
                                       if(_loc6_)
                                       {
                                          §§goto(addr231);
                                       }
                                    }
                                 }
                                 §§goto(addr443);
                              }
                              else
                              {
                                 §§goto(addr479);
                              }
                           }
                           §§goto(addr479);
                        }
                        else
                        {
                           §§push(this.§_-fl§);
                           §§push(this.§_-us§);
                           if(_loc6_)
                           {
                              §§push(2);
                              if(_loc6_ || param1)
                              {
                                 if(§§pop() >= §§pop() / §§pop())
                                 {
                                    §§push(this.§_-us§);
                                    §§push(this.§_-fl§);
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(§§pop() - §§pop());
                                       §§push(this.§_-us§);
                                       if(_loc6_)
                                       {
                                          §§push(2);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!_loc7_)
                                             {
                                                §§goto(addr293);
                                                §§push(§§pop() / §§pop());
                                             }
                                          }
                                       }
                                       §§goto(addr351);
                                    }
                                    §§goto(addr341);
                                 }
                                 else
                                 {
                                    §§push(this.§_-us§);
                                    if(!(_loc7_ && this))
                                    {
                                       §§goto(addr341);
                                       §§push(2);
                                    }
                                    §§goto(addr450);
                                 }
                              }
                              §§goto(addr351);
                           }
                        }
                        §§goto(addr351);
                     }
                     §§goto(addr341);
                  }
                  §§goto(addr144);
               }
               else
               {
                  §§push(Math.random() * §_-mS§);
               }
               §§goto(addr450);
            }
            §§goto(addr48);
         }
         §§goto(addr132);
      }
      
      public function §_-Ig§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.mName);
            if(_loc3_)
            {
               if(§§pop() == "BIRD_SARDINE")
               {
                  return;
               }
               this.§_-Ko§ = 0;
               this.§_-fl§ = §_-SU§;
               this.§_-o0§ = 0;
               addr37:
               §§push(this);
               §§push(0.75);
               if(!_loc2_)
               {
                  §§push(Math.random() * 1.5);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc3_ || _loc3_)
                     {
                        addr60:
                        §§push(-§§pop());
                        if(_loc3_ || _loc3_)
                        {
                           addr69:
                           §§push(§§pop() * param1);
                        }
                     }
                     §§pop().§_-8E§ = §§pop();
                     this.§_-Cn§ = this.§_-8E§;
                     if(!_loc2_)
                     {
                        §§push(this);
                        §§push(this.§_-fl§);
                        if(!(_loc2_ && param1))
                        {
                           §§push(§§pop() * (Math.abs(this.§_-8E§) / 3));
                        }
                        §§pop().§_-fl§ = §§pop();
                        if(!_loc2_)
                        {
                           this.§_-us§ = this.§_-fl§;
                           §§push(this.mName);
                           if(!(_loc2_ && param1))
                           {
                              addr110:
                              §§push(§§pop() == "BIRD_WHITE");
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop());
                                 if(!(_loc2_ && this))
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §§pop();
                                          if(!(_loc2_ && param1))
                                          {
                                             §§push(this.mName);
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr154:
                                                §§push(§§pop() == "BIRD_BLACK");
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr163:
                                                   if(!§§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr167:
                                                         §§pop();
                                                         addr170:
                                                         §§push(this.mName == "RED_BIG");
                                                      }
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr175:
                                                      this.§_-oL§ = 0;
                                                      §§goto(addr251);
                                                   }
                                                   else
                                                   {
                                                      addr215:
                                                      §§push(this);
                                                      if(!(_loc2_ && this))
                                                      {
                                                         if(Math.random() > 0.5)
                                                         {
                                                            addr228:
                                                            §§push(this.§_-oL§);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc2_ && _loc2_)
                                                               {
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(Number(0));
                                                         }
                                                         addr250:
                                                         §§pop().§_-oL§ = §§pop();
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                }
                                                else if(this.§_-fl§ < 350)
                                                {
                                                   this.§_-oL§ = 0;
                                                   §§goto(addr251);
                                                }
                                                else
                                                {
                                                   §§push(this);
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      if(Math.random() > 0.5)
                                                      {
                                                         addr200:
                                                         §§push(1);
                                                         if(_loc3_ || this)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc3_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr213:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§pop().§_-oL§ = §§pop();
                                                         §§goto(addr215);
                                                      }
                                                      else
                                                      {
                                                         §§push(-1);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr215);
                                             }
                                             §§goto(addr170);
                                          }
                                          addr251:
                                          return;
                                       }
                                       §§goto(addr167);
                                    }
                                 }
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr69);
               }
               §§goto(addr60);
            }
            §§goto(addr110);
         }
         §§goto(addr37);
      }
      
      public function §_-nI§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§_-Cv§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.mX);
               §§push(§_-tL§.§_-7m§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc2_)
                  {
                     §§pop().x = §§pop();
                     if(_loc1_ || _loc2_)
                     {
                        §§goto(addr89);
                     }
                     addr87:
                     addr89:
                     §§push(this.§_-Cv§);
                     if(!_loc2_)
                     {
                        §§push(this.mY);
                     }
                     §§push(this.§_-O5§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop() / 180);
                        if(_loc1_)
                        {
                           addr109:
                           §§push(§§pop() * Math.PI);
                        }
                     }
                     §§pop().rotation = §§pop();
                     return;
                     §§push(this.§_-Cv§);
                  }
                  §§push(this.§_-o0§);
                  if(_loc1_ || _loc1_)
                  {
                     addr73:
                     §§push(§§pop() + §§pop());
                     if(!_loc2_)
                     {
                        addr78:
                        §§pop().y = §§pop() / §_-tL§.§_-7m§;
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr87);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr78);
               }
               §§goto(addr73);
            }
            §§goto(addr89);
         }
         §§goto(addr87);
      }
      
      public function §_-pZ§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§_-qi§ = false;
         this.§_-Fz§ = false;
         this.§_-Ko§ = 0;
         this.§_-wi§ = 0;
         this.§_-fl§ = 0;
         §§push(this);
         §§push(this.mY);
         if(_loc2_ || _loc2_)
         {
            §§push(this.§_-Lz§);
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr68);
            }
            §§push(§§pop() + §§pop());
         }
         addr68:
         §§push(§§pop() + §§pop());
         if(!_loc1_)
         {
            §§push(this.radius);
         }
         §§pop().§_-t7§ = §§pop();
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc3_);
            §§push(this.§_-XL§);
            if(_loc5_)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(_loc5_)
               {
                  §§push(true);
                  if(!(_loc4_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr77:
                  §§push(false);
               }
               return §§pop();
            }
         }
         §§goto(addr77);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.mX);
            if(!(_loc6_ && this))
            {
               §§push(param3);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() >= §§pop());
                  §§push(§§pop() >= §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§pop();
                           if(!(_loc6_ && param1))
                           {
                              §§push(this.mX);
                              if(_loc5_)
                              {
                                 §§push(param4);
                                 if(!_loc6_)
                                 {
                                    addr62:
                                    §§push(§§pop() <= §§pop());
                                    §§push(§§pop() <= §§pop());
                                    if(!(_loc6_ && param3))
                                    {
                                       addr70:
                                       if(§§pop())
                                       {
                                          if(!(_loc6_ && param2))
                                          {
                                             §§pop();
                                             if(!_loc6_)
                                             {
                                                addr81:
                                                §§push(this.mY);
                                                if(_loc5_)
                                                {
                                                   addr85:
                                                   §§push(param1);
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr103);
                                                   }
                                                   addr102:
                                                   addr103:
                                                   return §§pop() >= §§pop() && this.mY;
                                                   §§push(§§pop() <= §§pop());
                                                }
                                                §§goto(addr102);
                                                §§push(param2);
                                             }
                                             §§goto(addr99);
                                          }
                                       }
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr85);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr85);
         }
         §§goto(addr81);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.mX);
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() == §§pop());
               if(!(_loc4_ && _loc3_))
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     §§pop();
                     addr57:
                     §§push(this.mY == param2);
                     if(_loc5_)
                     {
                        addr61:
                        if(!§§pop())
                        {
                           §§goto(addr63);
                        }
                        §§goto(addr66);
                     }
                     addr63:
                     _loc3_ = true;
                     if(!_loc4_)
                     {
                        addr66:
                        this.mX = param1;
                        if(_loc5_)
                        {
                           this.mY = param2;
                           §§push(this);
                           §§push(this.mY);
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop() + this.§_-Lz§);
                           }
                           §§pop().§_-t7§ = §§pop();
                           if(!_loc4_)
                           {
                              this.§_-wi§ = 100;
                              this.§_-nI§();
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr106);
                     }
                     addr102:
                     §§goto(addr103);
                  }
                  addr103:
                  if(_loc3_)
                  {
                     if(_loc5_)
                     {
                        addr106:
                        this.§_-7g§.§_-gK§();
                     }
                  }
                  return;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr57);
      }
      
      public function §_-Ex§() : §_-19§
      {
         return this.§_-v4§;
      }
      
      public function get §_-it§() : Number
      {
         return this.§_-fl§;
      }
      
      public function get §_-YH§() : Number
      {
         return this.§_-wi§;
      }
      
      public function set §_-YH§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-wi§ = param1;
         }
      }
      
      public function get §_-rj§() : Number
      {
         return this.§_-Qr§;
      }
      
      public function get §_-A4§() : Boolean
      {
         return this.§_-qi§;
      }
      
      public function get radius() : Number
      {
         return this.§_-XL§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-Cv§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §_-rj§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-Qr§ = param1;
         }
      }
      
      public function get §_-Rq§() : Number
      {
         return this.§_-sD§;
      }
      
      public function set §_-Rq§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-sD§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§_-KA§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-KA§ = param1;
         }
      }
   }
}
